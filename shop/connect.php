<?php
session_start(); 

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

/**
 * --- CÀI ĐẶT CHẾ ĐỘ ---
 * mode = 1: Random (Xáo trộn link).
 * mode = 2: Thứ tự (1-2-3-4-5).
 * mode = 3: Tắt hẳn.
 */
$mode = 1; 

$landings = [
    "https://vnshop.live/lucky-horus/shop/shop1/",
    "https://vnshop.live/lucky-horus/shop/shop2/",
    "https://vnshop.live/lucky-horus/shop/shop3/"
];

if ($mode == 3) {
    echo json_encode(['target' => 'OFF']);
    exit;
}

$current_url = isset($_GET['ref']) ? rtrim($_GET['ref'], '/') : '';

// --- SỬA LẠI CÁCH PHÂN PHỐI LINK TẠI ĐÂY ---

// Tạo mã định danh cho danh sách link hiện tại để tránh xung đột nếu bạn đổi list link
$list_id = md5(json_encode($landings));

// Nếu pool chưa có hoặc danh sách link đã thay đổi, khởi tạo lại pool
if (!isset($_SESSION['pool']) || !isset($_SESSION['list_id']) || $_SESSION['list_id'] !== $list_id || empty($_SESSION['pool'])) {
    $temp = $landings;
    if ($mode == 1) {
        shuffle($temp);
    }
    $_SESSION['pool'] = $temp;
    $_SESSION['list_id'] = $list_id;
}

// Lấy link tiếp theo ra khỏi hàng đợi
$target_url = array_shift($_SESSION['pool']);

// Kiểm tra nếu link bốc ra trùng với trang hiện tại thì bốc cái tiếp theo ngay lập tức
if (rtrim($target_url, '/') === $current_url) {
    if (!empty($_SESSION['pool'])) {
        $target_url = array_shift($_SESSION['pool']);
    } else {
        // Nếu túi đã cạn mà cái cuối cùng vẫn trùng, bốc đại 1 cái khác trong mảng gốc
        $others = array_filter($landings, function($u) use ($current_url) {
            return rtrim($u, '/') !== $current_url;
        });
        $target_url = !empty($others) ? $others[array_rand($others)] : $target_url;
    }
}

echo json_encode(['target' => base64_encode($target_url)]);
exit;
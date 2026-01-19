<?php

$rootPath = dirname(__DIR__,2);

include $rootPath.'/includes/config.php';
$phoneFile = __DIR__ . '/phones.txt';

$limit = 1000;
$page  = 1;

$phones = $_db->query("SELECT `order_phone` FROM `core_orders` WHERE `status`!='trashed' GROUP BY `order_phone`")->fetch_array();
$blacklist = $_db->query("SELECT `phone_number` FROM `core_orders` GROUP BY `core_backlists`")->fetch_array();
$result = [];
$blist = [];

foreach ($blacklist as $phone) {
    $blist[] = $phone['phone_number'];
}

$fp = fopen($phoneFile, 'w') or die("Can't create file");

$counter = 0;
foreach ($phones as $phone) {
    if(!in_array($phone['order_phone'],$blist)) {
        fwrite($fp, $phone['order_phone']."\n");
        $counter++;
    }
}
fclose($fp);

echo "Export $counter phones finish</br>";
echo "<a href='phones.txt'>download this click here</a>";
?>
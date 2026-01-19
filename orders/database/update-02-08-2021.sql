ALTER TABLE `core_groups` ADD `payout_type` VARCHAR(20) NULL DEFAULT 'fixed' AFTER `payout`;
ALTER TABLE `core_orders` ADD `payout_type` VARCHAR(20) NULL DEFAULT 'fixed' AFTER `payout_member`;
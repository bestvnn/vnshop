ALTER TABLE `core_orders` ADD `post_office` VARCHAR(50) NULL AFTER `parcel_code`;
ALTER TABLE `core_offers` ADD `price_bonus` INT(10) NOT NULL DEFAULT '0' AFTER `price`;
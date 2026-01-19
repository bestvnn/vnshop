
ALTER TABLE `core_offers` CHANGE `price` `price` TEXT NOT NULL;
ALTER TABLE `core_offers` ADD `cost` DECIMAL(5,2) NOT NULL DEFAULT '0' AFTER `name`;
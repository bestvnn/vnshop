
ALTER TABLE `core_users` CHANGE `type` `type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

ALTER TABLE `core_users` ADD `ukey` VARCHAR(20) NOT NULL AFTER `adm`;

ALTER TABLE `core_orders` ADD `ukey` VARCHAR(20) NULL AFTER `typeOrder`;

ALTER TABLE `core_landing_stats` ADD `ukey` VARCHAR(20) NULL AFTER `order`;

ALTER TABLE `core_s2s_postback` ADD `ukey` VARCHAR(20) NULL AFTER `created`;
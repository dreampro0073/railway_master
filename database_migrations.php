<?php 

// Devendra 02Nov2023

CREATE TABLE `cloakroom_master`.`clients` ( `id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NULL DEFAULT NULL , `email` VARCHAR(255) NULL DEFAULT NULL , `mobile` VARCHAR(20) NULL DEFAULT NULL , `status` TINYINT(1) NOT NULL DEFAULT '0' , `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP , `created_at` TIMESTAMP NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `users` CHANGE `session_id` `client_id` INT(11) NULL DEFAULT '0';
ALTER TABLE `cloakroom_entries` ADD `client_id` INT NOT NULL DEFAULT '0' AFTER `id`;
ALTER TABLE `cloakroom_penalities` ADD `client_id` INT NOT NULL DEFAULT '0' AFTER `id`;

CREATE TABLE `cloakroom_rate_list` ( `id` INT NOT NULL AUTO_INCREMENT , `client_id` INT NULL DEFAULT NULL , `first_rate` INT NULL DEFAULT NULL , `second_rate` INT NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `cloakroom_entries` ADD `total_day` INT NOT NULL DEFAULT '0' AFTER `no_of_day`;

CREATE TABLE `cloakroom_master`.`client_services` ( `id` INT NOT NULL AUTO_INCREMENT , `services_id` INT NOT NULL DEFAULT '0' COMMENT '1=sitting,2=cloakroom, 3=canteen' , `status` TINYINT NOT NULL DEFAULT '0' COMMENT '0=no,1=yes' , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `client_services` ADD `client_id` INT NOT NULL AFTER `services_id`;
CREATE TABLE `cloakroom_master`.`sitting_rate_list` ( `id` INT NOT NULL AUTO_INCREMENT , `client_id` INT NOT NULL , `adult_rate` INT NOT NULL COMMENT 'perHour' , `child_rate` INT NOT NULL COMMENT 'perHour' , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `sitting_entries` ADD `client_id` INT NULL DEFAULT NULL AFTER `added_by`;

ALTER TABLE `daily_entries` ADD `check_in` TIME NULL DEFAULT NULL AFTER `pay_type`;

ALTER TABLE `clients` ADD `gst` VARCHAR(255) NULL DEFAULT NULL AFTER `status`, ADD `address` VARCHAR(255) NULL DEFAULT NULL AFTER `gst`;
ALTER TABLE `sitting_entries` ADD `checkout_date` TIMESTAMP NULL DEFAULT NULL AFTER `check_out`;
ALTER TABLE `cloakroom_entries` ADD `slip_id` VARCHAR(50) NULL DEFAULT NULL AFTER `id`;
ALTER TABLE `sitting_entries` ADD `slip_id` VARCHAR(50) NULL DEFAULT NULL AFTER `id`;

ALTER TABLE `sitting_entries` ADD `total_amount` INT NOT NULL DEFAULT '0' AFTER `paid_amount`;

ALTER TABLE `sitting_entries`
  DROP `deleted`,
  DROP `delete_by`,
  DROP `delete_time`;

  ALTER TABLE `sitting_entries` ADD `total_hours` INT NOT NULL DEFAULT '0' AFTER `hours_occ`;

  ALTER TABLE `sitting_entries`
  DROP `seat_no`;


ALTER TABLE `sitting_entries` ADD `is_checked` TINYINT NOT NULL DEFAULT '0' AFTER `client_id`;
ALTER TABLE `sitting_entries` ADD `is_collected` TINYINT NOT NULL DEFAULT '0' AFTER `is_checked`;
ALTER TABLE `sitting_entries` ADD `checkout_enabled` TINYINT NOT NULL DEFAULT '0' AFTER `status`;

?>
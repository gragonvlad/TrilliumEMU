ALTER TABLE `character_action`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `action` `action` INT(10) UNSIGNED DEFAULT '0' NOT NULL;
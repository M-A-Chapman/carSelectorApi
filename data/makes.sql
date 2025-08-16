-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `makes`;
CREATE TABLE `makes` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `MakeCreated` varchar(255) DEFAULT NULL,
    `MakeModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/makes-sample.csv'
          INTO TABLE makes         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,MakeId,MakeYear,MakeName,MakeName,MakeCreated,MakeModified);
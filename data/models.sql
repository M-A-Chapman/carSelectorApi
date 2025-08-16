-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `ModelCreated` varchar(255) DEFAULT NULL,
    `ModelModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/models-sample.csv'
          INTO TABLE models         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,ModelYear,MakeName,ModelName,ModelCreated,ModelModified);
-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `submodels`;
CREATE TABLE `submodels` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `SubmodelId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `SubmodelName` varchar(255) DEFAULT NULL,
    `SubmodelCreated` varchar(255) DEFAULT NULL,
    `SubmodelModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/submodels-sample.csv'
          INTO TABLE submodels         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,SubmodelId,ModelYear,MakeName,ModelName,SubmodelName,SubmodelCreated,SubmodelModified);
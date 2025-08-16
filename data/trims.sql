-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `trims`;
CREATE TABLE `trims` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `SubmodelId` int(8) DEFAULT NULL,
    `TrimId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `SubmodelName` varchar(255) DEFAULT NULL,
    `TrimName` varchar(255) DEFAULT NULL,
    `TrimDescription` varchar(255) DEFAULT NULL,
    `TrimMSRP` int(8) DEFAULT NULL,
    `TrimInvoice` int(8) DEFAULT NULL,
    `TrimCreated` varchar(255) DEFAULT NULL,
    `TrimModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/trims-sample.csv'
          INTO TABLE trims         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,SubmodelId,TrimId,ModelYear,MakeName,ModelName,SubmodelName,TrimName,TrimDescription,TrimMSRP,TrimInvoice,TrimCreated,TrimModified);
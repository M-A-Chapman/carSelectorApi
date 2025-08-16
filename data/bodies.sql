-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `bodies`;
CREATE TABLE `bodies` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `SubmodelId` int(8) DEFAULT NULL,
    `TrimId` int(8) DEFAULT NULL,
    `BodyId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `SubmodelName` varchar(255) DEFAULT NULL,
    `TrimName` varchar(255) DEFAULT NULL,
    `TrimDescription` varchar(255) DEFAULT NULL,
    `BodyType` varchar(255) DEFAULT NULL,
    `BodyDoors` int(1) DEFAULT NULL,
    `BodySeats` int(1) DEFAULT NULL,
    `BodyLength` FLOAT(8) DEFAULT NULL,
    `BodyWidth` FLOAT(255) DEFAULT NULL,
    `BodyHeight` FLOAT(255) DEFAULT NULL,
    `BodyWheelBase` FLOAT(255) DEFAULT NULL,
    `BodyFrontTrack` FLOAT(255) DEFAULT NULL,
    `BodyRearTrack` FLOAT(255) DEFAULT NULL,
    `BodGroundClearance` FLOAT(255) DEFAULT NULL,
    `BodyCargoCapacity` FLOAT(255) DEFAULT NULL,
    `BodyMaxCargoCapacity` FLOAT(255) DEFAULT NULL,
    `BodyCurbWeight` FLOAT(255) DEFAULT NULL,
    `BodyGrossWeight` FLOAT(255) DEFAULT NULL,
    `BodyMaxPayload` FLOAT(255) DEFAULT NULL,
    `BodyMaxTowingCapacity` varcFLOAThar(255) DEFAULT NULL,
    `BodyCreated` varchar(255) DEFAULT NULL,
    `BodyModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/bodies-sample.csv'
          INTO TABLE bodies
          FIELDS TERMINATED BY ','
          ENCLOSED BY '\"'
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,SubmodelId,TrimId,BodyId,ModelYear,MakeName,ModelName,SubmodelName,TrimName,TrimDescription,BodyType,BodyDoors,BodySeats,BodyLength,BodyWidth,BodyHeight,BodyWheelBase,BodyFrontTrack,BodyRearTrack,BodyGroundClearance,BodyCargoCapacity,BodyMaxCargoCapacity,BodyCurbWeight,BodyGrossWeight,BodyMaxPayload,BodyMaxTowingCapacity,BodyCreated,BodyModified);
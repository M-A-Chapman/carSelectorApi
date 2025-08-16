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
    `BodyWidth` FLOAT(10) DEFAULT NULL,
    `BodyHeight` FLOAT(10) DEFAULT NULL,
    `BodyWheelBase` FLOAT(10) DEFAULT NULL,
    `BodyFrontTrack` FLOAT(10) DEFAULT NULL,
    `BodyRearTrack` FLOAT(10) DEFAULT NULL,
    `BodyGroundClearance` FLOAT(10) DEFAULT NULL,
    `BodyCargoCapacity` FLOAT(10) DEFAULT NULL,
    `BodyMaxCargoCapacity` FLOAT(10) DEFAULT NULL,
    `BodyCurbWeight` FLOAT(10) DEFAULT NULL,
    `BodyGrossWeight` FLOAT(10) DEFAULT NULL,
    `BodyMaxPayload` FLOAT(10) DEFAULT NULL,
    `BodyMaxTowingCapacity` FLOAT(10) DEFAULT NULL,
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
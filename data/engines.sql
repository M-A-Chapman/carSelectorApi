-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `engines`;
CREATE TABLE `engines` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `SubmodelId` int(8) DEFAULT NULL,
    `TrimId` int(8) DEFAULT NULL,
    `EngineId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `SubmodelName` varchar(255) DEFAULT NULL,
    `TrimName` varchar(255) DEFAULT NULL,
    `TrimDescription` varchar(255) DEFAULT NULL,
    `EngineType` varchar(255) DEFAULT NULL,
    `EngineFuelType` varchar(255) DEFAULT NULL,
    `EngineCylinders` varchar(255) DEFAULT NULL,
    `EngineSize` float(10) DEFAULT NULL,
    `EngineHorsepowerHp` int(10) DEFAULT NULL,
    `EngineHorsepowerRpm` int(10) DEFAULT NULL,
    `EngineTorqueFtLbs` int(10) DEFAULT NULL,
    `EngineTorqueRpm` int(10) DEFAULT NULL,
    `EngineValves` int(10) DEFAULT NULL,
    `EngineValveTiming` varchar(255) DEFAULT NULL,
    `EngineCamType` varchar(255) DEFAULT NULL,
    `EngineDriveType` varchar(255) DEFAULT NULL,
    `EngineTransmission` varchar(255) DEFAULT NULL,
    `EngineCreated` varchar(255) DEFAULT NULL,
    `EngineModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/engines-sample.csv'
          INTO TABLE engines         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,SubmodelId,TrimId,EngineId,ModelYear,MakeName,ModelName,SubmodelName,TrimName,TrimDescription,EngineType,EngineFuelType,EngineCylinders,EngineSize,EngineHorsepowerHp,EngineHorsepowerRpm,EngineTorqueFtLbs,EngineTorqueRpm,EngineValves,EngineValveTiming,EngineCamType,EngineDriveType,EngineTransmission,EngineCreated,EngineModified
);
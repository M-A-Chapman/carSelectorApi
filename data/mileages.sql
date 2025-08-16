-- (TO DO) Add Sign in as user

DROP TABLE IF EXISTS `mileages`;
CREATE TABLE `mileages` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `MakeId` int(8) DEFAULT NULL,
    `ModelId` int(8) DEFAULT NULL,
    `SubmodelId` int(8) DEFAULT NULL,
    `TrimId` int(8) DEFAULT NULL,
    `MileageId` int(8) DEFAULT NULL,
    `ModelYear` int(4) DEFAULT NULL,
    `MakeName` varchar(255) DEFAULT NULL,
    `ModelName` varchar(255) DEFAULT NULL,
    `SubmodelName` varchar(255) DEFAULT NULL,
    `TrimName` varchar(255) DEFAULT NULL,
    `TrimDescription` varchar(255) DEFAULT NULL,
    `MileageFuelTankCapacity` float(10) DEFAULT NULL,
    `MileageCombinedMpg` float(10) DEFAULT NULL,
    `MileageEpaCityMpg` float(10) DEFAULT NULL,
    `MileageEpaHighwayMpg` float(10) DEFAULT NULL,
    `MileageRangeCity` float(10) DEFAULT NULL,
    `MileageRangeHighway` float(10) DEFAULT NULL,
    `MileageEpaCombinedMpgElectric` float(10) DEFAULT NULL,
    `MileageEpaCityMpgElectric` float(10) DEFAULT NULL,
    `MileageEpaHighwayMpgElectric` float(10) DEFAULT NULL,
    `MileageRangeElectric` float(10) DEFAULT NULL,
    `MileageEpaKwh100MiElectric` float(10) DEFAULT NULL,
    `MileageEpaTimeToChargeHr240vElectric` float(10) DEFAULT NULL,
    `MileageBatteryCapacityElectric` float(10) DEFAULT NULL,
    `MileageCreated` varchar(255) DEFAULT NULL,
    `MileageModified` varchar(255) DEFAULT NULL,
    `ModelCreated` varchar(255) DEFAULT NULL,
    `ModelModified` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`));

LOAD DATA LOCAL INFILE 'dataSource/mileages-sample.csv'
          INTO TABLE mileages         
          FIELDS TERMINATED BY ','         
          ENCLOSED BY '\"'         
          LINES TERMINATED BY '\n'
          IGNORE 1 LINES
          (MakeId,ModelId,SubmodelId,TrimId,MileageId,ModelYear,MakeName,ModelName,SubmodelName,TrimName,TrimDescription,MileageFuelTankCapacity,MileageCombinedMpg,MileageEpaCityMpg,MileageEpaHighwayMpg,MileageRangeCity,MileageRangeHighway,MileageEpaCombinedMpgElectric,MileageEpaCityMpgElectric,MileageEpaHighwayMpgElectric,MileageRangeElectric,MileageEpaKwh100MiElectric,MileageEpaTimeToChargeHr240vElectric,MileageBatteryCapacityElectric,MileageCreated,MileageModified);
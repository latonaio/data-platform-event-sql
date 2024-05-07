CREATE TABLE `data_platform_event_point_condition_element_data`
(
  `Event`                            int(16) NOT NULL,
  `PointConditionRecord`             int(12) NOT NULL,
  `PointConditionSequentialNumber`   int(2) NOT NULL,
  `PointSymbol`                      varchar(5) NOT NULL,
  `Sender`                           int(12) NOT NULL,
  `PointTransactionType`             varchar(3) NOT NULL,
  `PointConditionType`               varchar(4) NOT NULL,
  `PointConditionRateValue`          float(13) NOT NULL,
  `PointConditionRatio`              float(6) NOT NULL,
  `PlusMinus`                        varchar(1) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,
  
    PRIMARY KEY (`Event`, `PointConditionRecord`, `PointConditionSequentialNumber`),

    CONSTRAINT `DPFMEventPointConditionElementData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventPointConditionElementDataSender_fk` FOREIGN KEY (`Sender`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMEventPointConditionElementDataPointSymbol_fk` FOREIGN KEY (`PointSymbol`) REFERENCES `data_platform_point_symbol_point_symbol_data` (`PointSymbol`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

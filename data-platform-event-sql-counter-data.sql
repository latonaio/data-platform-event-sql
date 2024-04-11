CREATE TABLE `data_platform_event_counter_data`
(
  `Event`                            int(16) NOT NULL,
  `NumberOfLikes`                    int(10) DEFAULT NULL,
  `NumberOfCouponsIssued`            int(10) DEFAULT NULL,
  `NumberOfCouponsAcquired`          int(10) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`),

    CONSTRAINT `DPFMEventCounterData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

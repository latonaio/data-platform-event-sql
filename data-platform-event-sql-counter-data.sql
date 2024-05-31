CREATE TABLE `data_platform_event_counter_data`
(
  `Event`                            int(16) NOT NULL,
  `NumberOfLikes`                    int(10) NOT NULL,
  `NumberOfParticipations`           int(10) NOT NULL,
  `NumberOfAttendances`              int(10) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`Event`),

    CONSTRAINT `DPFMEventCounterData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `data_platform_event_participation_data`
(
  `Event`                            int(16) NOT NULL,
  `Participator`                     int(12) NOT NULL,
  `Participation`                    int(20) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`, `Participator`),

    CONSTRAINT `DPFMEventParticipationData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventParticipationDataParticipator_fk` FOREIGN KEY (`Participator`) REFERENCES `data_platform_business_partner_general_data` (`Participator`),
    CONSTRAINT `DPFMEventParticipationDataParticipation_fk` FOREIGN KEY (`Participation`) REFERENCES `data_platform_participation_header_data` (`Participation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

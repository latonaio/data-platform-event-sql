CREATE TABLE `data_platform_event_like_data`
(
  `Event`                    int(16) NOT NULL,
  `BusinessPartner`          int(12) NOT NULL,
  `Like`                     tinyint(1) DEFAULT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,
  `LastChangeDate`           date NOT NULL,
  `LastChangeTime`           time NOT NULL,

    PRIMARY KEY (`Event`, `BusinessPartner`),

    CONSTRAINT `DPFMEventLikeData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventLikeDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

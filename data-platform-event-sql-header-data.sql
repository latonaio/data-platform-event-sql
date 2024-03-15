CREATE TABLE `data_platform_event_header_data`
(
  `Event`                            int(16) NOT NULL,
  `EventType`                        varchar(40) NOT NULL,
  `EventOwner`                       int(12) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityStartTime`                time NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `ValidityEndTime`                  time NOT NULL,
  `Description`                      varchar(400) NOT NULL,
  `Project`                          int(16) DEFAULT NULL,
  `WBSElement`                       int(8) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`),

    CONSTRAINT `DPFMEventHeaderDataEventOwner_fk` FOREIGN KEY (`EventOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMEventHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMEventHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

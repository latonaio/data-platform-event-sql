CREATE TABLE `data_platform_event_header_data`
(
  `Event`                            int(16) NOT NULL,
  `EventType`                        varchar(4) NOT NULL,
  `EventOwner`                       int(12) NOT NULL,
  `EventOwnerBusinessPartnerRole`    varchar(40) NOT NULL,
  `PersonResponsible`                varchar(40) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityStartTime`                time NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `ValidityEndTime`                  time NOT NULL,
  `Description`                      varchar(60) NOT NULL,
  `LongText`                         varchar(1000) NOT NULL,
  `Introduction`                     varchar(200) DEFAULT NULL,
  `Site`                             int(16) NOT NULL,
  `Project`                          int(16) DEFAULT NULL,
  `WBSElement`                       int(8) DEFAULT NULL,
  `Tag1`                             varchar(40) DEFAULT NULL,
  `Tag2`                             varchar(40) DEFAULT NULL,
  `Tag3`                             varchar(40) DEFAULT NULL,
  `Tag4`                             varchar(40) DEFAULT NULL,
  `DistributionProfile`              varchar(4) NOT NULL,
  `PointConditionType`               varchar(4) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`),

    CONSTRAINT `DPFMEventHeaderDataEventType_fk` FOREIGN KEY (`EventType`) REFERENCES `data_platform_event_type_event_type_data` (`EventType`),
    CONSTRAINT `DPFMEventHeaderDataEventOwner_fk` FOREIGN KEY (`EventOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMEventHeaderDataEventOwnerBPRole_fk` FOREIGN KEY (`EventOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMEventHeaderDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`),
    CONSTRAINT `DPFMEventHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMEventHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMEventHeaderDataDistributionProfile_fk` FOREIGN KEY (`DistributionProfile`) REFERENCES `data_platform_distribution_profile_distribution_profile_data` (`DistributionProfile`),
    CONSTRAINT `DPFMEventHeaderDataPointConditionType_fk` FOREIGN KEY (`PointConditionType`) REFERENCES `data_platform_point_condition_type_point_condition_type_data` (`PointConditionType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

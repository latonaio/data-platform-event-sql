CREATE TABLE `data_platform_event_campaign_data`
(
    `Event`                                             int(16) NOT NULL,
    `Campaign`                                          int(16) DEFAULT NULL,
    `CreationDate`                                      date NOT NULL,
    `LastChangeDate`                                    date NOT NULL,
    `IsReleased`                                        tinyint(1) DEFAULT NULL,
    `IsCancelled`                                       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                               tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Event`, `Campaign`),
    
    CONSTRAINT `DPFMEventCampaignData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventCampaignDataCampaign_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

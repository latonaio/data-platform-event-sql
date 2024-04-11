CREATE TABLE `data_platform_event_game_data`
(
    `Event`                       int(16) NOT NULL,
    `Game`                        int(16) NOT NULL,
    `CreationDate`                date NOT NULL,
    `LastChangeDate`              date NOT NULL,
    `IsReleased`                  tinyint(1) DEFAULT NULL,
    `IsCancelled`                 tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`, `Game`),

    CONSTRAINT `DPFMEventGameData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventGameDataGame_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

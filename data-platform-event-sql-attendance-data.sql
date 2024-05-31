CREATE TABLE `data_platform_event_attendance_data`
(
  `Event`                  int(16) NOT NULL,
  `Attender`               int(12) NOT NULL,
  `Attendance`             int(20) NOT NULL,
  `Participation`          int(20) NOT NULL,
  `CreationDate`           date NOT NULL,
  `CreationTime`           time NOT NULL,
  `LastChangeDate`         date NOT NULL,
  `LastChangeTime`         time NOT NULL,
  `IsCancelled`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Event`, `Attender`),

    CONSTRAINT `DPFMEventAttendanceData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventAttendanceDataAttender_fk` FOREIGN KEY (`Attender`) REFERENCES `data_platform_business_partner_general_data` (`Attender`),
    CONSTRAINT `DPFMEventAttendanceDataAttendance_fk` FOREIGN KEY (`Attendance`) REFERENCES `data_platform_attendance_header_data` (`Attendance`),
    CONSTRAINT `DPFMEventAttendanceDataParticipation_fk` FOREIGN KEY (`Participation`) REFERENCES `data_platform_participation_header_data` (`Participation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

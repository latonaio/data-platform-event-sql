CREATE TABLE `data_platform_event_questionnaire_data`
(
  `Event`                    int(16) NOT NULL,
  `Respondent`               int(12) NOT NULL,
  `Questionnaire`            int(20) NOT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,

    PRIMARY KEY (`Event`, `Respondent`),

    CONSTRAINT `DPFMEventQuestionnaireData_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`),
    CONSTRAINT `DPFMEventQuestionnaireDataRespondent_fk` FOREIGN KEY (`Respondent`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMEventQuestionnaireDataQuestionnaire_fk` FOREIGN KEY (`Questionnaire`) REFERENCES `data_platform_questionnaire_header_data` (`Questionnaire`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `CSQUESTION` (
  `QUESTIONID` VARCHAR(45) NOT NULL,
  `QUESTIONTITLE` VARCHAR(200) NOT NULL,
  `QUESTIONCONTENT` VARCHAR(200) NOT NULL,
  `ANSWER` VARCHAR(200),
  `USERID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`QUESTIONID`));
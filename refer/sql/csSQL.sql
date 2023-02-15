CREATE TABLE `CSFNA` (
  `FNAID` VARCHAR(45) NOT NULL,
  `QUESTION` VARCHAR(45) NOT NULL,
  `ANSWER` VARCHAR(200) NOT NULL,
  `QUESTIONTYPE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`questionid`));

 INSERT INTO `CSFNA` (`FNAID`, `QUESTION`, `ANSWER`, `QUESTIONTYPE`) 
 VALUES ('f1','내차사기 홈서비스 결제는 어떻게 하나요?','내차사기 홈서비스 결제는 현금, 카드 등 총 2가지 방식으로 할 수 있습니다.','buycar'),
 ('f2','내차사기 홈서비스로 주문하면 어디든지 배송되나요??','네 전국 어디서나 배송 받을 수 있습니다. 단, 섬 지역, 산간 지역은 도선료가 추가되거나 배송 시기가 늦어질 수 있습니다.','buycar');
 
 
CREATE TABLE `CSQUESTION` (
  `QUESTIONID` VARCHAR(45) NOT NULL,
  `QUESTIONTITLE` VARCHAR(200) NOT NULL,
  `QUESTIONCONTENT` VARCHAR(200) NOT NULL,
  `ANSWER` VARCHAR(200),
  `USERID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`questionid`));
  
 INSERT INTO `CSQUESTION` (`QUESTIONID`, `QUESTIONTITLE`, `QUESTIONCONTENT`, `ANSWER`, `USERID`) 
 VALUES ('q1','딜러 문의합니다.','딜러 문의합니다. 엄복동 딜러가 연락이 닿질 않습니다. 어떡해야 하나요?','안녕하세요. 리투리카 고객센터입니다. 인사팀에 인계하여, 엄복동 딜러 연락조치 취하도록 하겠습니다.','작성자1'),
 ('q1','문의 좀 합니다.','결제창 버튼이 무반응입니다. 어떡하나요?','안녕하세요. 리투리카 고객센터입니다. 크롬 브라우저 사용을 권장드립니다.', '작성자2');
  

CREATE TABLE EVENT_PAGE
(
  EVENT_UID VARCHAR(200) NOT NULL COMMENT '이벤트 아이디',
  TITLE     VARCHAR(200) NOT NULL COMMENT '이벤트 제목',
  DATE      VARCHAR(200) NOT NULL COMMENT '이벤트 진행 날짜',
  CONTENT   VARCHAR(200) NOT NULL COMMENT '이벤트 내용',
  ING_END   VARCHAR(200) NOT NULL COMMENT '이벤트 진행여부',
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트 부속 페이지';

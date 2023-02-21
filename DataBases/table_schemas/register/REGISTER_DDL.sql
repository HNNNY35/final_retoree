
CREATE TABLE REGISTER_2
(
  USER_ID       VARCHAR(100) NOT NULL COMMENT '회원정보 UID',
  NAME          VARCHAR(100) NULL     COMMENT '이름',
  ID            VARCHAR(100) NULL     COMMENT '아이디',
  PASSWORD      VARCHAR(100) NULL     COMMENT '비밀번호',
  BIRTHDAY      INT          NULL     COMMENT '생년월일',
  CELL_NUMBER   INT          NULL     COMMENT '전화번호',
  EMAIL         VARCHAR(100) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(100) NULL     COMMENT '주소(시도)',
  ADDR_DISTRICT VARCHAR(100) NULL     COMMENT '주소(시군구)',
  TS_CS_ID      VARCHAR(100) NOT NULL COMMENT '약관동의 UID',
  AUTH          VARCHAR(100) NULL     COMMENT '권한',
  PRIMARY KEY (USER_ID)
) COMMENT '회원가입';

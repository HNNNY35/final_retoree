CREATE TABLE USER_TS_CS
(
  TS_CS_ID    VARCHAR(100) NOT NULL COMMENT '약관동의 UID',
  TS_CS       VARCHAR(100) NULL     COMMENT '이용약관 동의',
  PER_INF_REQ VARCHAR(100) NULL     COMMENT '개인정보 필수 약관',
  PER_INF_OPT VARCHAR(100) NULL     COMMENT '개인정보 선택 약관',
  REGULATION  VARCHAR(100) NULL     COMMENT '리투리 규정 약관',
  REC_MKT_INF VARCHAR(100) NULL     COMMENT '마케팅 정보 수신 약관',
  PRIMARY KEY (TS_CS_ID)
) COMMENT '회원 약관 동의';
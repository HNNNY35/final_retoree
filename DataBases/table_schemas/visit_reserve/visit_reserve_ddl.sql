CREATE TABLE VISIT_RESERVE
(
  RESERVE_UID  VARCHAR(200) NOT NULL COMMENT '방문예약 아이디',
  STATUS       VARCHAR(200) NOT NULL COMMENT '예약 상태 ',
  NAME        VARCHAR(200) NOT NULL COMMENT '딜러(판매자)이름',
  CELL_NUMBER VARCHAR(200) NOT NULL COMMENT '연락처',
  SALE        VARCHAR(200) NOT NULL COMMENT '판매중',
  SOLD_OUT    VARCHAR(200) NULL     COMMENT '판매완료',
  STORE      VARCHAR(200) NOT NULL COMMENT '판매점',
  TIME       VARCHAR(200) NOT NULL COMMENT '영업시간',
  PHONE      VARCHAR(200) NOT NULL COMMENT '전화',
  FAX        VARCHAR(200) NULL     COMMENT '팩스',
  ADDRESS    VARCHAR(200) NOT NULL COMMENT '주소',
  MODEL        VARCHAR(200) NOT NULL COMMENT '모델',
  MODEL_YEAR   VARCHAR(200) NOT NULL COMMENT '연식',
  DRIVEN_DIST  VARCHAR(200) NOT NULL COMMENT '주행거리',
  PRICE        VARCHAR(200) NOT NULL COMMENT '가격',
  PRIMARY KEY (RESERVE_UID)
) COMMENT '방문 예약 확인';

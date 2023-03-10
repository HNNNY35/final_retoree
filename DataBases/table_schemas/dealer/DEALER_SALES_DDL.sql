
CREATE TABLE DEALER_SALES
(
  UNIQUE_ID      VARCHAR(200) NOT NULL COMMENT 'UID',
  SALES_DATE     VARCHAR(200) NULL     COMMENT '매출일',
  SALES_PRICE    INT          NULL     COMMENT '매출액',
  DETAILED_MODEL VARCHAR(200) NULL     COMMENT '상세모델',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '딜러 매출내역';

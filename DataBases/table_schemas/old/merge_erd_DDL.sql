
CREATE TABLE ANSWER_STATUS
(
  STATUS_ID VARCHAR(100) NOT NULL COMMENT '답변 상태 UID',
  STATUS    VARCHAR(100) NULL     COMMENT '답변 상태',
  PRIMARY KEY (STATUS_ID)
) COMMENT '답변 상태';

CREATE TABLE CAR_DETAILE_INFO
(
  CAR_DTL_ID VARCHAR(100) NOT NULL COMMENT '차량 판매  UID',
  CAR_ID     VARCHAR(100) NOT NULL COMMENT '차량 정보  UID',
  DEALER_ID  VARCHAR(100) NOT NULL COMMENT '딜러정보 UID',
  STATUS_ID  VARCHAR(100) NOT NULL COMMENT '판매상태 UID',
  PRIMARY KEY (CAR_DTL_ID)
) COMMENT '차량 판매';

CREATE TABLE CAR_INFO
(
  CAR_ID            VARCHAR(100) NOT NULL COMMENT '차량 정보  UID',
  MANUFACTURER      VARCHAR(100) NULL     COMMENT '제조사',
  MODEL             VARCHAR(100) NULL     COMMENT '모델',
  DETAILED_MODEL    VARCHAR(100) NULL     COMMENT '상세모델',
  VEH_NUM           VARCHAR(100) NULL     COMMENT '차량번호',
  PRICE             INT          NULL     COMMENT '가격',
  MODEL_YEAR        VARCHAR(100) NULL     COMMENT '연식',
  FUEL              VARCHAR(100) NULL     COMMENT '연료',
  TRANSMISSION      VARCHAR(100) NULL     COMMENT '변속기',
  CARGRADE          VARCHAR(100) NULL     COMMENT '차량등급',
  DETAILED_CARGRADE VARCHAR(100) NULL     COMMENT '세부등급',
  DRIVEN_DIST       INT          NULL     COMMENT '주행거리',
  ACCIDENT_INFO     VARCHAR(100) NULL     COMMENT '사고정보',
  OPTIONS           VARCHAR(100) NULL     COMMENT '추가옵션',
  COLOR             VARCHAR(100) NULL     COMMENT '색상',
  DTL_IMG_CAR       VARCHAR(100) NULL     COMMENT '차량 이미지',
  SALE_STATUS       VARCHAR(100) NULL     COMMENT '판매상태(SALE/SOLD OUT)',
  PANER_ID          VARCHAR(100) NOT NULL COMMENT '패널 UID',
  SKELETON_ID       VARCHAR(100) NOT NULL COMMENT '골격 UID',
  PRIMARY KEY (CAR_ID)
) COMMENT '차량 정보';

CREATE TABLE CAR_MAIN_SKELETON
(
  SKELETON_ID  VARCHAR(100) NOT NULL COMMENT '골격 UID',
  FRONT_PANEL  VARCHAR(100) NULL     COMMENT '프론트 패널',
  CROSS_MEMBER VARCHAR(100) NULL     COMMENT '크로스 멤버',
  INSIDE_PANEL VARCHAR(100) NULL     COMMENT '인사이드 패널',
  SIDE_MEMBER  VARCHAR(100) NULL     COMMENT '사이드 멤버',
  WHEEL_HOUSD  VARCHAR(100) NULL     COMMENT '휠 하우스',
  PACKAGE_TRAY VARCHAR(100) NULL     COMMENT '패키지 트레이',
  DASH_PANEL   VARCHAR(100) NULL     COMMENT '대쉬 패널',
  FLOOR_PANEL  VARCHAR(100) NULL     COMMENT '플로어 패널',
  FILER_PANEL  VARCHAR(100) NULL     COMMENT '필러 패널',
  REAR_PANEL   VARCHAR(100) NULL     COMMENT '리어 패널',
  TRUNK_FLOOR  VARCHAR(100) NULL     COMMENT '트렁크 플로어',
  PRIMARY KEY (SKELETON_ID)
) COMMENT '차량 주요 골격';

CREATE TABLE CAR_PANEL
(
  PANER_ID      VARCHAR(100) NOT NULL COMMENT '패널 UID',
  HOOD          VARCHAR(100) NULL     COMMENT '후드',
  FRONT_FENDER  VARCHAR(100) NULL     COMMENT '프론트휀더',
  DOOR          VARCHAR(100) NULL     COMMENT '도어',
  SIDE_PANEL    VARCHAR(100) NULL     COMMENT '사이드실패널',
  TRUNK_LID     VARCHAR(100) NULL     COMMENT '트렁크리드',
  ROOF_PANEL    VARCHAR(100) NULL     COMMENT '루프패널',
  QUARTER_PANEL VARCHAR(100) NULL     COMMENT '쿼터 패널',
  PRIMARY KEY (PANER_ID)
) COMMENT '차량 외부패널';

CREATE TABLE CONTACT
(
  CONTACT_ID  VARCHAR(100) NOT NULL COMMENT '문의 UID',
  INQ_TITLE   VARCHAR(100) NULL     COMMENT '문의 제목',
  INQ_CONTENT VARCHAR(100) NULL     COMMENT '문의 내용',
  USER_ID     VARCHAR(100) NOT NULL COMMENT '일반회원정보  UID',
  INQ_DATE    VARCHAR(100) NULL     COMMENT '문의 등록일',
  ANS_CONTENT VARCHAR(100) NULL     COMMENT '답변 내용',
  ANS_DATE    VARCHAR(100) NULL     COMMENT '답변 등록일',
  STATUS_ID   VARCHAR(100) NOT NULL COMMENT '답변 상태 UID',
  DEALER_ID   VARCHAR(100) NOT NULL COMMENT '딜러정보 UID',
  PRIMARY KEY (CONTACT_ID)
) COMMENT '문의';

CREATE TABLE CS_FNA
(
  FNA_ID      VARCHAR(100) NOT NULL COMMENT 'FNA UID',
  INQUIRY     VARCHAR(100) NULL     COMMENT '질문',
  ANSWER      VARCHAR(100) NULL     COMMENT '답변',
  INQ_TYPE_ID VARCHAR(100) NOT NULL COMMENT '질문 타입 ID',
  PRIMARY KEY (FNA_ID)
) COMMENT '자주묻는 질문';

CREATE TABLE CS_QNA
(
  INQ_ID      VARCHAR(100) NOT NULL COMMENT '문의 ID',
  INQ_TITLE   VARCHAR(100) NULL     COMMENT '문의 제목',
  INQ_CONTENT VARCHAR(100) NULL     COMMENT '문의 내용',
  ANSWER      VARCHAR(100) NULL     COMMENT '답변',
  INQ_TYPE_ID VARCHAR(100) NOT NULL COMMENT '질문 타입 ID',
  USER_ID     VARCHAR(100) NOT NULL COMMENT '일반회원정보  UID',
  PRIMARY KEY (INQ_ID)
) COMMENT '문의하기';

CREATE TABLE DEALER_USER_INFO
(
  DEALER_ID     VARCHAR(100) NOT NULL COMMENT '딜러정보 UID',
  NAME          VARCHAR(100) NULL     COMMENT '이름',
  ID            VARCHAR(100) NULL     COMMENT '아이디',
  PASSWORD      VARCHAR(100) NULL     COMMENT '비밀번호',
  BR_NUMBER     VARCHAR(100) NULL     COMMENT '사업자등록번호',
  CELL_NUMBER   VARCHAR(100) NULL     COMMENT '전화번호',
  EMAIL         VARCHAR(100) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(100) NULL     COMMENT '주소(시도)',
  ADDR_DISTRICT VARCHAR(100) NULL     COMMENT '주소(시군구)',
  PROFILE_IMG   VARCHAR(100) NULL     COMMENT '프로필 이미지',
  PRIMARY KEY (DEALER_ID)
) COMMENT '딜러회원 정보';

CREATE TABLE EVENT
(
  EVENT_UID      VARCHAR(100) NOT NULL COMMENT '이벤트 UID',
  EVENT_TITLE    VARCHAR(100) NULL     COMMENT '이벤트 제목',
  EVENT_CONTENT  VARCHAR(100) NULL     COMMENT '이벤트 내용',
  EVENT_DURATION VARCHAR(100) NULL     COMMENT '이벤트 진행 기간',
  EVENT_ING_END  VARCHAR(100) NULL     COMMENT '이벤트 진행 여부',
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트';

CREATE TABLE INQUIRY_TYPE
(
  INQ_TYPE_ID VARCHAR(100) NOT NULL COMMENT '질문 타입 ID',
  INQ_TYPE    VARCHAR(100) NULL     COMMENT '질문 타입',
  PRIMARY KEY (INQ_TYPE_ID)
) COMMENT '질문 타입';

CREATE TABLE NOTICE
(
  NOTICE_ID      VARCHAR(100) NOT NULL COMMENT '공지사항 UID',
  NOTICE_NO      INT          NULL     COMMENT '공지사항 번호',
  NOTICE_TITLE   VARCHAR(100) NULL     COMMENT '공지사항 제목',
  NOTICE_CONTENT VARCHAR(100) NULL     COMMENT '공지사항 내용',
  NOTICE_DATE    VARCHAR(100) NULL     COMMENT '공지사항 등록일',
  PRIMARY KEY (NOTICE_ID)
) COMMENT '공지사항';

CREATE TABLE RESERVATION
(
  RESERVATION_ID VARCHAR(100) NOT NULL COMMENT '방문예약 UID',
  RSV_DATE       VARCHAR(100) NULL     COMMENT '예약일자',
  RSV_STATUS     VARCHAR(100) NULL     COMMENT '예약상태',
  USER_ID        VARCHAR(100) NOT NULL COMMENT '일반회원정보  UID',
  CAR_DTL_ID     VARCHAR(100) NOT NULL COMMENT '차량 판매  UID',
  PRIMARY KEY (RESERVATION_ID)
) COMMENT '방문 예약';

CREATE TABLE SALE_STATUS
(
  STATUS_ID VARCHAR(100) NOT NULL COMMENT '판매상태 UID',
  STATUS    VARCHAR(100) NULL     COMMENT '판매상태',
  SALE_DATE VARCHAR(100) NULL     COMMENT '판매일',
  PRIMARY KEY (STATUS_ID)
) COMMENT '판매상태';

CREATE TABLE USER_INFO
(
  USER_ID       VARCHAR(100) NOT NULL COMMENT '일반회원정보  UID',
  NAME          VARCHAR(100) NULL     COMMENT '이름',
  ID            VARCHAR(100) NULL     COMMENT '아이디',
  PASSWORD      VARCHAR(100) NULL     COMMENT '비밀번호',
  BIRTHDAY      VARCHAR(100) NULL     COMMENT '생년월일',
  CELL_NUMBER   VARCHAR(100) NULL     COMMENT '전화번호',
  EAMIL         VARCHAR(100) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(100) NULL     COMMENT '주소(시도)',
  ADDR_DISTRICT VARCHAR(100) NULL     COMMENT '주소(시군구)',
  TS_CS_ID      VARCHAR(100) NOT NULL COMMENT '약관동의 UID',
  PRIMARY KEY (USER_ID)
) COMMENT '일반회원 정보';

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

CREATE TABLE WISHLIST
(
  WISHLIST_ID VARCHAR(100) NOT NULL COMMENT '찜 UID',
  USER_ID     VARCHAR(100) NOT NULL COMMENT '일반회원정보  UID',
  CAR_DTL_ID  VARCHAR(100) NOT NULL COMMENT '차량 판매  UID',
  PRIMARY KEY (WISHLIST_ID)
) COMMENT '찜';

ALTER TABLE CAR_DETAILE_INFO
  ADD CONSTRAINT FK_CAR_INFO_TO_CAR_DETAILE_INFO
    FOREIGN KEY (CAR_ID)
    REFERENCES CAR_INFO (CAR_ID);

ALTER TABLE USER_INFO
  ADD CONSTRAINT FK_USER_TS_CS_TO_USER_INFO
    FOREIGN KEY (TS_CS_ID)
    REFERENCES USER_TS_CS (TS_CS_ID);

ALTER TABLE CS_FNA
  ADD CONSTRAINT FK_INQUIRY_TYPE_TO_CS_FNA
    FOREIGN KEY (INQ_TYPE_ID)
    REFERENCES INQUIRY_TYPE (INQ_TYPE_ID);

ALTER TABLE CS_QNA
  ADD CONSTRAINT FK_INQUIRY_TYPE_TO_CS_QNA
    FOREIGN KEY (INQ_TYPE_ID)
    REFERENCES INQUIRY_TYPE (INQ_TYPE_ID);

ALTER TABLE CS_QNA
  ADD CONSTRAINT FK_USER_INFO_TO_CS_QNA
    FOREIGN KEY (USER_ID)
    REFERENCES USER_INFO (USER_ID);

ALTER TABLE RESERVATION
  ADD CONSTRAINT FK_USER_INFO_TO_RESERVATION
    FOREIGN KEY (USER_ID)
    REFERENCES USER_INFO (USER_ID);

ALTER TABLE CAR_INFO
  ADD CONSTRAINT FK_CAR_PANEL_TO_CAR_INFO
    FOREIGN KEY (PANER_ID)
    REFERENCES CAR_PANEL (PANER_ID);

ALTER TABLE CAR_INFO
  ADD CONSTRAINT FK_CAR_MAIN_SKELETON_TO_CAR_INFO
    FOREIGN KEY (SKELETON_ID)
    REFERENCES CAR_MAIN_SKELETON (SKELETON_ID);

ALTER TABLE CAR_DETAILE_INFO
  ADD CONSTRAINT FK_DEALER_USER_INFO_TO_CAR_DETAILE_INFO
    FOREIGN KEY (DEALER_ID)
    REFERENCES DEALER_USER_INFO (DEALER_ID);

ALTER TABLE CAR_DETAILE_INFO
  ADD CONSTRAINT FK_SALE_STATUS_TO_CAR_DETAILE_INFO
    FOREIGN KEY (STATUS_ID)
    REFERENCES SALE_STATUS (STATUS_ID);

ALTER TABLE WISHLIST
  ADD CONSTRAINT FK_USER_INFO_TO_WISHLIST
    FOREIGN KEY (USER_ID)
    REFERENCES USER_INFO (USER_ID);

ALTER TABLE CONTACT
  ADD CONSTRAINT FK_USER_INFO_TO_CONTACT
    FOREIGN KEY (USER_ID)
    REFERENCES USER_INFO (USER_ID);

ALTER TABLE CONTACT
  ADD CONSTRAINT FK_ANSWER_STATUS_TO_CONTACT
    FOREIGN KEY (STATUS_ID)
    REFERENCES ANSWER_STATUS (STATUS_ID);

ALTER TABLE WISHLIST
  ADD CONSTRAINT FK_CAR_DETAILE_INFO_TO_WISHLIST
    FOREIGN KEY (CAR_DTL_ID)
    REFERENCES CAR_DETAILE_INFO (CAR_DTL_ID);

ALTER TABLE RESERVATION
  ADD CONSTRAINT FK_CAR_DETAILE_INFO_TO_RESERVATION
    FOREIGN KEY (CAR_DTL_ID)
    REFERENCES CAR_DETAILE_INFO (CAR_DTL_ID);

ALTER TABLE CONTACT
  ADD CONSTRAINT FK_DEALER_USER_INFO_TO_CONTACT
    FOREIGN KEY (DEALER_ID)
    REFERENCES DEALER_USER_INFO (DEALER_ID);


CREATE TABLE CAR_DETAIL_INFO
(
  CAR_DTL_UID    VARCHAR(200) NOT NULL COMMENT '차량 아이디',
  MODEL          VARCHAR(200) NOT NULL COMMENT '모델',
  MODEL_YEAR     VARCHAR(200) NOT NULL COMMENT '연식',
  DRIVEN_DIST    VARCHAR(200) NOT NULL COMMENT '주행거리',
  TRANSMISSION   VARCHAR(200) NOT NULL COMMENT '변속기',
  PRICE          VARCHAR(200) NOT NULL COMMENT '가격',
  DTL_IMG_CAR    VARCHAR(200) NOT NULL COMMENT '차량 이미지',
  DEALER_NAME    VARCHAR(200) NOT NULL COMMENT '딜러 이름',
  CELL_NUMBER    VARCHAR(200) NOT NULL COMMENT '전화번호',
  SALE           VARCHAR(200) NOT NULL COMMENT '판매중',
  SOLD_OUT       VARCHAR(200) NOT NULL COMMENT '판매완료',
  ACCIDENT_INFO  VARCHAR(200) NOT NULL COMMENT '사고 정보',
  CONTACT_DEALER varchar(300) NULL     COMMENT '1:1 상담요청',
  PRIMARY KEY (CAR_DTL_UID)
) COMMENT '차량 상세 정보';

CREATE TABLE MAIN_SKELETON
(
  SKELETON_UID VARCHAR(200) NOT NULL COMMENT '골격 아이디',
  FRONT_PANEL  VARCHAR(200) NOT NULL COMMENT '프론트 패널',
  CROSS_MEMBER VARCHAR(200) NOT NULL COMMENT '크로스 멤버',
  INSIDE_PANEL VARCHAR(200) NOT NULL COMMENT '인사이드 패널',
  SIDE_MEMBER  VARCHAR(200) NOT NULL COMMENT '사이드 멤버',
  WHEEL_HOUSE  VARCHAR(200) NOT NULL COMMENT '휠 하우스',
  PACKAGE_TRAY VARCHAR(200) NOT NULL COMMENT '패키지 트레이',
  DASH_PANEL   VARCHAR(200) NOT NULL COMMENT '대쉬 패널',
  FLOOR_PANEL  VARCHAR(200) NOT NULL COMMENT '플로어 패널',
  FILER_PANEL  VARCHAR(200) NOT NULL COMMENT '필러 패널',
  REAR_PANEL   VARCHAR(200) NOT NULL COMMENT '리어 패널',
  TRUNK_FLOOR  VARCHAR(200) NOT NULL COMMENT '트렁크 플로어',
  PRIMARY KEY (SKELETON_UID)
) COMMENT '주요 골격';

CREATE TABLE PANEL
(
  PANEL_UID     VARCHAR(200) NOT NULL COMMENT '패널 아이디',
  HOOD          VARCHAR(200) NOT NULL COMMENT '후드',
  FRONT_FENDER  VARCHAR(200) NOT NULL COMMENT '프론트휀더',
  DOOR          VARCHAR(200) NOT NULL COMMENT '도어',
  SIDE_PANEL    VARCHAR(200) NOT NULL COMMENT '사이드실패널',
  TRUNK_LID     VARCHAR(200) NOT NULL COMMENT '트렁크리드',
  ROOF_PANEL    VARCHAR(200) NOT NULL COMMENT '루프패널',
  QUARTER_PANEL VARCHAR(200) NOT NULL COMMENT '쿼터패널',
  PRIMARY KEY (PANEL_UID)
) COMMENT '외부 패널';

CREATE TABLE SIMULATION
(
  SIM_UID              VARCHAR(200) NOT NULL COMMENT '모의 계산아이디',
  VEHICLE_PRICE        VARCHAR(200) NOT NULL COMMENT '차량 가격',
  REGISTRATION_TAX     VARCHAR(200) NOT NULL COMMENT '등록세(5%)',
  ACQUISITION_TAX      VARCHAR(200) NOT NULL COMMENT '취득세(2%)',
  PUBLIC_PURCHASE_COST VARCHAR(200) NOT NULL COMMENT '공채매입비',
  INCREASE_RENT        VARCHAR(200) NOT NULL COMMENT '증지대',
  STAMP_DUTY           VARCHAR(200) NOT NULL COMMENT '인지대',
  TOTAL_PRICE          VARCHAR(200) NOT NULL COMMENT '총 가격',
  PRIMARY KEY (SIM_UID)
) COMMENT '할부금 모의 계산';

CREATE TABLE `CSFNA` (
  `FNAID` VARCHAR(45) NOT NULL,
  `QUESTION` VARCHAR(45) NOT NULL,
  `ANSWER` VARCHAR(200) NOT NULL,
  `QUESTIONTYPE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`FNAID`));

  CREATE TABLE `CSQUESTION` (
  `QUESTIONID` VARCHAR(45) NOT NULL,
  `QUESTIONTITLE` VARCHAR(200) NOT NULL,
  `QUESTIONCONTENT` VARCHAR(200) NOT NULL,
  `ANSWER` VARCHAR(200),
  `USERID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`QUESTIONID`));

  
CREATE TABLE DEALER_CUSTOM_CAREPAGE
(
  UNIQUE_ID   VARCHAR(200) NOT NULL COMMENT 'UID',
  INQ_TITLE   VARCHAR(200) NULL     COMMENT '문의 제목',
  INQ_CONTENT VARCHAR(200) NULL     COMMENT '문의 내용',
  USER_ID     VARCHAR(200) NULL     COMMENT '고객 아이디',
  INQ_DATE    VARCHAR(200) NULL     COMMENT '문의 등록일',
  ANS_CONTENT VARCHAR(200) NULL     COMMENT '답변 내용',
  ANS_DATE    VARCHAR(200) NULL     COMMENT '답변 등록일',
  ANS_STATUS  VARCHAR(200) NULL     COMMENT '답변 상태',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '딜러 고객 관리';



CREATE TABLE DEALER_INFO_MODIFY
(
  UNIQUE_ID     VARCHAR(200) NOT NULL COMMENT 'UID',
  PROFILE_IMG   VARCHAR(200) NULL     COMMENT '프로필 이미지',
  NANE          VARCHAR(200) NULL     COMMENT '이름',
  BR_NUMBER     VARCHAR(200) NULL     COMMENT '사업자등록번호',
  ID            VARCHAR(200) NULL     COMMENT '아이디',
  PASSWORD      VARCHAR(200) NULL     COMMENT '비밀번호',
  CELL_NUMBER   INT          NULL     COMMENT '전화번호',
  EMAIL         VARCHAR(200) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(200) NULL     COMMENT '주소(시도)',
  ADDR_DISTRICT VARCHAR(200) NULL     COMMENT '주소(시군구)',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '딜러 정보 수정';


CREATE TABLE DEALER_MAIN
(
  UNIQUE_ID      VARCHAR(200) NOT NULL COMMENT 'UID',
  NAME           VARCHAR(200) NULL     COMMENT '이름',
  CELL_NUMBER    INT          NULL     COMMENT '전화번호',
  EMAIL          VARCHAR(200) NULL     COMMENT '이메일',
  ADDR_CITY      VARCHAR(200) NULL     COMMENT '주소(시도)',
  ADDR_DISTRICT  VARCHAR(200) NULL     COMMENT '주소(시군구)',
  DETAILED_MODEL VARCHAR(200) NULL     COMMENT '상세모델',
  VEH_NUM        VARCHAR(200) NULL     COMMENT '차량번호',
  DTL_IMG_CAR    VARCHAR(200) NULL     COMMENT '차량 이미지',
  PRICE          INT          NULL     COMMENT '가격',
  QUESTION_TITLE VARCHAR(200) NULL     COMMENT '1:1상담 제목',
  USERID         VARCHAR(200) NULL     COMMENT '고객 아이디',
  QUESTION_DATE  VARCHAR(200) NULL     COMMENT '1:1 상담 작성일',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '딜러 메인페이지';



CREATE TABLE DEALER_SALES
(
  UNIQUE_ID      VARCHAR(200) NOT NULL COMMENT 'UID',
  SALES_DATE     VARCHAR(200) NULL     COMMENT '매출일',
  SALES_PRICE    INT          NULL     COMMENT '매출액',
  DETAILED_MODEL VARCHAR(200) NULL     COMMENT '상세모델',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '딜러 매출내역';


CREATE TABLE EVENT
(
  EVENT_UID VARCHAR(200) NOT NULL COMMENT '이벤트 아이디',
  TITLE     VARCHAR(200) NOT NULL COMMENT '이벤트 제목',
  CONTENT   VARCHAR(200) NOT NULL COMMENT '이벤트 내용',
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트';



CREATE TABLE EVENT_PAGE
(
  EVENT_UID VARCHAR(200) NOT NULL COMMENT '이벤트 아이디',
  TITLE     VARCHAR(200) NOT NULL COMMENT '이벤트 제목',
  DATE      VARCHAR(200) NOT NULL COMMENT '이벤트 진행 날짜',
  CONTENT   VARCHAR(200) NOT NULL COMMENT '이벤트 내용',
  ING_END   VARCHAR(200) NOT NULL COMMENT '이벤트 진행여부',
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트 부속 페이지';


CREATE TABLE MAIN_SEARCH
(
  MAIN_SEARCH_ID VARCHAR(200) NOT NULL COMMENT '메인검색ID',
  MANUFACTURER   VARCHAR(200) NULL     COMMENT '제조사',
  MODEL          VARCHAR(200) NULL     COMMENT '모델',
  DETAILED_MODEL VARCHAR(200) NULL     COMMENT '상세모델',
  DTL_IMG_CAR    VARCHAR(200) NULL     COMMENT '차량이미지',
  PRICE          INT          NULL     COMMENT '가격',
  MODEL_YEAR     VARCHAR(200) NULL     COMMENT '연식',
  DRIVEN_DIST    INT          NULL     COMMENT '주행거리',
  FUEL           VARCHAR(200) NULL     COMMENT '연료',
  ADDRESS        VARCHAR(200) NULL     COMMENT '지역',
  PRIMARY KEY (MAIN_SEARCH_ID)
) COMMENT '메인검색';



CREATE TABLE MYPAGE_MODIFY
(
  USER_UID      VARCHAR(200) NOT NULL COMMENT '회원정보 아이디',
  NAME          VARCHAR(200) NOT NULL COMMENT '이름',
  BIRTHDAY      VARCHAR(200) NOT NULL COMMENT '생년월일',
  ID            VARCHAR(200) NOT NULL COMMENT '아이디',
  PASSWORD      VARCHAR(200) NOT NULL COMMENT '비밀번호',
  CELL_NUMBER   VARCHAR(200) NULL     COMMENT '휴대번호',
  EMAIL         VARCHAR(200) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(200) NULL     COMMENT '주소',
  ADDR_DISTRICT VARCHAR(200) NULL     COMMENT '상세주소',
  PRIMARY KEY (USER_UID)
) COMMENT '회원정보 수정';



CREATE TABLE RESERVATION
(
  RESERVATIONID VARCHAR(45) NOT NULL COMMENT '예약 UID',
  USERID        VARCHAR(45) NOT NULL COMMENT '예약 유저 UID',
  PRICEID       VARCHAR(45) NOT NULL COMMENT '예약 상품 UID',
  DATE          DATE        NOT NULL COMMENT '예약 일자',
  PRIMARY KEY (RESERVATION)
) COMMENT '예약';



CREATE TABLE WISHLIST
(
  WISHLISTID VARCHAR(45) NOT NULL     COMMENT '찜 UID',
  USERID     VARCHAR(45) NOT NULL     COMMENT '찜 유저 UID',
  PRICEID    VARCHAR(45) NOT NULL     COMMENT '찜 상품 UID',
  PRIMARY KEY (WISHLISTID)
) COMMENT '찜목록';




CREATE TABLE NOTICE_CONTENTS
(
  NOTICE_CONTENTS_ID   VARCHAR(200) NOT NULL COMMENT '공지사항내용ID',
  NOTICE_COTENTS_TITLE VARCHAR(200) NULL     COMMENT '공지사항내용제목',
  NOTICE_CONTENTS      VARCHAR(200) NULL     COMMENT '공지사항내용',
  PRIMARY KEY (NOTICE_CONTENTS_ID)
) COMMENT '공지사항내용';



CREATE TABLE NOTICE
(
  NOTICE_ID    VARCHAR(200) NOT NULL COMMENT '공지사항ID',
  NOTICE_NO    INT          NULL     COMMENT '공지사항번호',
  NOTICE_TITLE VARCHAR(200) NULL     COMMENT '공지사항제목',
  NOTICE_DATE  VARCHAR(200) NULL     COMMENT '공지사항등록일',
  PRIMARY KEY (NOTICE_ID)
) COMMENT '공지사항';



CREATE TABLE PRICE_CHECK
(
  UNIQUE_ID         VARCHAR(200) NOT NULL COMMENT 'UID',
  MANUFACTURER      VARCHAR(200) NULL     COMMENT '제조사',
  MODEL             VARCHAR(200) NULL     COMMENT '모델',
  DETAILED_MODEL    VARCHAR(200) NULL     COMMENT '상세모델',
  MODEL_YEAR        VARCHAR(200) NULL     COMMENT '연식',
  FUEL              VARCHAR(200) NULL     COMMENT '연료',
  CARGRADE          VARCHAR(200) NULL     COMMENT '차량등급',
  DETAILED_CARGRADE VARCHAR(200) NULL     COMMENT '세부등급',
  DRIVEN_DIST       INT          NULL     COMMENT '주행거리',
  ACCIDENT_INFO     VARCHAR(200) NULL     COMMENT '사고정보',
  OPTIONS           VARCHAR(200) NULL     COMMENT '추가옵션',
  COLOR             VARCHAR(200) NULL     COMMENT '색상',
  PRICE             INT          NULL     COMMENT '시세',
  DTL_IMG_CAR       VARCHAR(200) NULL     COMMENT '차량 이미지',
  ADDRESS           VARCHAR(200) NULL     COMMENT '지역',
  SALES_COM         VARCHAR(200) NULL     COMMENT '판매완료',
  SALES_PERF        INT          NULL     COMMENT '판매수',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '시세 조회 페이지 테이블';



CREATE TABLE REGISTER_1
(
  UNIQUE_ID   VARCHAR(200) NOT NULL COMMENT 'UID',
  TS_CS       VARCHAR(200) NULL     COMMENT '이용약관',
  PER_INF_REQ VARCHAR(200) NULL     COMMENT '개인정보 필수 약관',
  PER_INF_OPT VARCHAR(200) NULL     COMMENT '개인정보 선택 약관',
  REGULATION  VARCHAR(200) NULL     COMMENT '리투리 규정 약관',
  REC_MKT_INF VARCHAR(200) NULL     COMMENT '마케팅 정보 수신 동의',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '약관동의';

CREATE TABLE REGISTER_2
(
  UNIQUE_ID     VARCHAR(200) NOT NULL COMMENT 'UID',
  NAME          VARCHAR(200) NULL     COMMENT '이름',
  BIRTHDAY      INT          NULL     COMMENT '생년월일',
  ID            VARCHAR(200) NULL     COMMENT '아이디',
  PASSWORD      VARCHAR(200) NULL     COMMENT '비밀번호',
  CELL_NUMBER   INT          NULL     COMMENT '전화번호',
  EMAIL         VARCHAR(200) NULL     COMMENT '이메일',
  ADDR_CITY     VARCHAR(200) NULL     COMMENT '거주지(시도)',
  ADDR_DISTRICT VARCHAR(200) NULL     COMMENT '거주지(시군구)',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '정보입력';



CREATE TABLE SEARCH
(
  SEARCH_ID         VARCHAR(200) NOT NULL COMMENT '검색ID',
  MANUFACTURER      VARCHAR(200) NULL     COMMENT '제조사',
  MODEL             VARCHAR(200) NULL     COMMENT '모델',
  DETAILED_MODEL    VARCHAR(200) NULL     COMMENT '상세모델',
  MODEL_YEAR        VARCHAR(200) NULL     COMMENT '연식',
  FUEL              VARCHAR(200) NULL     COMMENT '연료',
  CARGRADE          VARCHAR(200) NULL     COMMENT '차량등급',
  DETAILED_CARGRADE VARCHAR(200) NULL     COMMENT '세부등급',
  DRIVEN_DIST       INT          NULL     COMMENT '주행거리',
  ACCIDENT_INFO     VARCHAR(200) NULL     COMMENT '사고정보',
  OPTIONS           VARCHAR(200) NULL     COMMENT '추가옵션',
  COLOR             VARCHAR(200) NULL     COMMENT '색상',
  DTL_IMG_CAR       VARCHAR(200) NULL     COMMENT '차량이미지',
  PRICE             INT          NULL     COMMENT '가격',
  ADDRESS           VARCHAR(200) NULL     COMMENT '지역',
  PRIMARY KEY (SEARCH_ID)
) COMMENT '차량검색';


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

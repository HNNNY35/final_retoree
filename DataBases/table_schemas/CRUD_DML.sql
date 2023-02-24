-- 회원 생성
-- 회원 1 : 일반회원
-- 회원 약관 동의 
INSERT INTO USER_TS_CS
(TS_CS_ID, TS_CS, PER_INF_REQ, PER_INF_OPT, REGULATION, REC_MKT_INF)
VALUES
('TS001', '1', '1', '1', '1', '1')
;

-- 회원 정보
INSERT INTO USER_INFO
(USER_ID, NAME, ID, PASSWORD, BIRTHDAY, CELL_NUMBER, EAMIL, ADDR_CITY, ADDR_DISTRICT, TS_CS_ID, AUTH)
VALUES
('U001', '김쿵야', 'yaya35', 'ky123456', '20010101', '01012341234', 'ky35@naver.com', '서울시', '강남구', 'TS001', 'user')
;

-- 회원 2 : 딜러
-- 회원 약관 동의
INSERT INTO USER_TS_CS
(TS_CS_ID, TS_CS, PER_INF_REQ, PER_INF_OPT, REGULATION, REC_MKT_INF)
VALUES
('TS002', '1', '1', '1', '2', '2')
;

-- 회원 정보
INSERT INTO USER_INFO
(USER_ID, NAME, ID, PASSWORD, BIRTHDAY, CELL_NUMBER, EAMIL, ADDR_CITY, ADDR_DISTRICT, TS_CS_ID, AUTH)
VALUES
('U002', '이양파', 'onion12', 'yl789456', '20030202', '01098765432', 'onion@gmail.com', '서울시', '동작구', 'TS002', 'dealer')
;

-- 회원 3 : 관리자
-- 회원 약관 동의
INSERT INTO USER_TS_CS
(TS_CS_ID, TS_CS, PER_INF_REQ, PER_INF_OPT, REGULATION, REC_MKT_INF)
VALUES
('TS003', '1', '1', '1', '1', '1')
;

-- 회원 정보
INSERT INTO USER_INFO
(USER_ID, NAME, ID, PASSWORD, BIRTHDAY, CELL_NUMBER, EAMIL, ADDR_CITY, ADDR_DISTRICT, TS_CS_ID, AUTH)
VALUES
('U003', '김영철', 'ychkim', 'admin1234', '19961231', '01045671234', 'kimych@gmail.com', '경기도', '용인시', 'TS003', 'admin')
;


-- 딜러 정보
INSERT INTO DEALER_INFO
(DEALER_ID, BR_NUMBER, PROFILE_IMG)
VALUES
('U002', '111-23-45678', 'imagefile')
; 

-- 관리자 정보
INSERT INTO ADMIN
(ADMIN_ID)
VALUES
('U003')
;

-- 일반회원 정보
INSERT INTO USER
(USER_ID)
VALUES
('U001')
;

-- 차량 신규 등록
-- 외부 패널 정보 입력
INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU1', '1', '1', '1', '1', '1', '1', '1');

INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU2', '1', '2', '1', '2', '1', '1', '1');

INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU3', '1', '1', '2', '2', '1', '1', '2');

INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU4', '1', '1', '2', '2', '1', '1', '2');

INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU5', '1', '1', '1', '2', '1', '1', '2');

INSERT INTO CAR_PANEL
(PANER_ID, HOOD, FRONT_FENDER, DOOR, SIDE_PANEL, TRUNK_LID, ROOF_PANEL, QUARTER_PANEL)
VALUES
('PU6', '1', '1', '1', '2', '1', '1', '2');

-- 주요골격 정보 입력
INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU2', '2', '1', '2', '1', '2', '1', '2', '1', '1', '1', '1');

INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU3', '1', '1', '2', '1', '1', '1', '1', '1', '2', '2', '1');

INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU4', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU5', '1', '1', '1', '3', '1', '1', '3', '1', '1', '1', '1');

INSERT INTO CAR_MAIN_SKELETON
(SKELETON_ID, FRONT_PANEL, CROSS_MEMBER, INSIDE_PANEL, SIDE_MEMBER, WHEEL_HOUSE, PACKAGE_TRAY, DASH_PANEL, FLOOR_PANEL, FILER_PANEL, REAR_PANEL, TRUNK_FLOOR)
VALUES
('SU6', '1', '1', '1', '3', '1', '1', '3', '1', '1', '1', '1');

-- 차량 정보 입력
INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR01', '국산', '기아', 'K5', '3세대', '12아5452', '2700', '2020년 3월', '하이브리드', '서울',  '오토', '프리미엄','none', '10000', 'none', 'sunroof', '검정', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU1', 'SU1');

INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR02', '국산', '현대', '그랜저', '그랜저', '23바1222', '3500', '2022년 3월', '하이브리드', '부산', '오토', '익스클루시브','none', '20000', 'none', 'navi', '은색', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU2', 'SU2');

INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR03', '국산', '현대', '코나', '코나', '59사1662', '2000', '2022년 12월', '가솔린', '성남',  '오토', '프리미엄','none', '20000', 'none', 'navi', '그린', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU3', 'SU3');

INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR04', '국산', '현대', '엑센트', '신형 모던 wit 1.4 VVT', '12아5452', '2700', '2015', '가솔린', '서울',  '오토', '프리미엄','none', '10000', 'none', 'sunroof', '검정', 'imgfile', 'sale', 'PU4', 'SU4');

INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR05', '국산', '현대', '캐스퍼', '가솔린 1.0 인스퍼레이션', '34나5678', '1770', '2022', '가솔린', '서울',  '오토', '프리미엄','none', '30000', 'none', 'sunroof', '은색', 'imgfile', 'sale', 'PU5', 'SU5');

INSERT INTO CAR_INFO
(CAR_ID, ORIGIN, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, ADDR_CITY, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR06', '수입', '벤츠', 'E-클래스', 'W213', '56다0987', '4800', '2019', '디젤', '순천', '오토', '프리미엄','none', '30000', 'none', 'sunroof', '은색', 'imgfile', 'sale', 'PU6', 'SU6')
;

-- 판매상태 테이블
INSERT INTO SALE_STATUS
(STATUS_ID, STATUS, SALE_DATE)
VALUES
('S001', 'sale', 'none')
;

INSERT INTO SALE_STATUS
(STATUS_ID, STATUS, SALE_DATE)
VALUES
('S002', 'sale', 'none')
;

INSERT INTO SALE_STATUS
(STATUS_ID, STATUS, SALE_DATE)
VALUES
('S003', 'sale', 'none')
;

INSERT INTO SALE_STATUS
(STATUS_ID, STATUS, SALE_DATE)
VALUES
('S004', 'sale', 'none'),
('S005', 'sale', 'none'),
('S006', 'sale', 'none')
;

UPDATE SALE_STATUS
JOIN CAR_DETAILE_INFO
ON SALE_STATUS.STATUS_ID = CAR_DETAILE_INFO.STATUS_ID
SET STATUS = 'soldout'
AND SALE_DATE = '2023-02-21'
WHERE CAR_DETAILE_INFO.CAR_DTL_ID = 'C002'
;

-- 차량 등록
INSERT INTO CAR_DETAILE_INFO
(CAR_DTL_ID, CAR_ID, STATUS_ID, DEALER_ID)
VALUES
('C001', 'CAR01', 'S001', 'U002')
;

INSERT INTO CAR_DETAILE_INFO
(CAR_DTL_ID, CAR_ID, STATUS_ID, DEALER_ID)
VALUES
('C002', 'CAR02', 'S002', 'U002')
;

INSERT INTO CAR_DETAILE_INFO
(CAR_DTL_ID, CAR_ID, STATUS_ID, DEALER_ID)
VALUES
('C003', 'CAR03', 'S003', 'U002')
;

INSERT INTO CAR_DETAILE_INFO
(CAR_DTL_ID, CAR_ID, STATUS_ID, DEALER_ID)
VALUES
('C004', 'CAR04', 'S004', 'U002'),
('C005', 'CAR05', 'S005', 'U002'),
('C006', 'CAR06', 'S006', 'U002')
;



-- 1:1 문의
-- 답변 상태
INSERT INTO ANSWER_STATUS
(STATUS_ID, STATUS)
VALUES
('A001', '미답변'),
('A002', '답변완료')
;

-- 문의 등록
INSERT INTO CONTACT
(CONTACT_ID, INQ_TITLE, INQ_CONTENT, INQ_DATE, ANS_CONTENT, ANS_DATE, STATUS_ID, USER_ID, DEALER_ID)
VALUES
('CT001', '할부 문의', '할부 문의 드립니다.', '2023-02-20', 'none', 'none', 'A001', 'U001', 'U002')
;


-- 찜
INSERT INTO WISHLIST
(WISHLIST_ID, CAR_DTL_ID, USER_ID)
VALUES
('W001', 'C001', 'U001')
;

-- 방문 예약
INSERT INTO RESERVATION
(RESERVATION_ID, RSV_DATE, RSV_STATUS, CAR_DTL_ID, USER_ID)
VALUES
('R001', '2023-02-21 오전', '예약 신청', 'C001', 'U001')
;
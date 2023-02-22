-- 차량 신규 등록 페이지

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

-- 차량 정보 입력
INSERT INTO CAR_INFO
(CAR_ID, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR01', '기아', 'K5', '3세대', '12아5452', '2700', '2020년 3월', '하이브리드', '오토', '프리미엄','none', '10000', 'none', 'sunroof', '검정', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU1', 'SU1');

INSERT INTO CAR_INFO
(CAR_ID, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR02', '현대', '그랜저', '그랜저', '23바1222', '3500', '2022년 3월', '하이브리드', '오토', '익스클루시브','none', '20000', 'none', 'navi', '은색', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU2', 'SU2');

INSERT INTO CAR_INFO
(CAR_ID, MANUFACTURER, MODEL, DETAILED_MODEL, VEH_NUM, PRICE, MODEL_YEAR, FUEL, TRANSMISSION, CARGRADE, DETAILED_CARGRADE, DRIVEN_DIST, ACCIDENT_INFO, OPTIONS, COLOR, DTL_IMG_CAR, SALE_STATUS, PANER_ID, SKELETON_ID)
VALUES
('CAR03', '현대', '코나', '코나', '59사1662', '2000', '2022년 12월', '가솔린', '오토', '프리미엄','none', '20000', 'none', 'navi', '그린', 'http://127.0.0.1:5501/docs/image/grandeur_design_front.png', 'sale', 'PU3', 'SU3');


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

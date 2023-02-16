INSERT INTO `retoree_FinalProject`.`CAR_DETAIL_INFO` (`CAR_DTL_UID`, `CAR_NUMBER`, `MANUFECTURER`, `MODEL`, `MODEL_YEAR`, `DRIVEN_DIST`, `TRANSMISSION`, `PRICE`, `DTL_IMG_CAR`, `DEALER_NAME`, `CELL_NUMBER`, `SALE`, `SOLD_OUT`, `ACCIDENT_INFO`)
 VALUES ('C01', '23 허 0101', '현대', '그랜져 하이브리드', '2020년 3월', '70,123km', '자동(오토)', '2,000만원', 'https://cdn.top-rider.com/news/photo/202211/62761_144394_4518.jpg' '홍길동', '010-1234-1234', '20대', '3대', '무사고 차량');
 
INSERT INTO `retoree_FinalProject`.`CAR_DETAIL_INFO` (`CAR_DTL_UID`, `CAR_NUMBER`, `MANUFECTURER`, `MODEL`, `MODEL_YEAR`, `DRIVEN_DIST`, `TRANSMISSION`, `PRICE`, `DTL_IMG_CAR`, `DEALER_NAME`, `CELL_NUMBER`, `SALE`, `SOLD_OUT`, `ACCIDENT_INFO`)
 VALUES ('C02', '80아5959', '현대', '코나 하이브리드', '20년 8월', '30,123km', '자동(오토)', '2,100만','http://file.mk.co.kr/meet/neds/2022/05/image_readmed_2022_414468_16522268155038384.jpg', '신사임당', '010-5678-5678', '11대', '5대', '무사고 차량');

INSERT INTO `retoree_FinalProject`.`SIMULATION` (`sim_uid`, `vehicle_price`, `registration_tax`, `acquisition_tax`, `public_purchase_cost`, `increase_rent`, `stamp_duty`, `total_price`) 
VALUES ('S01', '20,000,000원', '800,000', '360,000', '213,000', '1,000', '3,000', '23,201,000');

INSERT INTO `retoree_FinalProject`.`SIMULATION` (`sim_uid`, `vehicle_price`, `registration_tax`, `acquisition_tax`, `public_purchase_cost`, `increase_rent`, `stamp_duty`, `total_price`) 
VALUES ('S02', '21,000,000', '850,000', '420,000', '230,000', '1,000', '4,000', '21,205,000');

INSERT INTO `retoree_FinalProject`.`MAIN_SKELETON` (`SKELETON_UID`, `FRONT_PANEL`, `CROSS_MEMBER`, `INSIDE_PANEL`, `SIDE_MEMBER`, `WHEEL_HOUSE`, `PACKAGE_TRAY`, `DASH_PANEL`, `FLOOR_PANEL`, `FILER_PANEL`, `REAR_PANEL`, `TRUNK_FLOOR`) 
VALUES ('S01', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상');

INSERT INTO `retoree_FinalProject`.`MAIN_SKELETON` (`SKELETON_UID`, `FRONT_PANEL`, `CROSS_MEMBER`, `INSIDE_PANEL`, `SIDE_MEMBER`, `WHEEL_HOUSE`, `PACKAGE_TRAY`, `DASH_PANEL`, `FLOOR_PANEL`, `FILER_PANEL`, `REAR_PANEL`, `TRUNK_FLOOR`) 
VALUES ('S02', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상', '정상');

INSERT INTO `retoree_FinalProject`.`PANEL` (`PANEL_UID`, `HOOD`, `FRONT_FENDER`, `DOOR`, `SIDE_PANEL`, `TRUNK_LID`, `ROOF_PANEL`, `QUARTER_PANEL`)
VALUES ('P01', '정상', '교환', '정상', '정상', '정상', '정상', '정상');

INSERT INTO `retoree_FinalProject`.`PANEL` (`PANEL_UID`, `HOOD`, `FRONT_FENDER`, `DOOR`, `SIDE_PANEL`, `TRUNK_LID`, `ROOF_PANEL`, `QUARTER_PANEL`) 
VALUES ('P02', '정상', '정상', '정상', '정상', '정상', '정상', '정상');


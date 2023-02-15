CREATE TABLE `SIMULATION` (
  `uid` int NOT NULL COMMENT '모의 계산아이디',
  `vehicle_price` varchar(200) NOT NULL COMMENT '차량 가격',
  `registration_tax` varchar(200) NOT NULL COMMENT '등록세(5%)',
  `acquisition_tax` varchar(200) NOT NULL COMMENT '취득세(2%)',
  `public_purchase_cost` varchar(200) NOT NULL COMMENT '공채매입비',
  `increase_rent` varchar(200) NOT NULL COMMENT '증지대',
  `stamp_duty` varchar(200) NOT NULL COMMENT '인지대',
  `total_price` varchar(200) NOT NULL COMMENT '총 가격',
  PRIMARY KEY (`uid`)
) COMMENT '할부금 모의 계산';
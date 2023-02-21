-- 방문예약 페이지

-- CREATE 
INSERT INTO `retoree`.`reservation` (`RESERVATION_ID`, `RSV_DATE`, `RSV_STATUS`, `CAR_DTL_ID`, `USER_ID`) 
VALUES ('R01', '2023년 2월 28일', '확정', 'C01', 'U01');

INSERT INTO `retoree`.`reservation` (`RESERVATION_ID`, `RSV_DATE`, `RSV_STATUS`, `CAR_DTL_ID`, `USER_ID`)
 VALUES ('R02', '2023년 3월 14일', '대기중', 'C02', 'U02');

-- READ
SELECT RESERVATION_ID, RSV_DATE, RSV_STATUS, CAR_DTL_ID, USER_ID
FROM reservation;

-- UPDATE
UPDATE RESERVATION
SET RSV_STATUS = '확정' -- 대기중 ->확정 
WHERE RESERVATION_ID = 'R02';

-- DELETE
DELETE FROM RESERVATION
WHERE RESERVATION_ID = 'R01'; 

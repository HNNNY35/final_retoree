# 'ReToRee' Final Project

## 📃콘텐츠 : 중고차 거래 중개 사이트

### 프로젝트 성격(업무 시나리오)

### 사용 기술

- MyBatis, JSP Servlet, GoormIDE

<img src="https://img.shields.io/badge/Java-3178C6?style=flat&logo=&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"/> <img src="https://img.shields.io/badge/SpringBoot-6DB33F?style=flat&logo=Spring Boot&logoColor=white"/> <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white"/> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=Bootstrap&logoColor=white"/> <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS-1572B6?style=flat&logo=CSS3&logoColor=white"/>

### 개발 기간

- 2022년 12월 27일~ 2023년 3월 10일

### 구현 영상

- [중고차거래 중개 사이트 구현 영상]()

### 구현 화면

![깃허브 이미지](![주요화면](https://user-images.githubusercontent.com/111333632/224203450-d7a4890d-1152-491e-9e20-ed843bd73ebe.png)
)

### ERD

- [ERD](https://github.com/HNNNY35/final_retoree/blob/master/DataBases/table_schemas/merge_erd_3.png)

### 팀원 및 구현 기능

### 👩‍💻 김해인
<details>
<summary>중고 차량 상세 페이지</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/CarDetailMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/Car_detailController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/CarDetailService.java)
  
  
</details>

<details>
<summary>딜러 신규 차량 관리</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/CarRegMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/CarRegController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/CarRegService.java)
  
  
</details>

<details>
<summary>딜러 판매 차량 관리</summary>
  
 ### 차량 정보 수정
  
 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/CarModifyMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/CarModifyController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/CarModifyService.java)
 
  ### 판매 관리(방문 예약 확정, 판매 상태 변경)
 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/DealerSalesMgmtMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/DealerSalesMgmtController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/DealerSalesMgmtService.java)
  
</details>

<details>
<summary>딜러 고객 관리</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/DealerSalesMgmtMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/DealerSalesMgmtController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/DealerSalesMgmtService.java)
  
  
</details>

<details>
<summary>딜러 매출 관리</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/DealerSalesMgmtMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/DealerSalesMgmtController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/DealerSalesMgmtService.java)
  
  
</details>




### 👩‍💻 김다솜
<details>
<summary>로그인</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/LoginMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/LoginController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/CarDetailMapper.xml)
 
 ### Security
 
 - [Security](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/PrincipalUserService.java)
  
</details>

<details>
<summary>회원가입</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/RegisterMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/RegisterController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/RegisterService.java)
  
  
</details>

<details>
<summary>관리자 회원 정보 조회 및 수정</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/UserInfoAdminMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/UserInfoAdminController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/UserInfoAdminService.java)
  
  
</details>


### 👩‍💻 박병주
<details>
<summary>시세 조회 페이지</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/CheckPriceMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/CheckPriceController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/CheckPriceService.java)
  
  
</details>

<details>
<summary>중고차 검색</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/SearchMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/SearchController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/SearchService.java)
  
  
</details>

<details>
<summary>딜러 마이페이지</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/DealerMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/DealerController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/DealerService.java)
  
  
</details>

<details>
<summary>공지사항 및 관리자 공지사항 관리</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/NoticeMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/NoticeController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/NoticeService.java)
  
  
</details>

### 👩‍💻 윤선아
<details>
<summary>메인 및 검색</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/MainMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/MainController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/MainService.java)
  
  
</details>

<details>
<summary>마이페이지</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/MyPageMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/UserController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/MyPageService.java)
  
  
</details>

<details>
<summary>방문 예약 확인</summary>

 - [Mapper.xml](https://github.com/HNNNY35/final_retoree/blob/master/src/main/resources/sqlmapper/mysql/ReservationMapper.xml)
 - [Controller.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/controller/UserController.java)
 - [Service.java](https://github.com/HNNNY35/final_retoree/blob/master/src/main/java/com/project/final_retoree/services/ReservationService.java)
  
  
</details>


### 진행 통해 느낀 점

### 👩‍💻 김해인

### 👩‍💻 김다솜

### 👩‍💻 박병주

### 👩‍💻 윤선아

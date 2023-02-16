<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search</title>
    <link rel="stylesheet" href="/css/main_search.css" />
    
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
  
     <%@ include file="./header.jsp" %>
    
    <main>
      <div class="container">
      
      <!-- 사진 -->
      <div class="container">
        <div id="carouselId" class="carousel slide carouselslide" data-bs-ride="carousel">
        
          <div class="carousel-indicators">
            <a
              href="#carouselId"
              data-bs-slide-to="0"
              class="active  "
            ></a>
  
            <button data-bs-target="#carouselId" data-bs-slide-to="0"></button>
            <button data-bs-target="#carouselId" data-bs-slide-to="1"></button>
            <button data-bs-target="#carouselId" data-bs-slide-to="2"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                class="w-100"
                src="https://cdn.autobell.co.kr/picture/banner/73a72ee4c5dc40c58a7f88e42ed257b0"
                alt="" 
              />
            </div>
            <div class="carousel-item">
              <img
                class="w-100"
                src="https://cdn.autobell.co.kr/picture/banner/2aa98e025fa24bd5988f716a75452aeb"
                alt=""
              />
            </div>
            <div class="carousel-item">
              <img
                class="w-100"
                src="https://cdn.autobell.co.kr/picture/banner/1440134feb7b4868ac10cec77c566b8b"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
      <!-- 사진 -->
     
  
      <div  style="margin-top: 60px">
        <form action="" method="get" id="form">
          <div class="row justify-content-center">
            <div class="col col-lg-5 mt-5">
              
              <div class="fs-4 fw-bold text-center fw-bold mb-5 choice">원하는 차를 찾아보세요!</div>
      
              <div class="d-flex justify-content-evenly">

              
                <form action="" method="get">
                  <div class="">
                    <span>
                    
                      <select name="cars" id=""class="">
                        <option value="
                        manufacturer">제조사</option>
                        <optgroup label="
                        국산">국산
                        <option value="
                        hyundai">현대</option>
                        <option value="
                        genesis">제네시스</option>
                        <option value="kia">기아</option>
                        <option value="chevrolet">쉐보레</option>
                        <option value="samsung">르노삼성</option>
                        <option value="ssangyong">쌍용</option>
                      </optgroup>
                      <optgroup label="
                      수입">수입
                        <option value="BMW">BMW</option>
                        <option value="audi">아우디</option>
                        <option value="benz">벤츠</option>
                        <option value="
                        volvo">볼보</option>
                        <option value="
                        tesla">테슬라</option>
                        <option value="
                        porsche">포르쉐</option>
                      </optgroup>
                      </select>
                    </span>
                    <span>
                      <select name="cars" id="" class="">
                        <option value="
                        model">모델</option>
                        <option value="
                        hyundai">그랜저</option>
                        <option value="
                        genesis">싼타페</option>
                        <option value="
                        genesis">아반떼</option>
                        <option value="
                        genesis">쏘나타</option>
                        <option value="
                        genesis">스타렉스</option>
                    
                      </select>
                     <select name="cars" id="" >
                        <option value="
                        model">상세모델</option>
                        <option value="
                        hyundai">쏘나타N</option>
                        <option value="
                        genesis">신형쏘나타</option>
                    
                        <option value="
                        genesis">신형쏘나타 하이브리드</option>
                    
                        <option value="
                        genesis">LF쏘나타 하이브리드</option>
                    
                        <option value="
                        genesis">LF쏘나타 뉴라이즈 하이브리드</option>
                  
                      </select> 
                    </span>
                    <span>
                    <a href="" target="_self">
                    <button type="submit" class="button"  style="float:right">검색</button>
                      </a>
                      </span>
                    </div>
                  </form>
              </div>
            </div>
          </div>
        </form>
      </div>
<!-- 차 -->
       <div class="fs-4 fw-bold">
       특가
      </div>
           <hr> 
  <table >
    <tr >
      <div class="text-align">
        <td>
          <a href="" ><img src="https://img.kcar.com/carpicture/carpicture07/pic6077/kcarM_60776988_045.jpg" alt="" width="150px" class="m-2"></a>
        </td>
        <td>
         
            <div class="fw-bold "><a href="/car_detail_change">-링크 테스트용-현대 투싼 하이브리드(4세대)</a></div>
            <div>
                <span class="fs-5 fw-bold ">
                  <a href="" class="car_price"> 3,510만원</a>
                </span>
                <div class="fw-normal small">
                  <span><a href="">2020년</a></span>
                    <span><a href=""> 14,391km</a></span>
                     <span><a href=""> 가솔린</a></span>
                      <span><a href=""> 경기</a></span>
                </div>
            </div>
        </td>
      </div>
      <div class="text-align">
        <td>
          <a href=""  >   <img src="https://img.kcar.com/carpicture/carpicture07/pic6077/kcarM_60774973_045.jpg" alt="" width="150px" class="m-2"></a>
      </td>
      <td>
          <div class="fw-bold"><a href="/car_detail_k5">기아 K5 3세대 가솔린 터보</a></div>
          <div>
            <span class="fs-5 fw-bold ">
              <a href="" class="car_price">    2,690만원</a>
              </span>
              <div class="fw-normal small ">
                   <span><a href=""> 2020년</a></span>
                 <span><a href=""> 22,928km</a></span>
                      <span><a href=""> 가솔린</a></span>
                      <span><a href=""> 부산</a></span>
              </div>
          </div>
        </td>
      </div>
        <div class="text-align">
      <td>
        <a href="" >    <img src="https://img.kcar.com/carpicture/carpicture06/pic6076/kcarM_60769397_045.jpg" alt="" width="150px" class="m-2"></a>
    </td>
    <td>
      <div class="fw-bold"><a href="">현대 그랜저 HG300</a></div>
      <div>
        <span class="fs-5 fw-bold ">
          <a href="" class="car_price">    1,250만원</a>
          </span>
          <div class="fw-normal small ">
             <span><a href=""> 2014년</a></span>
                <span><a href=""> 99,328km</a></span>
                 <span><a href=""> 가솔린</a></span>
                    <span><a href=""> 경기</a></span>
          </div>
      </div>
    </td>
  </div>
 </tr>
</table>
<div class="fs-4 fw-bold mt-4">
  신차급
 </div>
      <hr> 
      <table>
        <tr>
         <div class="text-align">
          <td>
            <a href=""  >  <img src="https://img.kcar.com/carpicture/carpicture05/pic6075/kcarM_60751824_045.jpg" alt="" width="150px" class="m-2"></a>
        </td>
          <td>
            <div class="fw-bold"><a href="">현대 아반떼 N 2.0 터보</a></div>
            <div>
              <span class="fs-5 fw-bold text-dark">
                <a href=""class="car_price">2,820만원</a>
                </span>
                <div class="fw-normal small ">
                  <span><a href="">2020년</a></span>
                  <span><a href="">10,330km</a></span>
                  <span><a href="">가솔린</a></span>
                  <span><a href="">서울</a></span>
                </div>
            </div>
          </td>
        </div>
        <div class="text-align">
          <td>
            <a href=""  >  <img src="https://img.kcar.com/carpicture/carpicture06/pic6076/kcarM_60769205_045.jpg" alt="" width="150px" class="m-2"></a>
        </td>
          <td>
            <div class="fw-bold"><a href="">BMW 4시리즈 (G22)가솔린 2WD 420i </a></div>

            <div>
              <span class="fs-5 fw-bold text-dark">
                <a href=""class="car_price">5,650만원</a>
                </span>
                <div class="fw-normal small ">
                  <span><a href=""> 2022년</a></span>
                  <span><a href=""> 8,339km</a></span>
                  <span><a href=""> 가솔린</a></span>
                  <span><a href="">경기</a></span>
                </div>
            </div>
          </td>
        </div>
          <div class="text-align">
          <td>
            <a href=""  >  <img src="https://img.kcar.com/carpicture/carpicture07/pic6077/kcarM_60779128_045.jpg"  width="150px" class="m-2"></a>
        </td>
          <td>
            <div class="fw-bold"><a href="">현대 캐스퍼 가솔린 1.0 터보 밴 스마트 </a></div>
            <div>
              <span class="fs-5 fw-bold text-dark">
                <a href=""class="car_price">1,330만원</a>
                </span>
                <div class="fw-normal small ">
                  <span><a href="">2022년</a></span>
                  <span><a href=""> 5,097km</a></span>
                  <span><a href=""> 가솔린</a></span>
                  <span><a href=""> 부산</a></span>
                </div>
            </div>
          </td>
        </div>
        </tr>
      </table>      
<div class="fs-4 fw-bold mt-4">
  인기 국산차
 </div>
      <hr> 

  <table>
    <tr>
      <div class="text-align">
    <td>
      <a href="">   <img src="https://img.kcar.com/carpicture/carpicture07/pic6077/kcarM_60775062_045.jpg" alt="" width="150px" class="m-2"></a>
  </td>
  <td>
    <div class="fw-bold"> <a href=""> 현대 그랜저 HG240</a></div>
    <div>
      <span class="fs-5 fw-bold ">
        <a href="" class="car_price">     1,420만원</a>
        </span>
        <div class="fw-normal small ">
            <span><a href="">2015년</a></span>
               <span><a href="">72,056km</a></span>
                 <span><a href="">가솔린</a></span>
                  <span><a href=""> 대구</a></span>
        </div>
    </div>
  </td>
</div>
  <div class="text-align">
  <td>
    <a href="">  <img src="https://img.kcar.com/carpicture/carpicture07/pic6077/kcarM_60776988_045.jpg" alt="" width="150px" class="m-2"></a>
</td>
  <td>
    <div class="fw-bold"><a href="">기아 K5 2세대 MX프레스티지</a></div>
    <div>
      <span class="fs-5 fw-bold ">
        <a href="" class="car_price">  1,240만원</a>
        </span>
        <div class="fw-normal small ">
            <span><a href="">2017년</span>
               <span><a href="">104,028km</span>
                 <span><a href="">가솔린</span>
                 <span> <a href="">경기</span>
        </div>
    </div>
  </td>
</div>
  <div class="text-align">
  <td>
    <a href="">   <img src="https://img.kcar.com/3dcarpicture/2023/01/114/60776698_1/main/main780.jpg" alt="" width="150px" class="m-2"></a>
</td>
  <td>
    <div class="fw-bold"><a href="">기아 모하비 더 마스터 디젤</a></div>
    <div>
      <span class="fs-5 fw-bold ">
        <a href="" class="car_price"> 4,480만원</a>
        </span>
        <div class="fw-normal small ">
              <span><a href=""> 2021년</a></span>
               <span><a href=""> 30,979km</a></span>
                  <span><a href="">디젤</a></span>
                  <span><a href=""> 청주</a></span>
        </div>
    </div>
  </td>
</div>
    </tr>
  </table>
  <div class="fs-4 fw-bold mt-4">
    인기 수입차
   </div>
        <hr> 
        <table>
          <tr>
            <div class="text-align">
            <td>
              <a href=""> <img src="https://img.kcar.com/BrandCertificationMall/carpicture04/pic6074/kcarM_60743039_001.jpg" alt="" width="150px" class="m-2"></a>
          </td>
            <td>
              <div class="fw-bold"><a href="">벤츠 E-클래스 W213</a></div>
              <div>
                <span class="fs-5 fw-bold text-dark">
                  <a href=""class="car_price">   4,800만원</a>
                  </span>
                  <div class="fw-normal small ">
                    <span><a href="">2019년</a></span>
                    <span><a href="">25,708km</a></span>
                    <span><a href="">디젤</a></span>
                    <span><a href="">순천</a></span>
                  </div>
              </div>
            </td>
          </div>
            <div class="text-align">
            <td>
              <a href="">  <img src="https://img.kcar.com/BrandCertificationMall/carpicture05/pic6075/kcarM_60750500_001.jpg" alt="" width="150px" class="m-2"></a>
          </td>
            <td>
              <div class="fw-bold"><a href="">미니 쿠퍼 컨버터블(3세대)</a></div>
              <div>
                <span class="fs-5 fw-bold text-dark">
                  <a href=""class="car_price">   4,900만원</a>
                  </span>
                  <div class="fw-normal small ">
                    <span><a href=""> 2022년</a></span>
                    <span><a href=""> 1,948km</a></span>
                    <span><a href=""> 가솔린</a></span>
                    <span><a href=""> 경기</a></span>
                  </div>
              </div>
            </td>
          </div>
            <div class="text-align">
            <td>
              <a href="">   <img src="https://img.kcar.com/BrandCertificationMall/carpicture06/pic6076/kcarM_60764601_001.jpg"  width="150px" class="m-2"></a>
          </td>
            <td>
              <div class="fw-bold"><a href=""> 볼보 XC60 2세대 T6 인스크입션</a></div>
              <div>
                <span class="fs-5 fw-bold text-dark">
                  <a href=""class="car_price"> 5,050만원</a>
                  </span>
                  <div class="fw-normal small ">
                    <span><a href=""> 2018년</a></span>
                    <span><a href=""> 45,275km</a></span>
                    <span><a href=""> 가솔린</a></span>
                    <span><a href="">경기</a></span>
                  </div>
              </div>
            </td>
          </div>
          </tr>
        </table>

       <%@ include file="./footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

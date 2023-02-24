<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>리투리카</title>
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
     
  
      <!-- 검색 -->
      <div class="border rounded border-dark bg-light m-3">
        <form action="search" method="post" id="form">
          <div class="row justify-content-center">
            <div class="col col-lg-5 mt-5">
              <h2 class=" text-center fw-bold mb-5 choice">원하는 차를 찾아보세요!</h2>
              <div class="d-flex justify-content-evenly mb-5">           
                  <div>
                      <div style="text-align: right;">전체 매물 차량 : <span style="color: cornflowerblue;">${searchRs.size()}</span>  대</div>             
                    <span>
                      <!-- 검색 후 search 화면단 이동 -->
                      <select name="cars">  
                        <option value="manufacturer">제조사</option>
                        <optgroup label="국산">국산
                          <c:forEach var="searchRs" items="${searchRs}">
                            <option>${searchRs.MANUFACTURER}</option>
                          </c:forEach>
                      </optgroup>
                      <optgroup label="수입">수입
                        <c:forEach var="searchRs" items="${searchRs}">
                          <option>${searchRs.MANUFACTURER}</option>
                        </c:forEach>

                      </optgroup>
                      </select>
                    </span>
                    <span>
                      <select name="cars">
                        <option value="model">모델</option>
                        <c:forEach var="searchRs" items="${searchRs}">
                          <option>${searchRs.MODEL}</option>
                        </c:forEach>   
                      </select>  
                    </span>
                    <span>
                      <input type="text" name="keyword" placeholder="차량명을 입력하세요"  class="text bg-white" id="">
                    
                    </span>
                    <span>
                  
                    <button type="submit" onclick="getSearchList()" value="검색"  class="button">검색</button>
                     
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
    <c:forEach begin="0" end="2" var="special" items="${specialRs}">
    <tr>
      <div>
        <td>
          <a href="/car_detail_tucson_4" ><img src="${special.DTL_IMG_CAR}"  width="150px" class="m-2"></a>
        </td>
        <td>
          <div class="fw-bold "><a href="/car_detail_tucson_4">${special.MANUFACTURER} ${special.DETAILED_MODEL}</a></div>
          <div>
            <span class="fs-5 fw-bold ">
              <a href="/car_detail_tucson_4" class="car_price">${special.PRICE}만원</a>
            </span>
            <div class="fw-normal small">
              <span>${special.MODEL_YEAR}</span>
              <span>${special.DRIVEN_DIST}</span>
              <span>${special.FUEL}</span>
              <span>${special.ADDR_CITY}</span>
            </td>
          </div>
        </tr>
      </c:forEach>
    </table>
<div class="fs-4 fw-bold mt-4">
  신차급
 </div>
      <hr> 
      <table>
        <c:forEach begin="0" end="2" var="newCar" items="${newCarRs}">
        <tr>
          <div class="d-flex flex-row justify-content-around">
         <div>
          <td>
            <a href="/car_detail_avante_n_turbo"><img src="${newCar.DTL_IMG_CAR}"  width="150px" class="m-2"> </a>
        </td>
          <td>
            <div class="fw-bold"><a href="/car_detail_avante_n_turbo">${newCar.MANUFACTURER} ${newCar.DETAILED_MODEL}</a></div>
            <div>
              <span class="fs-5 fw-bold text-dark car_price">
              ${newCar.PRICE}만원
                </span>
                <div class="fw-normal small ">
                  <span>${newCar.MODEL_YEAR}</span>
                  <span>${newCar.DRIVEN_DIST}</span>
                  <span>${newCar.FUEL}</span>
                  <span>${newCar.ADDR_CITY}</span>
                </div>
            </div>
          </td>
        </div>
           </div>
        </tr>
      </c:forEach>
 </table>      
<div class="fs-4 fw-bold mt-4">
  인기 국산차
 </div>
 <hr> 
   <c:forEach begin="0" end="2" var="domestic" items="${domesticRs}">      
     <table>
      <tr>
        <div class="container">
          <div>
            <td>
      <a href="/car_detail_grandeur_hg240"><img src="${domestic.DTL_IMG_CAR}"  width="150px" class="m-2"></a>
           </td>
            <td>
    <div class="fw-bold"> <a href="/car_detail_grandeur_hg240">${domestic.MANUFACTURER} ${domestic.DETAILED_MODEL}</a></div>
    <div>
      <span class="fs-5 fw-bold ">
        <a href="/car_detail_grandeur_hg240" class="car_price">${domestic.PRICE}만원</a>
        </span>
        <div class="fw-normal small ">
          <span>${domestic.MODEL_YEAR}</span>
          <span>${domestic.DRIVEN_DIST}</span>
          <span>${domestic.FUEL}</span>
          <span>${domestic.ADDR_CITY}</span>
        </div>
    </div>
           </td>
      </div>
  </div>
  </tr>
</table>

</c:forEach>
  <div class="fs-4 fw-bold mt-4">
    인기 수입차
   </div>
        <hr> 
        <table >
          <c:forEach begin="0" end="2" var="imported" items="${importedRs}">
          <tr>
            <div>
            <td>
              <a href="/car_detail_benz_e_class_w213"><img src="${imported.DTL_IMG_CAR}"  width="150px" class="m-2"></a>
          </td>
            <td>
              <div class="fw-bold"><a href="/car_detail_benz_e_class_w213">${imported.MANUFACTURER} ${imported.DETAILED_MODEL}</a></div>
              <div>
                <span class="fs-5 fw-bold text-dark">
                  <a href="/car_detail_benz_e_class_w213"class="car_price">${imported.PRICE}만원</a>
                  </span>
                  <div class="fw-normal small ">
                    <span>${imported.MODEL_YEAR}</span>
                    <span>${imported.DRIVEN_DIST}</span>
                    <span>${imported.FUEL}</span>
                    <span>${imported.ADDR_CITY}</span>
                  </div>
              </div>
            </td>
          </div>
              </div>
            </td>
          </div>
          </tr>
        </c:forEach>
        </table>
 
</main>
       <%@ include file="./footer.jsp" %>
       
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
<!-- <script>
  function getSearchList(){
    $.ajax({
        type: 'GET',
        url : "/search",
        data : $("form[name=search-form]").serialize(),
        success : function(result){
          //테이블 초기화
          $('#boardtable > tbody').empty();
          if(result.length>=1){
            result.forEach(function(item){
              str='<tr>'
                str += "<td>"+item.idx+"</td>";
                str+="<td>"+item.writer+"</td>";
                str+="<td><a href = '/board/detail?idx=" + item.idx + "'>" + item.title + "</a></td>";
                str+="<td>"+item.date+"</td>";
                str+="<td>"+item.hit+"</td>";
                str+="</tr>"
                $('#boardtable').append(str);
                })				 
              }
        }
      })
    }
    </script> -->
  </body>
</html>

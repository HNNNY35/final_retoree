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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

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
      <div class="container m-auto">
      
      <!-- 사진 -->
      
    <!-- <c:set var="fileNameFrontSpecial" value="${carImgSpecial.Front}" />
    <c:set var="fileNameFrontNewCar" value="${carImgNewCar.Front}" />
    <c:set var="fileNameFrontDomestic" value="${carImgDomestic.Front}" />
    <c:set var="fileNameFrontImported" value="${carImgImported.Front}" />


    <c:set var="pathSpecial" value="${carImgSpecial.PHYSICALFILE_NAME}" />
    <c:set var="pathNewCar" value="${carImgNewCar.PHYSICALFILE_NAME}" />
    <c:set var="pathDomestic" value="${carImgDomestic.PHYSICALFILE_NAME}" />
    <c:set var="pathImported" value="${carImgImported.PHYSICALFILE_NAME}" /> -->

      <div class="container m-auto">
        <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <a
              href="#carouselId"
              data-bs-slide-to="0"
              class="active"
            ></a>
            <button data-bs-target="#carouselId" data-bs-slide-to="0"></button>
            <button data-bs-target="#carouselId" data-bs-slide-to="1"></button>
            <button data-bs-target="#carouselId" data-bs-slide-to="2"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                class="w-100"
                src="/img/리투리카 배너2.png"
                alt="" 
              />
            </div>
            <div class="carousel-item">
              <img
                class="w-100"
                src="/img/배너2.png"
                alt=""
              />
            </div>
            <div class="carousel-item">
              <img
                class="w-100"
                src="/img/배너3.jpg"
                alt=""
              />
            </div>
          </div>
         
        </div>
      </div>
      <!-- 사진 -->
     
  
      <!-- 검색 -->
      <div class="border rounded border-dark bg-light m-3">
        <form action="searchCar" method="get" id="form">
          <div class="row justify-content-center">
            <div class="col col-lg-5 mt-5">
              <h2 class=" text-center fw-bold mb-5 choice">원하는 차를 찾아보세요!</h2>
              <div class="d-flex justify-content-evenly mb-5">           
                  <div>
                      <div style="text-align: right;">전체 매물 차량 : <span style="color: cornflowerblue;">${searchRs.size()}</span>  대</div>             
                      <!-- 검색 후 search 화면단 이동 -->
                    <!-- div는 영역 / span은 글자만이어서 span 안에 js는 잘 사용하지 않음.-->
                    <!-- div로 교체 -->
                      <div class="float" style="vertical-align: middle;">
                      <select name="manufacturer" id="manufacturer" onchange="itemChange()">  
                        <option selected>제조사</option>
                        <optgroup name="manufacturer" id="manufacturer" label="국산">국산
                          <option value="현대">현대</option>
                          <option value="제네시스">제네시스</option>
                          <option value="기아">기아</option>
                          <option value="쌍용">쌍용</option>
                          <option value="르노삼성">르노삼성</option>
                      </optgroup>
                         <optgroup name="manufacturer" id="manufacturer" label="수입">수입
                          <option value="벤츠">벤츠</option>
                          <option value="BMW">BMW</option>
                          <option value="폭스바겐">폭스바겐</option>
                          </optgroup>
                      </select>
                  </div>

                    <div class="float" style="vertical-align: middle;">
                      <select name="model" id="model">
                        <option selected>모델</option>
                      </select>  
                  </div>

                  <div class="float" style="vertical-align: middle;">
                    <input type="text" name="keyword" placeholder="차량명을 입력하세요"  class="text bg-white" id="">
                  </div>

                    <div class="float" style="vertical-align: middle;">
                      <button type="submit" onclick="getSearchList()" value="검색"  class="button">검색</button>         
                    </div>
                    
                    </div>
                  </form>
              </div>
            </div>
          </div>
        </form>
      </div>
<!-- 차 -->
<br>
      <div class="fs-4 fw-bold">
       특가
      </div>
           <hr> 
<c:forEach begin="0" end="2" var="special" items="${specialRs}" varStatus="loop">
  <table style="float: left; margin-right:10px; width: 30%;" >
    <a href="/car_detail_change/${special.CAR_DTL_ID}">
    <tr>
      <div class="container m-auto">
        <div>
        <td>
          <a href="/car_detail_change/${special.CAR_DTL_ID}">
          <img 
          src="/files/${special.carImgs.PHYSICALFILE_NAME}/${special.carImgs.Front}" 
           width="150px" height="100px" class="m-2">
        </a>
        </td>
        <td>
          <a href="/car_detail_change/${special.CAR_DTL_ID}">
          <div class="fw-bold text-dark carname">${special.MANUFACTURER} ${special.MODEL} ${special.DETAILED_MODEL}</div>
          <div>
            <span class="fs-5 fw-bold text-dark">
              ${special.PRICE}만원
            </span>
            <div class="fw-normal small text-dark">
              <span>${special.MODEL_YEAR}</span>
              <span>${special.DRIVEN_DIST}km</span>
              <span>${special.FUEL}</span>
              <span>${special.ADDR_CITY}</span>
            </div>
            </div>
            </td>
            </div>
            </div>
        </tr>
        </a>
      </table>
    </c:forEach>
    <div style="clear:both"></div>

<div class="fs-4 fw-bold mt-4">
  신차급
 </div>
      <hr> 
      <c:forEach begin="0" end="2" var="newCar" items="${newCarRs}" varStatus="loop">
      <table style="float: left; margin-right:10px; width: 30%;">
          <a href="/car_detail_change/${newCar.CAR_DTL_ID}">
        <tr>
      <div class="container m-auto">
         <div>
          <td>
            <a href="/car_detail_change/${newCar.CAR_DTL_ID}">
            <img src="/files/${newCar.carImgs.PHYSICALFILE_NAME}/${newCar.carImgs.Front}" 
             width="150px" height="100px" class="m-2"> 
          </a>
        </td>
          <td>
            <a href="/car_detail_change/${newCar.CAR_DTL_ID}">
            <div class="fw-bold text-dark carname">${newCar.MANUFACTURER} ${newCar.MODEL} ${newCar.DETAILED_MODEL}</div>
            <div>
              <span class="fs-5 fw-bold text-dark car_price">
              ${newCar.PRICE}만원
                </span>
                <div class="fw-normal small text-dark">
                  <span>${newCar.MODEL_YEAR}</span>
                  <span>${newCar.DRIVEN_DIST}km</span>
                  <span>${newCar.FUEL}</span>
                  <span>${newCar.ADDR_CITY}</span>
                </div>
            </div>
          </td>
        </div>
      </div>
    </tr>
    </a>
  </table>      
      </c:forEach>

 <div style="clear:both"></div>

<div class="fs-4 fw-bold mt-4">
  인기 국산차
 </div>
 <hr> 
   <c:forEach begin="0" end="2" var="domestic" items="${domesticRs}" varStatus="loop">      
     <table style="float: left; width: 30%; margin-right:10px;">
      <a href="/car_detail_change/${domestic.CAR_DTL_ID}">
      <tr>
        <div class="container m-auto">
          <div>
            <td>
      <a href="/car_detail_change/${domestic.CAR_DTL_ID}">
       <img src="/files/${domestic.carImgs.PHYSICALFILE_NAME}/${domestic.carImgs.Front}" 
        width="150px" height="100px" class="m-2"></a>
           </td>
            <td>
            <a href="/car_detail_change/${domestic.CAR_DTL_ID}">
    <div class="fw-bold text-dark carname">${domestic.MANUFACTURER} ${domestic.MODEL} ${domestic.DETAILED_MODEL}</div>
    <div>
      <span class="fs-5 fw-bold text-dark ">
      ${domestic.PRICE}만원
        </span>
        <div class="fw-normal small text-dark">
          <span>${domestic.MODEL_YEAR}</span>
          <span>${domestic.DRIVEN_DIST}km</span>
          <span>${domestic.FUEL}</span>
          <span>${domestic.ADDR_CITY}</span>
       
        </div>
        </div>
        </td>
      </div>
      </div>
       </tr>
      </a>
</table>
</c:forEach>
<div style="clear:both"></div>
  <div class="fs-4 fw-bold mt-4">
    인기 수입차
   </div>
        <hr> 
        <c:forEach begin="0" end="2" var="imported" items="${importedRs}" varStatus="loop">
        <table style="float:left; width: 30%; margin-right:10px; margin-bottom: 10px;" >
          <a href="/car_detail_change/${imported.CAR_DTL_ID}"></a>
          <tr>
          <div class="container m-auto">
            <div>
            <td>
              <a href="/car_detail_change/${imported.CAR_DTL_ID}">
                <img src="/files/${imported.carImgs.PHYSICALFILE_NAME}/${imported.carImgs.Front}"
                  width="150px" height="100px" class="m-2"></a>
          </td>
            <td>
            <a href="/car_detail_change/${imported.CAR_DTL_ID}">
              <div class="fw-bold text-dark carname">${imported.MANUFACTURER} ${imported.MODEL} ${imported.DETAILED_MODEL}</div>
              <div>
                <span class="fs-5 fw-bold text-dark">
                ${imported.PRICE}만원
                  </span>
                  <div class="fw-normal small text-dark ">
                    <span>${imported.MODEL_YEAR}</span>
                    <span>${imported.DRIVEN_DIST}km</span>
                    <span>${imported.FUEL}</span>
                    <span>${imported.ADDR_CITY}</span>
                  </div>
              </div>
            </td>
          </div>
              </div>
            </tr>
          </a>
        </table>
        </c:forEach>
        <div style="clear:both"></div>

</main>
       <%@ include file="./footer.jsp" %>
 
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>

    <script src="/src/main/resources/static/js/main_search.js"></script>
      </body>

      <script>
        function itemChange() {
  var hyundai = [
    "아반떼",
    "소나타",
    "그랜저",
    "베뉴",
    "코나",
    "투싼",
    "싼타페",
    "팰리세이드",
    "캐스퍼",
  ];
  var genesis = ["G70", "G80", "GV60", "GV70", "GV80", "G90"];
  var kia = [
    "k3",
    "k5",
    "k7",
    "k8",
    "k9",
    "스팅어",
    "모닝",
    "레이",
    "소울",
    "셀토스",
    "스포티지",
    "니로",
    "소렌토",
    "모하비",
    "카니발",
  ];
  var smotor = ["티볼리", "코란도", "렉스턴", "토레스"];
  var renaultkorea = ["XM3", "QM6", "SM3", "SM5", "SM7"];
  var benz = [
    "E-Class",
    "A-Class",
    "C-Class",
    "S-Class",
    "Mercedes-Maybach",
    "GLC",
    "CLA",
    "CLS",
    "EQS",
    "GLA",
    "GLB",
    "GLC",
    "GLE",
    "GLS",
  ];
  var bmw = [
    "iX",
    "i7",
    "i4",
    "i4",
    "XM",
    "X7",
    "X6",
    "X5",
    "X4",
    "X3",
    "X2",
    "X1",
  ];
  var volkwagen = ["투아렉", "골프", "티구안", "아르테온"];

  var selectItem = $("#manufacturer").val();
  var changeItem;

  if (selectItem == "현대") {
    changeItem = hyundai;
  } else if (selectItem == "제네시스") {
    changeItem = genesis;
  } else if (selectItem == "기아") {
    changeItem = kia;
  } else if (selectItem == "쌍용") {
    changeItem = smotor;
  } else if (selectItem == "르노삼성") {
    changeItem = renaultkorea;
  } else if (selectItem == "벤츠") {
    changeItem = benz;
  } else if (selectItem == "BMW") {
    changeItem = bmw;
  } else if (selectItem == "폭스바겐") {
    changeItem = volkwagen;
  }

  $("#model").empty();

  var selectedItem = $("<option selected>모델</option>");

  $("#model").append(selectedItem);
  for (var count = 0; count < changeItem.length; count++) {
    var option = $(
      "<option value='" +
        changeItem[count] +
        "' >" +
        changeItem[count] +
        "</option>"
    );
    $("#model").append(option);
  }
}

      </script>
</html>

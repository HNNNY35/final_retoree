<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/car_detail.css" />
    <link rel="stylesheet" href="/css/mypage.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>찜한 차량</title>
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="main-container">

    <%@ include file="../myPageSide.jsp" %>

    <div class="temp-box border mb-5 p-3">
    <div class="container mt-5">
      <div class="d-flex justify-content-between">
      </div>
      <h1>찜한 차량</h1>
      <hr />
      <!-- 차량 정보 -->
      <c:if test="${wishList.size() == 0}">
        <div class="text-center m-5 fs-3" >
          찜한 차량이 없습니다. 
          <div class="text-center m-3">
            <a href="search" class="btn btn-outline-primary">차량 검색하러 가기</a>
          </div> 
        </div>
      </c:if>

      <c:set var="fileNameFront" value="${carImgs.Front}" />
     <c:set var="path" value="${carImgs.PHYSICALFILE_NAME}" />

        <div class="row mb-3">
          <table class="table table-hover">
            <c:forEach var="wishList" items="${wishList}">
              <thead>
                <tr>
                  <th>
                    <span class="chk-box chk-basic on">
                      <input type="checkbox" id="register-car-chk1" name="checkAll" value="">
                      <label for="register-car-chk1" style="cursor: pointer;"></label></span>
                  </th>
                  <th>차량 사진</th>
                  <th>차량 정보</th>
                  <th>가격</th>
                  <th>구매 문의</th>
                  <th>삭제</th>
                </tr>
                </thead>
                <tbody>
              <tr>
              <td>
                <span class="chk-box chk-basic on">
                  <input type="checkbox" id="" name="" value="">
                  <label for="" style="cursor: pointer;"></label></span>
                </td>
              <!-- <td>사진!!!!!!</td> -->
              <td><a href="/car_detail_change/${wishList.CAR_DTL_ID}">
                <img  src="/files/${wishList.carImgs.PHYSICALFILE_NAME}/${fileNameFront}" />
              </a>
              </td>
              <td> <a href="/car_detail_change/${wishList.CAR_DTL_ID}" class="text-dark">
                ${wishList.MANUFACTURER} ${wishList.MODEL}
                ${wishList.DETAILED_MODEL} 
              </a>
              </td>
              <td>
                  ${wishList.PRICE} 만원
                </td>
                <td >
                  <div>
                    <a href="/car_detail_change/${wishList.CAR_DTL_ID}" class="btn btn-outline-dark mb-2" onclick="contact()">
                      구매문의
                    </a>
                 
                </div>
                </td>
                <td>
                <div>
                  <form action="dltWishList" method="get">
                    <input type="hidden" name="user_id" id="user_id">   
                    <input type="hidden" name="wishlist_id" id="wishlist_id" value="${wishList.WISHLIST_ID}">  
                    <button class="btn btn-outline-dark mb-2" type="submit">
                      찜 해제
                    </button>
                  </form>
                  </div>
                </td>
              </td>
              </tr>
            </tbody>
            
          </c:forEach>
        </table>
      </div>
        </div>
        </div>
        </div>
        <div class="mb-5"></div>

        <%@ include file="../footer.jsp" %>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
  <script>
    function deleteWishlist(){
      alert("찜 해제 되었습니다.")
      window.location.href = ""
    } 
  </script>
  <script>
    function contact(){
      alert("구매문의는 차량 페이지에서 가능합니다.")
    }

  </script>
</html>

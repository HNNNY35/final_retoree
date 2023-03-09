<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/car_detail.css" />
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
    <link rel="stylesheet" href="/css/mypage.css" />
    <title>마이페이지</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
    <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
    <%@ include file="../myPageSide.jsp" %>
        
        <div class="temp-box border mb-5">
          <div class="container mt-3">
            <h1 class="text-center mt-5">마이페이지</h4>
            </div>
            <div class="myPage" >
              <div class="myPageMember">
                <c:forEach var="userInfo" items="${userInfo}">
                  <h3>환영합니다, ${userInfo.NAME} 님</h3>
                  <div class="text-center">ID : ${userInfo.ID}</div>
                  <div class="text-center">핸드폰 번호 : ${userInfo.CELL_NUMBER}</div>
                </c:forEach>
              </div>
              <div class="number">
                <ul>
                  <li>
                    <span>방문 예약</span> 
                  <a class="value" href="./myPageVisitReserve">${myPagereserve.size()}</a>
                </li>
                  <li> 
                    <span>찜한 차량</span> 
                    <a class="value" href="./wishListCar">${wishList.size()}</a>
                  </li>
                </ul>
              </div>
            </div>
            </div>
        </div>
    </main>
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
</html>

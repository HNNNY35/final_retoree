<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인이 필요합니다.</title>
    <link rel="stylesheet" href="/css/register_new_1.css" />
    <link rel="stylesheet" href="/css/header.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <!-- 바꾼 헤더 -->
   <%@ include file="../header.jsp" %>
    <div class="container">
      <!-- 본문 타이틀 -->
      <!-- <hr class="featurette-divider" /> -->

      <br />
      <div class="text-center m-3">
           <h3 class="m-3">해당 기능은 로그인이 필요합니다.</h3>
          <h5 class="m-3"><a href="/loginform" class="text-primary">로그인 페이지로</a></h5>
          <h5 class="m-3"><a href="/car_detail_change/${CAR_DTL_ID}" class="text-primary">차량 상세페이지로</a></h5>

        </div>
      </div>
      <br />
      <br />
    </div>

    <!-- 푸터 -->
      <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

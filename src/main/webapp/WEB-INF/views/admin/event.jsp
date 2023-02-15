<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/event.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
      crossorigin="anonymous"
    />
    <title>이벤트</title>
  </head>
  <%@ include file="../header.jsp" %>
  <body>
    <div class="event-contents">
      <h2 style="text-align: center">이벤트</h2>
    </div>
    <div class="container">
      <!-- 첫번째 이벤트 -->
      <div
        class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
      >
        <div class="p-lg-5 mx-auto my-5">
          <h1 class="display-4 fw-normal">2023 내 차 사기 이벤트</h1>
          <p class="lead fw-normal">자세한 내용이 궁금하다면?</p>
          <a class="btn btn-outline-secondary" href="./event_page_01.html"
            >이벤트 보러가기</a
          >
        </div>
        <!-- <div class="product-device shadow-sm d-none d-md-block">::before</div>
        <div
          class="product-device product-device-2 shadow-sm d-none d-md-block"
        ></div> -->
      </div>

      <!-- 두번째 이벤트 -->
      <div
        class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"
      >
        <div class="p-lg-5 mx-auto my-5">
          <h1 class="display-4 fw-normal">2023 차량등록 이벤트</h1>
          <p class="lead fw-normal">차량번호 입력하고 공기청정기 받자!</p>
          <a class="btn btn-outline-secondary" href="./event_page_02.html"
            >이벤트 보러가기</a
          >
        </div>
        <!-- <div class="product-device shadow-sm d-none d-md-block">::before</div>
      <div
        class="product-device product-device-2 shadow-sm d-none d-md-block"
      ></div> -->
      </div>
    </div>
    <%@ include file="../footer.jsp" %>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

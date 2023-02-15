<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/event.css" />
    <link rel="stylesheet" href="css/event_detail.css" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>Document</title>
  </head>
  <body>
    <!-- 헤더 -->
    <%@ include file="../header.jsp" %>
    <!-- 이벤트 메인 -->
    <div class="event-contents container">
      <h2 style="text-align: center">이벤트</h2>

      <div class="event-view-tit">
        <span class="bul-end-event">진행중</span>
        <h4 class="tit-area">차량등록 이벤트</h4>
        <span class="date-area">2023.01.01 ~ 2023.03.01</span>
      </div>
    </div>
    <div class="container img-area">
      <img
        src="https://img.kbchachacha.com/IMG/article/MAGAZINE/202301/11958698718695629.png"
        style="width: 640px; vertical-align: top"
        class="fr-fic fr-dib"
        data-image_host="https://img.kbchachacha.com"
      />
      <br /><br />
      <div class="list-btn">
        <a class="btn btn-secondary" href="./event.html">목록으로</a>
      </div>
    </div>
    <%@ include file="../footer.jsp" %>
  </body>
  <!-- Bootstrap script -->
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

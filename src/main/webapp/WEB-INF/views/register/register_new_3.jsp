<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
      <h2 class="text-center">회원가입</h2>
      <div class="register_step">
        <h5>약관동의</h5>
        <h5>정보입력</h5>
        <h5 id="active_step">가입완료</h5>
      </div>
      <!-- <hr /> -->
      <br />
      <div class="text-center m-3">
           <h3 class="m-3">회원가입이 완료되었습니다.</h3>
          <h5 class="m-3"><a href="/loginform" class="text-primary">로그인 페이지로</a></h5>
       
        <h4 class="m-5">리투리 카에서 당신의 차를 찾아보세요.</h4>
        <div>
          <div> <a href="./event" class="text-primary">현재 리투리 카에서 진행중인 이벤트</a></div>
          <div><a href="./search" class="text-primary">내가 원하는 모델 찾아보기</a></div>
          <div> <a href="./price_check" class="text-primary">중고차 시세 알아보기</a></div>
          <div></div>
          <div></div>
        </div>
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

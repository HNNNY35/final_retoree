<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice_page_01</title>
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/notice_page.css" />
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
    <%@ include file="../header.jsp" %>
    <div class="container">
      <div class="fs-1 text-center mt-5 fw-bold">공지사항</div>
      <div class="mt-5 fs-5 fw-bold">
        [공지]리투리카 비교견적 서비스 리뉴얼 안내
      </div>

      <hr />

      <div>
        <br />
        <div>비교견적 서비스 리뉴얼 안내</div>
        <br />
        <div>리투리카를 이용해 주시는 고객님께 진심으로 감사드립니다.</div>
        <br />
        <div>리투리카 비교견적 서비스가</div>
        <div>
          보다 더 좋은 서비스로 고객님께 만족을 드리고자 리뉴얼을 진행함을
          사전에 안내드립니다.
        </div>
        <div>앞으로 좀 더 좋은 서비스단정된 모습으로 찾아뵙겠습니다.</div>
        <br />
        <div>리뉴얼 대상 : 리투리카 비교견적 서비스</div>
        <div>서비스 종료일자 : 2023년 1월 18일</div>
        <br />
        <div>
          리뉴얼이 진행 되는 동안 서비스 이용이 제한되오니 리투리카 방문견적
          이용해 부탁드립니다.
        </div>
        <br />
        <div>
          ※ 서비스 종료일(2023.1.18) 이후 진행하신 비교견적은 모두 취소
          처리됩니다
        </div>
        <div>※ 기타 문의사항 고객센터(1600-0080)로 문의 부탁드립니다</div>
        <br />
        <div>앞으로 더 좋은 서비스를 제공하기 위해 노력하겠습니다.</div>
        <div>감사합니다.</div>
      </div>
      <div>
        <div class="text-center">
          <a href="./notice" class="btn btn-dark mt-5">목록</a>
        </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

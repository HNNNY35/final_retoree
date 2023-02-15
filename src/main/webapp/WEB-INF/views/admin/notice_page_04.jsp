<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice_page_04</title>
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
        리투리카 플랫폼 시스템 점검에 따른 서비스 일시 중단 안내
      </div>

      <hr />

      <div>
        <br />
        <div class="fs-3 fw-bold">
          리투리카 플랫폼 시스템 점검에 따른 서비스 일시 중단 안내
        </div>
        <br />
        <div>리투리카를 이용해 주시는 고객님께 진심으로 감사드립니다.</div>
        <br />
        <div>
          서버 점검으로 인해 일시적으로 전체 서비스 이용이 불가하오니 이점 양해
          부탁 드립니다.
        </div>
        <div>이용에 불편을 드려 죄송합니다</div>
        <br />
        <div>
          원활하고 안정된 서비스 제공을 위하여 시스템 점검 작업이 아래와 같이
          진행됩니다.
        </div>
        <div>일정을 확인하시어 서비스 이용에 차질이 없으시길 바랍니다.</div>
        <br />
        <div>내용 : 리투리카 플랫폼 시스템 점검</div>
        <div>서버 점검 : 11월 1일 22시 00분(화) ~ 11월 2일 02시 00분(수)</div>
        <div>영향도 : 작업 시간 동안 홈페이지 접속 차단</div>
        <br />
        <div>앞으로 더 좋은 서비스를 제공하기 위해 노력하겠습니다.</div>
        <br />
        <div>감사합니다.</div>
        <br />
      </div>
    </div>
    <div>
      <div class="text-center">
        <a href="./notice.html" class="btn btn-dark mt-5">목록</a>
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

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice_page</title>
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
      <div class="mt-5 fs-5 fw-bold">[공지] 상품 이용 약관 변경 안내</div>

      <hr />

      <div>
        <br />
        <div>안녕하세요.</div>
        <div>차를 아는 전문가가 만든 중고차 통합 플랫폼 '리투리카'입니다.</div>
        <br />
        <div>
          1/20(목) 오토벨 서비스 오픈 이후 약 1.5개월만에 플랫폼 누적방문수
          100만회를 돌파하였습니다.
        </div>
        <br />
        <div>보내 주신 관심과 성원에 대단히 감사드리오며,</div>
        <div>앞으로 보다 나은 서비스를 제공하는 리투리카가 되겠습니다.</div>
        <br />
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

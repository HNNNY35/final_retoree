<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/car_detail.css" />
    <link rel="stylesheet" href="/css/myPage_modify.css" />
    <link rel="stylesheet" href="/css/mypage.css" />
    <link rel="stylesheet" href="/css/register_new_1.css" />

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
    <title>회원 탈퇴</title>
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="main-container">
      <%@ include file="./myPageSide.jsp" %>

      <div class="temp-box border mb-5 p-3">
        <div class="container mt-5">
          <h3 class="text-center">회원 탈퇴 (구현중 - 미완성)</h3>
          <div class="notice">
            <div>
              회원탈퇴 ※ 고객님의 개인정보 보호를 위해 비밀번호 인증 후
              회원탈퇴를 하실 수 있으며, 아래의 안내사항을 확인해주시기
              바랍니다.
            </div>
            <div>
              1. 30일간 회원가입 불가능 회원탈퇴 후 30일 동안은 회원가입이
              불가능합니다. 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가
              불가하오니 신중하게 선택하시기 바랍니다.
            </div>
            <div>
              2. 차량 정보와 이용 중인 서비스 차량정보와 이용 중인 유료 광고
              상품 및 프리미엄 서비스 등 유료서비스 등에 대한 정보와 데이터는
              모두 삭제됩니다. * 미정산 금액이 있는 경우, 정산 후 탈퇴가
              가능합니다.
            </div>
          </div>

          <!-- 아이디 / 비밀번호 확인 -->
          <div>
            <form action="/withdraw" method="post">
              <!-- <label for="username">아이디</label> -->
              <p>비밀번호를 확인</p>

              <!-- <label for="password">비밀번호</label> -->
              <input
                type="password"
                id="password"
                name="password"
                placeholder="PASSWORD"
                required
              />

              <div class="text-center">
                <button
                  id="btnDelete"
                  type="submit"
                  class="btn btn-primary mb-3 mt-2 signin"
                  onclick="withdraw();"
                >
                  확인
                </button>
                <div>${msg}</div>
              </div>
            </form>
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
  <!-- <script>
    function withdraw() {
      if (window.confirm("${msg}")) {
        location.href = "/main_search";
      }
    }
  </script> -->

  <script>
    $(document).ready(function () {
      $("#btnDelete").click(function () {
        if (confirm("삭제하시겠습니까?")) {
          document.form1.action = "/withdraw";
          document.form1.submit();
        }
      });
    });
  </script>
</html>

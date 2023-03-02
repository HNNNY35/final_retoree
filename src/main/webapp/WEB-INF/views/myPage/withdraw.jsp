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
    <title>회원탈퇴</title>
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="main-container">
      <%@ include file="./myPageSide.jsp" %>

      <div class="temp-box border mb-5 p-3">
        <div class="container mt-5">
          <div class="d-flex justify-content-between">
            <h1>회원탈퇴</h1>
            <hr />
            <!-- 차량 정보 -->
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
              <form action="/withdraw" method="POST">
                <!-- <label for="username">아이디</label> -->
                <input
                  type="text"
                  id="username"
                  name="username"
                  placeholder="ID"
                  value="${userInfo.ID}"
                  readonly
                />

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
                    type="button"
                    class="mb-3 mt-2 signin"
                    onclick="withdraw();"
                  >
                    확인
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mb-5"></div>

    <%@ include file="../footer.jsp" %>
  </body>

  <script>
    function withdraw() {
      if (window.confirm("탈퇴하시겠습니까?")) {
        location.href = "/withdraw";
      }
    }
  </script>
</html>

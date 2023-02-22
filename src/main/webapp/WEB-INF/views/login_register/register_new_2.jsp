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
        <h5 id="active_step">정보입력</h5>
        <h5>가입완료</h5>
      </div>
      <!-- <hr /> -->
      <br />
      <form action="./register_new_3" method="post">
        <table class="register_form">
          <thead>
            <tr>
              <td colspan="2">
                <h3 class="text-center">회원정보 입력</h3>
              </td>
            </tr>
            <tr>
              <td colspan="2" class="text-end text-danger">*필수입력</td>
            </tr>
          </thead>
          <tbody>
          <%-- 추가 확인 --%>
          <span>
          ${resultMap.NAME}
          </span>
            <tr>
              <th>
                <h6 class="fw-bold">이름 <span class="text-danger">*</span></h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="name"
                  id="name"
                  placeholder="실명  입력"
                  required
                />
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  생년월일 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="birthday"
                  id="birthday"
                  placeholder="YYYYMMDD"
                  required
                />
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  아이디 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="userId"
                  id="userId"
                  placeholder="영문 소문자와 숫자 조합 4~12자리"
                  required
                />
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  비밀번호 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="password"
                  class="form-control"
                  name="userPw"
                  id="userPw"
                  required
                />
                <label for="userPw" class="small"
                  >영문 대/소문자, 숫자 사용 가능하며, 8~16자까지
                  가능합니다.</label
                >
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  비밀번호 확인 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="password"
                  class="form-control"
                  name="userPwConfirm"
                  id="userPwConfirm"
                  required
                />
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  휴대전화번호 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="cell_number"
                  id="cell_number"
                  required
                  placeholder="'-' 제외하고 숫자만 입력"
                />
                <br />
              </td>
            </tr>

            <tr>
              <th>
                <h6 class="fw-bold">
                  이메일 <span class="text-danger">*</span>
                </h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="email"
                  id="email"
                  placeholder="example@retoreecar.com"
                  required
                />
                <br />
              </td>
            </tr>
            <th><h6 class="fw-bold">거주지</h6></th>
            <td class="d-flex">
              <select class="form-select" name="addressCity" id="addressCity">
                <option value="city" selected>시도</option>
                <option value="seoul">서울특별시</option>
                <option value="gyeonggido">경기도</option>
                <option value="gangwondo">강원도</option>
                <option value="gyeongsangbukdo">경상북도</option>
              </select>

              <select
                class="form-select"
                name="addressDistrict"
                id="addressDistrict"
              >
                <option value="district">시군구</option>
              </select>
              <br />
            </td>
            <tr></tr>
          </tbody>
        </table>
        <div class="text-center m-5">
          <button type="reset" class="resetBtn">초기화</button>
          <button type="submit" class="submitBtn">가입</button>
        </div>
      </form>
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

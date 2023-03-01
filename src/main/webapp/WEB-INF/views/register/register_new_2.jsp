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
      <%-- 회원가입완료폼이동--%>
      <form action="/register_welcome" method="POST">
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
            <tr>
              <th>
                <h6 class="fw-bold">이름 <span class="text-danger">*</span></h6>
              </th>
              <td>
                <input
                  type="text"
                  class="form-control"
                  name="NAME"
                  id="name"
                  placeholder="실명  입력"
                  required
                  value ="test_first"
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
                  name="BIRTHDAY"
                  id="birthday"
                  placeholder="YYYYMMDD"
                  required
                   value ="2000000"
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
                  name="ID"
                  id="userId"
                  placeholder="영문 소문자와 숫자 조합 4~12자리"
                  required
                   value ="test01"
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
                  name="PASSWORD"
                  id="password"
                  required
                   value ="12341234"
                />
                <label for="password" class="small"
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
                  name="PASSWORD_CHECK"
                  id="passwordConfirm"
                  required
                   value ="12341234"
                />
                <label for="text" id="passwordCheckResult" class="small"></label>
                
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
                  name="CELL_NUMBER"
                  id="cell_number"
                  required
                  placeholder="'-' 제외하고 숫자만 입력"
                   value ="01012345678"
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
                  name="EMAIL"
                  id="email"
                  placeholder="example@retoreecar.com"
                  required
                   value ="aaa@gmail"
                />
                <br />
              </td>
            </tr>
            <th><h6 class="fw-bold">거주지</h6></th>
            <td class="d-flex">
              <select class="form-select" name="ADDR_CITY" id="addressCity">
                <option value="city" selected>시도</option>
                <option value="서울특별시">서울특별시</option>
                <option value="경기도">경기도</option>
                <option value="경기도">인천</option>
                <option value="경상도">경상도</option>
                <option value="전라도">전라도</option>
                <option value="충청도">충청도</option>
                <option value="강원도">강원도</option>
              </select>

              <select class="form-select" name="ADDR_DISTRICT" id="addressDistrict">
               <option value="city​county">시구군</option>
              <optgroup label="서울">서울
              <option value="강남구">강남구</option>
              <option value="용산구">용산구</option>
              <option value="서초구">서초구</option>
              <option value="송파구">송파구</option>
              <option value="중구">중구</option>
              <option value="강북구">강북구</option>
              <option value="강서구">강서구</option>
              <option value="강동구">강동구</option>
              <option value="동작구">동작구</option>
              <option value="영등포구">영등포구</option>
              <option value="마포구">마포구</option>
            </optgroup>
              <optgroup label="경기도">경기도
              <option value="하남시">하남시</option>
              <option value="부천시">부천시</option>
              <option value="김포시">김포시</option>
              <option value="구리시">구리시</option>
              <option value="포천시">포천시</option>
              <option value="고양시">고양시</option>
              <option value="평택시">평택시</option>
              <option value="화성시">화성시</option>
            </optgroup>
              <optgroup label="인천">인천
              <option value="계양구">계양구</option>
              <option value="부평구">부평구</option>
              <option value="남동구">남동구</option>
              <option value="연수구">연수구</option>
              <option value="중구">중구</option>
              <option value="동구">동구</option>
              <option value="서구">서구</option>
              <option value="미추홀구">미추홀구</option>
            </optgroup>
              <optgroup label="경상도">경상도
              <option value="울산광역시">울산광역시</option>
              <option value="부산광역시">부산광역시</option>
              <option value="대구광역시">대구광역시</option>
              <option value="창원시">창원시</option>
              <option value="김해시">김해시</option>
              <option value="거제시">거제시</option>
              <option value="경주시">경주시</option>
              <option value="안동시">안동시</option>
            </optgroup>
              <optgroup label="전라도">전라도
              <option value="광주광역시">광주광역시</option>
              <option value="목포시">목포시</option>
              <option value="나주시">나주시</option>
              <option value="순천시">순천시</option>
              <option value="전주시">전주시</option>
              <option value="군산시">군산시</option>
              <option value="익산시">익산시</option>
              <option value="김제시">김제시</option>
              <option value="남원시">남원시</option>
            </optgroup>
              <optgroup label="충청도">충청도
              <option value="대전광역시">대전광역시</option>
              <option value="청주시">청주시</option>
              <option value="충주시">충주시</option>
              <option value="천안시">천안시</option>
              <option value="공주시">공주시</option>
              <option value="논산시">논산시</option>
              <option value="보령시">보령시</option>
              <option value="아산시">아산시</option>
            </optgroup>
              <optgroup label="강원도">강원도
              <option value="강릉시">강릉시</option>
              <option value="속초시">속초시</option>
              <option value="원주시">원주시</option>
              <option value="춘천시">춘천시</option>
              <option value="정선군">정선군</option>
              <option value="횡성군">횡성군</option>
              <option value="평창군">평창군</option>
              <option value="철원군">철원군</option>
            </optgroup>
            </td>
              </select>
              <br />
                  <input
                  type="hidden"
                  class="form-control"
                  name="TS_CS_ID"
                  id="ts_cs_id"
                  value="${ts_cs_id}"
                  required
                />
                  <input
                  type="hidden"
                  class="form-control"
                  name="AUTH"
                  id="auth"
                  value="user"
                  required
                />
          
            </tr>
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
      
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
   // 비밀번호체크
    $(document).ready(function() {
      $("#password, #passwordConfirm").on("keyup", function () {
        var password = $("#password").val();
        var passwordConfirm = $("#passwordConfirm").val();

        if (password != "" && passwordConfirm != "") {
          if (password != passwordConfirm) {
            $("#passwordCheckResult").html("비밀번호가 일치하지 않습니다.").css("color", "red");;
          } else {
            $("#passwordCheckResult").html("비밀번호가 일치합니다.").css("color", "black");
          }
        } else {
          $("#passwordCheckResult").html("");
        }
      });
    });
    // 아이디중복체크 
  
  </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
             


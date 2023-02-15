<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/car_detail.css" />
    <link rel="stylesheet" href="/css/myPage_modify.css" />
    <link rel="stylesheet" href="/css/mypage.css" />
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
    <title>마이페이지정보수정</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
   <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
        <div class="side temp-box border" style="height: 350px;">
          <ul class="">
            <li>
                <h4>마이페이지</h4>
            </li>
            <li id="">
                <h5>내차구매</h5>
                <ul class="sub">
                    <li id="">
                        <a href="" class="text-decoration-none text-dark">관심 차량</a>
                    </li>
                    <li id="">
                        <a href="" class="text-decoration-none text-dark">사고이력 조회</a>
                    </li>
                    <li id="">
                        <a href="" class="text-decoration-none text-dark ">차량 등록/관리</a>
                    </li>
                </ul>
            </li>
        </ul>
        <ul class="">
            <li id="">
                <h5>회원정보</h5>
                <ul class="sub">
                    </li>
                    <li id="">
                        <a href="./myPage_modify" class="text-decoration-none text-dark">회원정보수정</a>
                    </li>
                </ul>
            </li>
        </ul>
        </div>
        <!-- class="temp-box" -->
        <div class="container">
          <div class="container mt-3">
            <div class="fs-4 text-center padding">회원정보수정</div>
            <br />
            <hr>
          </div>
          <div class="position">
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">이름</label>
            <div class="col-sm-5">
                <input type="txt" class="form-control" name="name" id="name">
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">생년월일</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="birthday" id="birthday" placeholder="YYYYMMDD">
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">아이디</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="id" id="id">
            </div>
            <div class="small">영문 소문자와 숫자 조합 4~12자리</div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">비밀번호</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" id="password">
            </div>
            <div class="small">영문 대/소문자, 숫자 사용 필수 8~16자리</div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">비밀번호 확인</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password_confirm" id="password_confirm">
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">휴대번호</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="phone_number" id=" phone_number" requiredplaceholder="'-' 제외하고 숫자만 입력"/>
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">이메일</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="email" id="email" required placeholder="example@retoreecar.com"/>
            </div>
          </div>
          
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">주소</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="address" id="address" required/>
            </div>
          </div>
          
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">상세주소</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="detail_address" id="detail_address" required placeholder="상세주소를 입력해 주세요." />
            </div>
          </div>
        </div>
            <div class="text-center m-5">
                <a href="./main_search" class="btn btn-primary">수정하기</a>
            </div>
        </div>
        </main>
            
         <%@ include file="../footer.jsp" %>
      </body>
    
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"
      ></script>
    </html>




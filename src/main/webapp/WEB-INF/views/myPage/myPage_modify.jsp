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
    <title>회원 정보 수정</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
   <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
       <%@ include file="./myPageSide.jsp" %>
        <!-- class="temp-box" -->
        <div class="container">
          <form action="./myPageEdit?user_id=U001" method="post">
          <c:forEach items="${userInfo}" var="userInfo">
          <div class="container mt-3">
          
            <div class="fs-4 text-center padding">회원정보 수정</div>
            <br />
            <hr>
          </div>
          <div class="position">
          <div class="mb-3 row text-center">
            <input type="hidden" id="id" value = ${userInfo.NAME} >
            <label for="" class="col-sm-2 col-form-label fs-5">이름</label>
            <div class="col-sm-5">
                <input type="txt" class="form-control" name="name" id="name" value="${userInfo.NAME}" readonly>
                <div class="small" style="float: right;">이름은 변경하실 수 없습니다.</div>
            </div>

          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">생년월일</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="birthday" id="birthday" value="${userInfo.BIRTHDAY}" readonly>
                <div class="small" style="float: right;">생년월일은 변경하실 수 없습니다.</div>
            </div>
          </div>

          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">아이디</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="id" id="id" value="${userInfo.ID}" readonly >
                <div class="small" style="float: right;">아이디는 변경하실 수 없습니다.</div>
            </div>
            <!-- <div class="small">영문 소문자와 숫자 조합 4~12자리</div> -->
          </div>

          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">비밀번호</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" id="password" required="required">
                <div class="small" style="float: right;">영문 대/소문자, 숫자 사용 필수 8~16자리</div>
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">비밀번호 확인</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" id="passwordConfirm" required="required">
                <label style="float: right;" for="text" id="passwordCheckResult" class="small "></label>

            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">휴대번호</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${userInfo.CELL_NUMBER}" name="cell_number" id=" cell_number" required placeholder="'-' 제외하고 숫자만 입력"/>
            </div>
          </div>
          <div class="mb-3 row text-center">
            <label for="" class="col-sm-2 col-form-label fs-5">이메일</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${userInfo.EMAIL}" name="email" id="email" required placeholder="example@retoreecar.com"/>
            </div>
          </div>
          <!-- 주소 API 사용 -->
          <label for="" class="col-sm-2 col-form-label fs-5">주소</label>
          <input type="text" class="addr" id="sample2_postcode" placeholder="우편번호">
          <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
          
          <label for="" class="col-sm-2 col-form-label fs-5"></label>
          <input type="text" class="addr" name = "addr_city" id="sample2_address" placeholder="주소" value="${userInfo.ADDR_CITY}"><br>

          <label for="" class="col-sm-2 col-form-label fs-5 ">상세주소</label>
          <input type="text" class="addr"  name = "addr_district" id="sample2_detailAddress" placeholder="상세주소" value="${userInfo.ADDR_DISTRICT}">
          <input type="text" class="extraAddress" id="sample2_extraAddress" placeholder="참고항목">

<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

          <!-- 주소 / 상세 주소  -->
          <!-- <div class="mb-3 row text-center">
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
          </div> -->


        </div>
            <div class="text-center m-5">
                <button type="submit" onclick="alertUpdate()" class="btn btn-primary">수정하기</button>
            </div>
          </c:forEach>
        </form>
      </div>
        </main>
         <%@ include file="../footer.jsp" %>
      </body>
    
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"
      ></script>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="/js/myPage_modify.js"></script>
      <script>
        function alertUpdate(){
          alert("수정하시겠습니까?")
          alert("수정이 완료되었습니다.")
          window.location.href = "./myPage?user_id=U001"
          
        }
      </script>
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
       
       </script>


    </html>


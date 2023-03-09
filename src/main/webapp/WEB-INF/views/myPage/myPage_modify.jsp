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
    <title>회원 정보 수정</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
   <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
       <%@ include file="../myPageSide.jsp" %>
        <!-- class="temp-box" -->
        <div class="container">
          <form action="./myPageEdit" method="post">
            <c:forEach items="${userInfo}" var="userInfo">
              <div class="container mt-3">
                <!-- <div class="fs-4 text-center padding">회원정보 수정</div> -->
                
                <table class="register_form">
                  <thead>
                    <tr>
                      <td colspan="2">
                        <h3 class="text-center">회원정보 수정</h3>
                        <hr>
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
                          name="name"
                          id="name"
                          value="${userInfo.NAME}"
                          readonly
                        />
                        <div class="small" style="float: left">
                          이름은 변경하실 수 없습니다.
                        </div>
        
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
                          value="${userInfo.BIRTHDAY}"
                          readonly
                        />
        
                        <div class="small" style="float: left">
                          생년월일은 변경하실 수 없습니다.
                        </div>
        
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
                          name="id"
                          id="id"
                          value="${userInfo.ID}"
                          readonly
                        />
                        <div class="small" style="float: left">
                          아이디는 변경하실 수 없습니다.
                        </div>
        
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
                          name="password"
                          id="password"
                          required
                        />
                        <div class="small" style="float: left">
                          영문 대/소문자, 숫자 사용 필수 8~16자리
                        </div>
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
                          name="password"
                          id="passwordConfirm"
                          required
                        />
                        <label
                          style="float: left"
                          for="text"
                          id="passwordCheckResult"
                          class="small"
                        ></label>
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
                          value="${userInfo.CELL_NUMBER}"
                          name="cell_number"
                          id=" cell_number"
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
                          value="${userInfo.EMAIL}"
                          name="email"
                          id="email"
                          required
                          placeholder="example@retoreecar.com"
                        />
        
                        <br />
                      </td>
                    </tr>
                    <tr>
                      <th>
                        <h6 class="fw-bold">주소 <span class="text-danger">*</span></h6>
                      </th>
                      <td>
                        <input
                          type="text"
                          class="form-control"
                          id="address_kakao"
                          name = "addr_city"
                          value="${userInfo.ADDR_CITY}"
                          readonly
                        />
                      </td>
                    </tr>
                    <tr>
                      <th>
                        <h6 class="fw-bold">
                          상세 주소 <span class="text-danger">*</span>
                        </h6>
                      </th>
                      <td>
                        <input
                          type="text"
                          class="form-control"
                          name="addr_district"
                          value="${userInfo.ADDR_DISTRICT}"
                        />
                      </td>
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
                        value="ROLE_USER"
                        required
                      />
                    </tr>
                  </tbody>
                </table>
         
            <div class="text-center m-5">
                <button type="submit" onclick="alertUpdate()" class="btn btn-primary">수정하기</button>
            </div>
          </c:forEach>
        </form>
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
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

      <script>
        function alertUpdate(){
          alert("수정하시겠습니까?")
          alert("수정이 완료되었습니다.")
          window.location.href = "./myPage"
          
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

            <script>
            window.onload = function () {
            document
            .getElementById("address_kakao")
            .addEventListener("click", function () {
              //주소입력칸을 클릭하면
              //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function (data) {
                  //선택시 입력값 세팅
                  document.getElementById("address_kakao").value = data.address; // 주소 넣기
                  document.querySelector("input[name=addr_district]").focus(); //상세입력 포커싱
                },
              }).open();
            });
        };
      </script>
 
      <script>
        var msg = '${msg}';
        if(msg === "비밀번호를 다시 확인해주세요.") {
          alert("비밀번호를 다시 확인해주세요.");
        }
      </script>

    </html>


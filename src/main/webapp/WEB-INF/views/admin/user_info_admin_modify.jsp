<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>user_info_admin_edit</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS v5.2.1 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/users_info_admin_edit.css" />
   
  </head>

  <body>
    <%@ include file="../header.jsp" %>
    <div class="container">
    <form action="/userupdate" method="post">
      <div><h1 class="text-center fw-bold mt-5 mb-3">회원관리수정</h1></div>
      <div class="boxcolor">
      
      <input type="hidden" name="USER_ID" value="${resultMap.USER_ID}" />
       <label for="name">이름</label>
        <input class="form-control" type="text" id="name" name="NAME" value="${resultMap.NAME}" required><br>

        <label for="id">아이디</label>
        <input class="form-control" type="text" id="id" name="ID" value="${resultMap.ID}" readonly><br>

        <label for="birthday">생일</label>
        <input class="form-control" type="text" id="birthday" name="BIRTHDAY" value="${resultMap.BIRTHDAY}" readonly><br>

        <label for="phone">전화번호</label>
        <input class="form-control" type="text" id="phone" name="CELL_NUMBER" value="${resultMap.CELL_NUMBER}" required ><br>

        <label for="email">메일아이디</label>
        <input class="form-control" type="text" id="email" name="EMAIL" value="${resultMap.EMAIL}" required ><br>

        <label for="auth">권한</label>
        <select class="form-control" id="auth" name="AUTH" required >
          <%-- <option value="AUTH">권한</option> --%>
          <option value="ROLE_USER">USER</option>
          <option value="ROLE_DEALER">DEALER</option>
        </select>

            <tr>
              <th><h6 class="fw-bold">주소 <span class="text-danger">*</span>
              </h6></th>
              <td><input type="text" class="form-control" id="address_kakao" name="ADDR_CITY" value="${resultMap.ADDR_CITY}" readonly/></td>
            </tr>
            <tr>
              <th><h6 class="fw-bold">상세 주소 <span class="text-danger">*</span>
              </h6></th>
              <td><input type="text"  class="form-control" name="ADDR_DISTRICT" value="${resultMap.ADDR_DISTRICT}" required/></td>
            </tr>
              </div>
       <br> 
       <%-- 어드민 권한설정부분 --%>
        <div class="text-center">
                <button type="submit" class= "btn btn-lg btn-outline-primary mb-5">
                   등록
                </button>
       
          </div>
        </form>
       </div>
     </div>
        
     <%@ include file="../footer.jsp" %>
      <!-- Bootstrap JavaScript Libraries -->
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      window.onload = function(){
          document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
              //카카오 지도 발생
              new daum.Postcode({
                  oncomplete: function(data) { //선택시 입력값 세팅
                      document.getElementById("address_kakao").value = data.address; // 주소 넣기
                      document.querySelector("input[name=ADDR_DISTRICT]").focus(); //상세입력 포커싱
                  }
              }).open();
          });
      }
      </script> 
     <script
       src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
       integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
       crossorigin="anonymous"
     ></script>
 
     <script
       src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
       integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
       crossorigin="anonymous"
     ></script>
   </body>
 </html>
      
        
    
      
                                    
                                    
                                   
                                  
                                   
                                    
                                   
                                    
                                   
                                    
                                    
                                  
 
   
       
      
     
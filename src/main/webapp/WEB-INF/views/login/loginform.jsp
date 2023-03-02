<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Title</title>
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
    <link rel="stylesheet" href="/css/login.css" />
   
  </head>

  <body>
    <%@ include file="../header.jsp" %>
    <div class="container">
   
       <%-- method="post" action="/login" 스프링프레임워크의 필터에 걸리는 부분 --%>
    <form class="form-singin" method="post" action="/login">
      <div class="login">
     
        <h2 class="fw-bold">Login</h2>
        <form>
          <!-- <label for="username">아이디</label> -->
          <input
            type="text"
            id="username"
            name="username"
            placeholder="ID"
            required
         
          />

          <!-- <label for="password">비밀번호</label> -->
          <input
            type="password"
            id="password"
            name="password"
            placeholder="PASSWORD"
            required
          
          />
          <c:if test="${not empty param.fail}">
        <div><font color="red" class= "text-end">아이디를 다시 확인해 주시기 바랍니다.</font></div> 
       </c:if>
        <div class="text-center"> 
            <button class="mb-3 mt-2 signin">Sign in</button>
        </div>
      </form>
      <%-- 회원가입창 유도 --%>
      <form action="/registeragree">
        <div class="text-center"> 
           <button class="signup">Sign up</button>
             </div>
             </form>
      </div>
    </div>


    <%@ include file="../footer.jsp" %>
    <!-- Bootstrap JavaScript Libraries -->
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

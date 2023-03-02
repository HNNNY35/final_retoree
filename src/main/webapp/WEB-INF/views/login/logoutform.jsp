<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
    <form class="form-signin" method="post" action="/logout">
      <div class="login">
        <h4 class="text-center fw-bold text-dark mb-5">
            로그아웃하시겠습니까?
          </h4>
         <input name="_csrf" type="hidden" value="0e0841e3-2572-44fd-8529-1d8f028363c6">
           
            <div class="text-center" type="submit"> 
           <button class="signup">Sign out</button>
             </div>
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
     


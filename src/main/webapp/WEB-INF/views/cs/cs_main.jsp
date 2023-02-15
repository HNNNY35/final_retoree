<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/cs.css">
        

</head>

<body>
  <%@ include file="../header.jsp" %>
    <main>
    <div class="container">
        <div><h2 class="text-center cs-main">고객센터</h2></div>
        <div class="text-center mb-4"><p>안녕하세요. 중고차 고객센터 입니다. 무엇을 도와드릴까요?</p></div>
        <hr>
        <h3>고객센터</h3>
        <input type="text" class="cs_input" placeholder="궁금한 점이 있다면 무엇이든 찾아보세요" aria-label="Username" aria-describedby="basic-addon1">

        <!-- 사이드바 -->
    <div class="d-flex container">
        <div class="">
            <ul class="wid cs_ul">
                <li class="cs_li"><a href="./cs_FNA_page01" class="cs_a">자주하는 질문</a></li>
                <li class="cs_li"><a href="./cs_question" class="cs_a">문의</a></li>
            </ul>
            
        </div>
        
        <!-- contents -->
            <div class="contents container">

            </div>
        </div>
    </div>
    </div>
    <div class="container-fluid">
   
</div>
</div>
</main>
<%@ include file="../footer.jsp" %>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
</script>
</body>

</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>판매 차량 신규 등록</title>
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="../css/car_reg.css" />
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
      <div class="row mb-3">
        <!-- 좌측 마이페이지 메뉴 -->
        <div class="col-3">
          <div class="card">
            <div class="card-header text-center">
              <a href="" class="h5 text-black">마이페이지</a>
            </div>
            <div class="card-body">
              <div class="myPageMenu">
                <ul>
                  <li><a href="">딜러 정보 수정</a></li>
                  <li>
                    <a href="">차량관리</a>
                    <ul>
                      <li><a href="">차량 신규 등록</a></li>
                      <li><a href="">판매관리</a></li>
                    </ul>
                  </li>
                  <li><a href="">고객관리</a></li>
                  <li><a href="">매출내역</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

                  <!-- 우측 차량 신규 등록 부분 -->
                  <div class="col-9">
                    <h3>차량 등록 완료</h3>
                    <hr>
                    <div>차량 등록이</div>
                  </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      function insertPanelFunc(){
        $.ajax({
          type : "post",
          url : ""
        })

      }
    </script>
  </body>
</html>

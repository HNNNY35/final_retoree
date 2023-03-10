<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/dealer_sales_mgmt.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>판매관리</title>
  </head>
  <!-- 헤더 -->
  <%@ include file="../header.jsp" %>
  <body>
    <div class="container">
      <div class="row mb-3">
      <!-- 좌측 마이페이지 메뉴 -->
          <%@ include file="../dealer_mypage_side_nav.jsp" %>

        <div class="col-9">
          <h3 class="pt-3">${resultDealerName.NAME}님의 매출내역입니다.</h3>
          <hr />

          <table class="table table-hover sales">
            <thead>
              <tr>
                <th>판매일자</th>
                <th>판매차량</th>
                <th>가격</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${resultSoltOutCar.resultList}" var="resultSoltOutCar" varStatus="loop">
                <tr>
                  <td>${resultSoltOutCar.SALE_DATE}</td>
                  <td>
                    <form action="/car_detail_change/${resultSoltOutCar.CAR_DTL_ID}" method="get">
                      <button class="btn btn-link viewPopup text-black text-decoration-none p-0">
                        ${resultSoltOutCar.MANUFACTURER} ${resultSoltOutCar.MODEL}
                      </button>
                    </form>
                  </td>
                  <td>${resultSoltOutCar.PRICE}만원</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <c:set var="_pagination" value="${resultSoltOutCar.paginations}"/>
          <!-- pagination -->
          <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link text-black" href="/dealer_sales/${_pagination.previousPage}" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>
              <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
                <li class="page-item"><a class="page-link text-black" href="/dealer_sales/${i}">${i}</a></li>
              </c:forEach>
              <li class="page-item">
                <a class="page-link text-black" href="/dealer_sales/${_pagination.nextPage}" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
</div>
</div>
    <!-- 푸터 -->
    <%@ include file="../footer.jsp" %>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

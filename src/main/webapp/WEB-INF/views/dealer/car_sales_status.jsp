<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/dealer_sales_status.css" />
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
          <h3 class="pt-3">차량 판매 상태 관리하기</h3>
          <hr />
          <div>
              <h4>판매 차량</h4>
          </div>
          <table class="table sales">
            <thead>
              <tr>
                <th>모델</th>
                <th>차량 번호</th>
                <th>가격</th>
                <th>판매상태</th>
                <th>수정일</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                  <td>
                    <form action="/car_detail_change/${carSalesInfo.CAR_DTL_ID}" method="get">
                      <button class="btn btn-link viewPopup text-black text-decoration-none p-0">
                        ${carSalesInfo.MANUFACTURER} ${carSalesInfo.MODEL}
                      </button>
                    </form>
                    </td>
                  <td>
                   ${carSalesInfo.VEH_NUM}
                  </td>
                  <td>
                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${carSalesInfo.PRICE}" />만원
                    
                  </td>
                  <td>
                    <form action="/car_sale_status_modify" method="post">
                      <input type="hidden" name="CAR_DTL_ID" value="${carSalesInfo.CAR_DTL_ID}">
                    <select name="STATUS" id="STATUS" class="form-select">
                      <option value="sale" <c:if test="${carSalesInfo.STATUS == 'sale'}">selected</c:if>>판매중</option>
                      <option value="soldout" <c:if test="${carSalesInfo.STATUS == 'soldout'}">selected</c:if>>판매완료</option>
                    </select>
                  </td>
                  <td>
                    ${carSalesInfo.SALE_DATE} 
                  </td>
                </tr>
                <tr>
                  <td colspan="5" class="text-center m-5">
                    <button type="submit" class="submitBtn">판매 정보 수정</button>
                  </td>
                </form>
                </tr>
          </tbody>
          </table>
          <h4>방문 예약 관리</h4>
          <table class="table sales">
            <thead>
              <tr>
                <th>방문예약 일자</th>
                <th>시간</th>
                <th>이름</th>
                <th>예약 상태</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${reservationList}" var="reservationList" varStatus="loop">
                <tr>
                  <td>${reservationList.RSV_DATE}</td>
                  <td>
                    <c:if test="${reservationList.RVS_TIME eq 'am'}">
                    오전
                    </c:if>
                    <c:if test="${reservationList.RVS_TIME eq 'pm'}">
                      오후
                      </c:if>
                  </td>
                  <td>${reservationList.NAME}</td>
                  <td>
                      <form action="/reservationComfirm" method="post">
                        <input type="hidden" name="RESERVATION_ID" value="${reservationList.RESERVATION_ID}">
                        <input type="hidden" name="CAR_DTL_ID" value="${reservationList.CAR_DTL_ID}">
                      <button class="btn btn-link viewPopup text-decoration-none p-0">
                        ${reservationList.RSV_STATUS}
                      </button>
                      </form>
                    </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <br />
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

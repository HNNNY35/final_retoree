<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/visit_reserve.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>방문 예약 확인</title>
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
        <%@ include file="../myPageSide.jsp" %>
        <!-- 방문예약->방문예약확정(필수)확인 및 안심번호로 전화통화 -> 매매단지 방문 및 차량 확인 -->
        <div class="temp-box border mb-5 p-3">
          <div class="container mt-5">
            <div class="d-flex justify-content-between"></div>
            <h1>나의 방문 예약 정보 조회</h1>
            <hr />
          <!-- 방문예약 내역이 있을 때 -->

    <c:set var="fileNameFront" value="${carImgs.Front}" />
    <c:set var="path" value="${carImgs.PHYSICALFILE_NAME}" />

<input type="hidden" name="reservation_id" value="${reservation.RESERVATION_ID}">
<input type="hidden" name="user_id" value="${reservation.USER_ID}">
            <div class="border">
            <h5 class="text-center m-3">
              ${reservation.NAME}님은 안심번호로 전화통화 후
              <span style="color: red">${reservation.RSV_STATUS}</span
              >되었습니다.
            </h5>
          </div>
          
          <h3 class="pt-3 pb-2 m-3">매매단지 오시는 길 안내</h3>
          <hr>
            <c:choose>
            <c:when test= "${reservation.RVS_ADDR eq 'none'}">
              <div class="text-center">
                예약 확정 후 주소 안내해드리겠습니다.
               </div> 
            </c:when>
            <c:otherwise>
              <div>
               주소 : ${reservation.RVS_ADDR}
              </div>
              <div>
                  <a href="https://www.google.co.kr/maps/place/${reservation.RVS_ADDR}">지도를 보려면 ?</a>
               </div>
            </c:otherwise>
            </c:choose>

          <hr>

          <!-- 쿼리문 다시 짜야함 -->
          <!-- <h3>판매자 정보</h3> -->
          <table class="table table-bordered text-center">
            <input type="hidden" id="U002" name="U002">
            <tr>
              <th>판매자</th>
              <th>연락처</th>
              <th>판매중</th>
              <th>판매완료</th>
            </tr>
            <tr>
              <td>${dealer.NAME}</td>
              <td>010-1234-1234</td>
              <td>10대</td>
              <td>5대</td>
            </tr>

          </table>
          <hr />

          <!-- 쿼리문 다시 짜야함 -->

          
          <h3 class="p-3">차량 확인</h3>

            <div class="row">
              <table class="text-center">
                <tr>
                  <th></th>
                  <th>차량</th>
                  <th>연식</th>
                  <th>가격</th>
                  <th>보러가기</th>
                </tr>
                <tr>
                  <th>
                    <a href="/car_detail_change/${reservation.CAR_DTL_ID}">
                      <img
                        height="100px"
                        src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameFront}"
                        alt=""
                      />
                    </a>
                  </th>
                  <!-- <td>사진!!!!!!</td> -->

                  <td>${reservation.MANUFACTURER} ${reservation.MODEL} ${reservation.DETAILED_MODEL}</td>
                  <td>${reservation.MODEL_YEAR}</td>
                  <th>${reservation.PRICE} 만원</th>
                  <td>
                    <a
                      class="btn btn-outline-dark"
                      href="/car_detail_change/${reservation.CAR_DTL_ID}"
                      >상세 페이지</a
                    >
                  </td>
                </tr>
              </table>
        </div>
        <hr />
        <h3 class="pt-3">믿고 방문하는 헛걸음 보상제!</h3>
        <div class="text-center pt-3">
          <img
            src="/img/헛걸음보상제.png"
            alt=""
          />
        </div>
      </div>
    </main>

    <!-- 예약내역이 없을 떄 -->

    <%@ include file="../footer.jsp" %>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

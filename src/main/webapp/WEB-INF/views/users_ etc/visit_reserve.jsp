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
        <%@ include file="../myPage/myPageSide.jsp" %>
        <!-- 방문예약->방문예약확정(필수)확인 및 안심번호로 전화통화 -> 매매단지 방문 및 차량 확인 -->
        <div class="temp-box border mb-5 p-3">
          <div class="container mt-5">
            <div class="d-flex justify-content-between"></div>
            <h1>나의 방문 예약 정보 조회</h1>
            <hr />
          <!-- 방문예약 내역이 있을 때 -->
          <c:forEach items="${reservation}" var="reservation">
            <h3 class="text-center">
              ${reservation.NAME}님은 안심번호로 전화통화 후
              <span style="color: red">${reservation.RSV_STATUS}</span
              >되었습니다.
            </h3>
          </c:forEach>

          <!-- 쿼리문 다시 짜야함 -->
          <h3>판매자 정보</h3>
          <table class="table table-bordered text-center">
            <tr>
              <th>판매자</th>
              <th>연락처</th>
              <th>판매중</th>
              <th>판매완료</th>
            </tr>
            <tr>
              <td>xxx</td>
              <td>010-1234-1234</td>
              <td>10대</td>
              <td>5대</td>
            </tr>
          </table>
          <hr />

          <!-- 쿼리문 다시 짜야함 -->
          <h3 class="pt-3 pb-2">매매단지 오시는 길 안내</h3>
          <table class="table-tp3">
            <!-- <caption class="away">판매자 정보</caption> -->
            <colgroup>
              <col width="10%" />
              <col width="40%" />
              <col width="10%" />
              <col width="40%" />
            </colgroup>
            <tbody>
              <tr>
                <th>판매점</th>
                <td>KH 자동차</td>
                <th>전화</th>
                <td>02-1234-1234</td>
              </tr>
              <tr>
                <th rowspan="2">영업시간</th>
                <td rowspan="2" class="time"></td>
                <th>팩스</th>
                <td>053-123-1234</td>
              </tr>
              <tr>
                <th>주소</th>
                <div class="pb-2">
                  <img
                    src="../../../../img/지도.png"
                    alt=""
                    width="100%"
                    height="100%"
                  />
                </div>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/서울 강남구 테헤란로14길 6 남도빌딩"
                    >서울 강남구 테헤란로14길 6 남도빌딩 KH 자동차</a
                  >
                </td>
              </tr>
            </tbody>
          </table>
          <hr />

          
          <h3 class="p-3">차량 확인</h3>

          <div class="container">
            <div class="row mb-3">
              <table class="text-center">
                <c:forEach var="reservation" items="${reservation}">
                <tr>
                  <th></th>
                  <th>차량</th>
                  <th>연식</th>
                  <th>가격</th>
                  <th>보러가기</th>
                </tr>
                <tr>
                  <th>
                    <a href="car_detail_change/${reservation.CAR_DTL_ID}">
                      <img
                        height="100px"
                        src="http://file.carisyou.com/upload/2019/11/27/FILE_201911270320073070.png"
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
                      href="car_detail_change/${reservation.CAR_DTL_ID}"
                      >상세 페이지</a
                    >
                  </td>
                </tr>
              </c:forEach>
              </table>
            </div>
          </div>
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

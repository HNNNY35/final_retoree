<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/car_detail.css" />
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
    <link rel="stylesheet" href="/css/mypage.css" />
    <title>방문 예약</title>
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="main-container">
      <%@ include file="./myPageSide.jsp" %>

      <div class="temp-box border mb-5 p-3">
        <div class="container mt-5">
          <div class="d-flex justify-content-between"></div>
          <h1>방문 예약 확인</h1>
          <hr />
          <div class="container">
            <c:if test="${reservation.size() == 0}">
              <div class="text-center m-5 fs-3">
                방문 예약 일정이 없습니다.
                <div class="text-center m-3">
                  <a href="search" class="btn btn-outline-primary"
                    >차량 검색하러 가기</a
                  >
                </div>
              </div>
            </c:if>
            <div class="row">
              <table class="table table-hover">
                <c:forEach var="reserve" items="${reservation}">
                  <thead class="text-center">
                    <th>방문 예정 일자</th>
                    <th>차량</th>
                    <th>조회</th>
                  </thead>
                  <tr class="text-center">
                    <td>${reserve.RSV_DATE}</td>
                    <td>
                      ${reserve.MANUFACTURER} ${reserve.MODEL}
                      ${reserve.DETAILED_MODEL}
                    </td>

                    <td>
                      <a href="visit_reserve" class="btn btn-outline-dark"
                        >상세보기</a
                      >
                    </td>
                  </tr>
                </c:forEach>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mb-5"></div>

    <%@ include file="../footer.jsp" %>
  </body>
</html>

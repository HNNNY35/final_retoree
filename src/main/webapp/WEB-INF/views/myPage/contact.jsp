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
    <title>찜한 차량</title>
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="main-container">

    <%@ include file="./myPageSide.jsp" %>

    <div class="temp-box border mb-5 p-3">
    <div class="container mt-5">
      <div class="d-flex justify-content-between">
      </div>
      <h1>나의 문의 내역</h1>
      <hr />
      <!-- 차량 정보 -->
      <c:if test="${contact.size() == 0}">
        <div class="text-center m-5 fs-3" >
          문의 내역이 없습니다. 
        </div>
      </c:if>
        <div class="row mb-3">
          <table class="table table-hover">
            <c:forEach var="contact" items="${contact}">
              <thead>
                <tr>
                  <th>문의일자</th>
                  <th>문의유형</th>
                  <th>제목</th>
                  <th>답변일자</th>
                  <th>답변상태</th>
                </tr>
                </thead>

                <tbody>
                <tr>
               
                      <td>
                        ${contact.INQ_DATE}
                      </td>
                      <td>
                        ${contact.INQ_TITLE}
                      </td>
                      <td>
                        ${contact.INQ_CONTENT}
                      </td>
                <td>
                  <c:choose>
                  <c:when test="${contact.ANS_DATE eq 'none'}">
                    미답변
                  </div> 
                </c:when>
                <c:otherwise>
                  ${contact.ANS_DATE}
                </c:otherwise>
              </c:choose>
            </td>
            <td>
              <c:choose>
                <c:when test="${contact.ANS_CONTENT eq 'none'}">
                  미답변
                </c:when>
                <c:otherwise>
                  <div>
                    <ul class="cs_ul">
                      <li class="cs_li">
                        <a class="btn" data-bs-toggle="collapse" href="#qa1" role="button" aria-expanded="false">답변완료</a>
                      </c:otherwise>
                    </c:choose>
                    
                    <div class="collapse" id="qa1">
                        <div class="card card-body">
                      ${contact.ANS_CONTENT}
                      </div>
              </div>
              </td>
            </tr>
          </tbody>

          </c:forEach>
        </table>
      </div>
        </div>
        </div>
        </div>
        <div class="mb-5"></div>

        <%@ include file="../footer.jsp" %>
  </body>
</html>

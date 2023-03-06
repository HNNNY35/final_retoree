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
    <title>고객관리</title>
  </head>
  <!-- 헤더 -->
  <%@ include file="../header.jsp" %>
  <body>
    <div class="container">
      <div class="row mb-3">
      <!-- 좌측 마이페이지 메뉴 -->
          <%@ include file="../dealer_mypage_side_nav.jsp" %>

        <div class="col-9">
          <h3 class="pt-3">1:1 상담</h3>
          <hr />
          <table class="table sales">
            <colgroup>
              <col width="20%" />
              <col width="80%" />
            </colgroup>
            <tbody>
                <tr>
                  <th>제목</th>
                  <td>${resultContact.INQ_TITLE}</td>
                </tr>
                <tr>
                  <th>고객 정보</th>
                  <td>${resultContact.NAME} | ${resultContact.CELL_NUMBER}</td>
                </tr>
                <tr>
                  <th>내용</th>
                  <td>${resultContact.INQ_CONTENT}</td>
                </tr>
                <tr>
                  <th>등록일</th>
                  <td>${resultContact.INQ_DATE}</td>
                </tr>
          </tbody>
          </table>
          <h4>답변완료</h4>
          <form action="/dealer_customer_mgmt" method="GET">
            <table class="table sales">
              <colgroup>
                <col width="20%" />
                <col width="80%" />
              </colgroup>
              <tbody>
                <tr>
                  <th>답변 내용</th>
                  <td>
                    ${resultContact.ANS_CONTENT}
                  </td>
                </tr>
                <tr>
                  <th>답변일</th>
                  <td>${resultContact.ANS_DATE}</td>
                </tr>
                <tr>
                  <td colspan="2" class="text-center m-5">
                    <button type="submit" class="submitBtn">고객관리 페이지로</button>
                  </td>
                </tr>
              </tbody>
          </table>
            </form>
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

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/car_detail.css" />
    <link rel="stylesheet" href="/css/test.css" />
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
    <title>차량 상세 페이지</title>
    <!-- 해야할것 : 차량 상세 페이지(찜, 차량 상세 정보, 차량 상세 이미지, 할부금 모의 계산, 딜러에게 문의하기) -->
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <div class="container">

      <table>
        <thead>
          <tr>
            <th>car_dtl_id</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
            <tr>
                <td>
                  <form action="/car_detail_change/${resultData.CAR_DTL_ID}" method="get">
                  <button class="btn btn-link viewPopup">
                    ${resultData.CAR_DTL_ID}
                </button>
              </form>
                </td>
              </tr>
          </c:forEach>
            </tbody>
          </table>
        </div>


    <%@ include file="../footer.jsp" %>
  </body>
  <script src="/js/car_detail.js"></script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

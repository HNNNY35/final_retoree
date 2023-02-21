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
    <h3 class="pt-3">xxx님의 판매현황입니다.</h3>
    <hr />
    <h4>판매중</h4>
    <table class="table table-hover sales">
      <tr>
        <th>판매 차량</th>
        <th>차량 번호</th>
        <th>방문예약 확인</th>
        <th>1:1상담문의</th>
      </tr>
      <tr>
        <td><a href=""> 현대 그랜져 하이브리드</a></td>
        <td>23 허 0101</td>
        <td><a href="">0</a></td>
        <td><a href="">2</a></td>
      </tr>
      <tr>
        <td><a href="">기아 K3 </a></td>
        <td>xxxx</td>
        <td><a href="">1</a></td>
        <td><a href="">2</a></td>
      </tr>
      <tr>
        <td><a href=""> 현대 코나 하이브리드</a></td>
        <td>xxxx</td>
        <td><a href="">3</a></td>
        <td><a href="">10</a></td>
      </tr>
      <tr>
        <td><a href=""> 아우디 A6</a></td>
        <td>xxxx</td>
        <td><a href="">0</a></td>
        <td><a href="">5</a></td>
      </tr>
    </table>

    <br />
    <h4>판매완료</h4>
    <table class="table table-hover sales">
      <tr>
        <th>판매일자</th>
        <th>판매차량</th>
        <th>가격</th>
        <th>후기</th>
      </tr>
      <tr>
        <td>2022년 10월 29일</td>
        <td><a href="">xxxx</a></td>
        <td>500만원</td>
        <td><a href="">보러가기</a></td>
      </tr>
      <tr>
        <td>2023년 02월 18일</td>
        <td><a href="">xxxx</a></td>
        <td>290만원</td>
        <td><a href="">보러가기</a></td>
      </tr>
    </table>
    <!-- 푸터 -->
    <%@ include file="../footer.jsp" %>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>
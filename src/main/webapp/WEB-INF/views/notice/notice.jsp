<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice</title>
    <link rel="stylesheet" href="/css/header.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
  
     <div class="container">
        <div class="fs-1 text-center fw-bold mt-5">공지사항</div>

       
      <table class="table">
        <hr class="mt-5">
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">제목</th>
            <th scope="col">등록일</th>
           <!-- <a href=""></a> -->
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row"class="text-primary">공지</th>
            <td><a href="./notice_contents" class="text-decoration-none text-dark">리투리카 플랫폼 누적방문 수 10만회 돌파</a></td>
            <td>2023.02.04</td>
          
          </tr>
          <tr>
            <th scope="row">1</th>
            <td><a href="./notice_contents_01" class="text-decoration-none text-dark">[공지]리투리카 비교견적 서비스 리뉴얼 안내</a></td>
            <td>2023.02.04</td>
          
          </tr>
          <tr>
            <th scope="row">2</th>
            <td><a href="./notice_contents_02" class="text-decoration-none text-dark">[공지]상품 이용 약관 변경 안내</a></td>
            <td>2023.02.04</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td><a href="./notice_contents_03" class="text-decoration-none text-dark">리투리카 시스템 점검 안내</a></td>
            <td>2023.02.04</td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td><a href="./notice_contents_04" class="text-decoration-none text-dark">리투리카 플랫폼 시스템 점검에 따른 서비스 일시 중단 안내</a></td>
            <td>2023.02.04</td>
          
          </tr>
        </tbody>
      </table>
      <ul class="pagination pagination-sm justify-content-center">
        <li class="page-item">
          <a class="page-link text-dark" href="#">Pre</a>
        </li>
        <li class="page-item">
          <a class="page-link text-dark" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link text-dark" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link text-dark" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link text-dark" href="#">Next</a>
        </li>
      </ul> 
    </div>
    <%@ include file="../footer.jsp" %>
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"
      ></script>
    </body>
  </html>
  
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
    <link rel="stylesheet" href="/css/dealer_main.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>딜러 마이페이지</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
    <%@ include file="../header.jsp" %>

    <div class="container">
      <div class="row mb-3">
        <!-- 좌측 마이페이지 메뉴 -->
        <div class="col-3">
          <div class="card">
            <div class="card-header text-center">
              <a href="" class="h5 text-black">마이페이지</a>
            </div>
            <div class="card-body">
              <div class="myPageMenu">
                <ul>
                  <li><a href="">딜러 정보 수정</a></li>
                  <li>
                    <a href="">차량관리</a>
                    <ul>
                      <li><a href="">차량 신규 등록</a></li>
                      <li><a href="">판매관리</a></li>
                    </ul>
                  </li>
                  <li><a href="">고객관리</a></li>
                  <li><a href="">매출내역</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- 우측 마이페이지 -->
        <div class="col-9">
          <div>
            <h5>KY 님은 <span class="text-primary">딜러회원</span> 입니다.</h5>
            <hr />
          </div>

          <!-- 회원 정보 부분 -->
          <div class="userInfoBox">
            <div>
              <img src="../image/profile.jpg" alt="" class="profileImg" />
            </div>
            <div class="userInfo">
              <div>양파쿵야</div>
              <div>010-1111-2222</div>
              <div>ky_restaurant@naver.com</div>
              <div>서울시 강남구</div>
            </div>
            <div>
              <a href="./dealer_info_modify.html">정보 수정하기</a>
            </div>
          </div>
          <hr />

          <!-- 차량 관리 부분 -->
          <div>
            <h5>차량관리</h5>
            <div class="my-3">최근 등록한 차량</div>
            <div class="container">
              <div class="d-flex dealer_cards">
                <div class="card dealer_card">
                  <div class="card-header text-center">
                    <a class="text-black" href="">
                      <div class="fw-bold">그랜져 하이브리드</div>
                      <div>23허0101</div>
                    </a>
                  </div>
                  <div class="card-body text-center">
                    <div>
                      <img
                        src="../image/grandeur_design_front.png"
                        alt=""
                        class="card_img"
                      />
                    </div>
                    <div class="my-2">
                      판매가격
                      <span class="fw-bold">2,000만원</span>
                    </div>
                  </div>
                </div>

                <div class="card dealer_card">
                  <div class="card-header text-center">
                    <a class="text-black" href="">
                      <div class="fw-bold">그랜져 하이브리드</div>
                      <div>23허0101</div>
                    </a>
                  </div>
                  <div class="card-body text-center">
                    <div>
                      <img
                        src="../image/grandeur_design_front.png"
                        alt=""
                        class="card_img"
                      />
                    </div>
                    <div class="my-2">
                      판매가격
                      <span class="fw-bold">2,000만원</span>
                    </div>
                  </div>
                </div>

                <div class="card dealer_card">
                  <div class="card-header text-center">
                    <a class="text-black" href="">
                      <div class="fw-bold">그랜져 하이브리드</div>
                      <div>23허0101</div>
                    </a>
                  </div>
                  <div class="card-body text-center">
                    <div>
                      <img
                        src="../image/grandeur_design_front.png"
                        alt=""
                        class="card_img"
                      />
                    </div>
                    <div class="my-2">
                      판매가격
                      <span class="fw-bold">2,000만원</span>
                    </div>
                  </div>
                </div>

                <a
                  href=""
                  class="btn btn-outline-light d-flex align-items-center text-black"
                  >더보기</a
                >
              </div>
            </div>

            <hr />
          </div>

          <!-- 고객 관리 부분 -->
          <div>
            <h5>고객관리</h5>
            <table class="table">
              <thead>
                <tr>
                  <th colspan="4">최근 1:1 상담 내역</th>
                </tr>
                <tr>
                  <th colspan="2">제목</th>
                  <th>아이디</th>
                  <th>작성일</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td colspan="2">할부문의 드립니다.</td>
                  <td>asdf</td>
                  <td>2023-02-03</td>
                </tr>

                <tr>
                  <td colspan="2">구매문의</td>
                  <td>qwerty</td>
                  <td>2023-02-01</td>
                </tr>

                <tr>
                  <td colspan="2">방문 예약</td>
                  <td>kyrt</td>
                  <td>2023-02-01</td>
                </tr>
              </tbody>
            </table>
          </div>
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

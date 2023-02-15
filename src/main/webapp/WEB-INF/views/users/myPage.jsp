<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="../css/car_detail.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <link rel="stylesheet" href="/css/mypage.css"/>
        <title>마이페이지</title>
    </head>
    <body>
        <!-- 바꾼 헤더 -->
        <%@ include file="../header.jsp" %>
        <main>
            <div class="main-container">
                <div class="side temp-box border" style="height: 350px;">
                  <ul class="">
            <li>
              <h4 class="mt-3">마이페이지</h4>
              <br>
            </li>
            <li id="">
              <h5>내차구매</h5>
              <ul class="sub">
                <li id="">
                  <a href="" class="text-decoration-none">관심 차량</a>
                </li>
                <li id="">
                  <a href="" class="text-decoration-none">사고이력 조회</a>
                </li>
                <li id="">
                  <a href="" class="text-decoration-none">차량 등록/관리</a>
                </li>
              </ul>
            </li>
          </ul>
          <ul class="">
            <li id="">
              <h5>회원정보</h5>
              <ul class="sub">
                <li id="">
                  <a href="" class="text-decoration-none">관심 차량</a>
                </li>
                <li id="">
                  <a href="" class="text-decoration-none">사고이력 조회</a>
                </li>
                <li id="">
                  <a href="" class="text-decoration-none">차량 등록/관리</a>
                </li>
                <li id="">
                  <a href="./myPage_modify.html" class="text-decoration-none">회원정보수정</a>
                </li>
              </ul>
            </li>
          </ul>
                </div>
                <div class="temp-box border">
                    <div class="container mt-3">
                        <h4>엄복동 님은 개인회원입니다.</h4> 
                    </div>
                    

                    <div class="container mt-5">
                        <div class="d-flex justify-content-between">
                            <h4>찜한 차량 수 : 총 1대</h4>
                            <a href="http://" class="text-decoration-none text-dark">더 보기</a>
                        </div>
                        <hr>
                        <!-- 차량 정보 -->
                        <div class="container">
                            <div class="row mb-3">
                                <table>
                                    <tr>
                                        <th>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id=""/>
                                            </div>
                                        </th>
                                        <!-- <td>사진!!!!!!</td> -->
                                        <td><img
                                            src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/b07edf6c-e2cb-4648-85c0-a2339dcf3d8c/live360/images/thumb/img_0_0_0_M.jpg"
                                            alt=""
                                            width="100"
                                            height="95"
                                            class=""
                                          /></td>
                                        <td>현대 펠리세이드 디젤 2.2 2WD 익스클루시브</td>
                                        <th>2,500만 원</th>
                                        <td>
                                            <div>
                                                <button class="btn btn-outline-dark mb-2">
                                                    구매문의
                                                </button>
                                            </div>
                                            <div>
                                                <button class="btn btn-outline-dark mb-2">
                                                    찜 해제
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <hr/>

                        <div class="d-flex justify-content-between mt-5">
                            <h4>방문 예약 일정 : 총 2건</h4>
                            <a href="http://" class="text-decoration-none text-dark">더 보기</a>
                        </div>
                        <hr>
                        <!-- 차량 정보 -->
                        <div class="container">
                            <div class="row mb-3">
                                <table>
                                    <tr class="text-center">
                                        <th>방문 예정 일자</th>
                                        <th>방문 예정 시간</th>
                                        <th>차량</th>
                                        <th>조회</th>
                                    </tr>
                                    <tr class="text-center">
                                        <td>2023-02-07</td>
                                        <td>17:30</td>
                                        <td>현대 펠리세이드 디젤 2.2 2WD 익스클루시브</td>
                                        <td><a href="./visit_reserve.html" class="btn btn-outline-dark">상세보기</a></td>
                                    </tr>
                                    <tr class="text-center">
                                        <td>2023-02-13</td>
                                        <td>09:30</td>
                                        <td>기아 K5 3세대 가솔린 터보</td>
                                        <td><a href="" class="btn btn-outline-dark">상세보기</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <span></span>
        </main>

        <%@ include file="../footer.jsp" %>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>

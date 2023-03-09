<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/css/header.css"/>
        <link rel="stylesheet" href="/css/dealer_main.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <title>딜러 마이페이지</title>
    </head>
    <body>
        <!-- 바꾼 헤더 -->
        <%@ include file="../header.jsp" %>

        <div class="container">
            <div
                class="row mb-3">
                <!-- 좌측 마이페이지 메뉴 -->
                <%@ include file="../dealer_mypage_side_nav.jsp" %>
                <!-- 우측 마이페이지 -->
                <div class="col-9">
                    <div>
                        <h5>${user.NAME} 님은
                            <span class="text-primary">딜러회원</span>
                            입니다.</h5>
                        <hr/>
                    </div>

                    <!-- 회원 정보 부분 -->
                    <div class="userInfoBox">
                        <div>
                            <img src="/img/profile.jpg" alt="" class="profileImg"/>
                        </div>
                        <div class="userInfo">
                            <div>${user.NAME}</div>
                            <div>${user.CELL_NUMBER}</div>
                            <div>${user.EMAIL}</div>
                            <div>${user.ADDR_CITY} ${user.ADDR_DISTRICT}</div>
                        </div>
                        <div>
                            <a href="/dealer/modify">정보 수정하기</a>
                        </div>
                    </div>
                    <hr/>
<%-- 반복 시작 --%>
                    <!-- 차량 관리 부분 -->
                    
                    <div>
                        <h5>차량관리</h5>
                        <div class="my-3 fw-bold">최근 등록한 차량</div>
                        <div class="container">
                        <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                            <div class="d-flex dealer_cards">
                                <div class="card dealer_card">
                                    <div class="card-header text-center">
                                        <a class="text-black" href="">
                                            <div class="fw-bold">${resultData.MODEL}</div>
                                            <div class="fw-bold">${resultData.DETAILED_MODEL}</div>
                                            <div>${VEH_NUM}</div>
                                        </a>
                                    </div>
                                    <div class="card-body text-center">
                                        <div>
                                            <img src="../image/grandeur_design_front.png" alt="" class="card_img"/>
                                        </div>
                                        <div class="my-2">
                                            판매가격
                                            <span class="fw-bold">${resultData.PRICE} 만원</span>
                                        </div>
                                    </div>
                                </div>
                        </c:forEach>

                                <a href="/dealer_sales_mgmt/1" class="btn btn-outline-light d-flex align-items-center text-black">더보기</a>
                            </div>
                        </div>
                        <hr/>
                    </div>
<%-- 반복 끝 --%>
                    <!-- 고객 관리 부분 -->
                    <div>
                        <br>
                        <h5>고객관리</h5>
                        <table class="table">
                            <colgroup>
                                <col width="50%" />
                                <col width="25%" />
                                <col width="25%" />
                              </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="3">최근 1:1 상담 내역</th>
                                </tr>
                                <tr class="text-center">
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>답변상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${resultContactList}" var="resultContactList" varStatus="loop">
                                <tr>
                                    <td>
                                    <form action="/dealer_contact" method="post">
                                        <input type="hidden" name="CONTACT_ID" value="${resultContactList.CONTACT_ID}">
                                        <button class="btn btn-link viewPopup text-black text-decoration-none p-0">
                                            ${resultContactList.INQ_TITLE}
                                        </button>
                                        </form>
                                    </td>
                                    <td>${resultContactList.INQ_DATE}</td>
                                    <td class="text-center">${resultContactList.STATUS}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- 푸터 -->
        <%@ include file="../footer.jsp" %>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>

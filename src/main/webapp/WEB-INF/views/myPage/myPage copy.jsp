<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <title>마이페이지</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->
    <%@ include file="../header.jsp" %>
    <main>
      <div class="main-container">
        <div class="side temp-box border" style="height: 350px">
          <ul>
            <li>
              <h4 class="mt-3"><a href="./myPage" style="color: black;" class="text-decoration-none" >마이페이지</a> </h4>
            </li>
            <li>
              <a href="" class="text-decoration-none">찜 차량</a>
            </li>
            <li>
              <a href="" class="text-decoration-none">방문 예약</a>
            </li>
            <li>
              <a href="" class="text-decoration-none">1:1 문의 내역</a>
            </li>
          </ul>
          <ul >
            <li>
              <h5 >회원정보</h5>
              
               
                <!-- 세션 -- -->
                
                  <li>
                    <a href="/myPage_modify" class="text-decoration-none">회원정보수정</a>
                  
                  <li>
                    <a href="" class="text-decoration-none">회원 탈퇴</a>
                  </li>
                </li>
              
            </li>
          </ul>
        </div>
        <div class="temp-box border mb-5">
          <div class="container mt-3">
            <h1 class="text-center mt-5">마이페이지</h4>
            </div>
            <div class="myPage" >
              <div style="display: inline-block; position:relative; max-width: 50%;
              height: 32px;">
                <c:forEach var="reserve" items="${myPagereserve}">
                  
                  <h3>${reserve.NAME} 님</h3>
                  <div>아이디</div>
                  <div>일반회원</div>
                </c:forEach>
              </div>
              <div style="float: right; width: 500px; vertical-align: top;">
                <ul>
                  <li style=" float: left;
                  width: 33.33%;">
                    <span>찜한 차량</span> 
                  <a class="value" href=" ">1</a>
                </li>
                  <li style=" float: left;
                  width: 33.33%;"> <span>방문 예약</span> 
                    <a class="value" href=" ">1</a>
                  </li>
                </ul>
              </div>
            </div>

           
          <div class="container mt-5">
            <div class="container border p-5">
            <div class="d-flex justify-content-between">
              <h4>
                찜한 차량 수 : 총
                <span style="color: cornflowerblue">${wishList.size()}</span>대
              </h4>
            </div>
            <hr />
            <!-- 차량 정보 -->
              <div class="row mb-3">
                <table>
                  <c:forEach var="wishList" items="${wishList}">
                  <tr>
                    <th>
                      <div class="form-check">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          value="${wishList.wishlist_id}"
                          id=""
                        />
                    
                    </th>
                    <!-- <td>사진!!!!!!</td> -->
                    <td><a href="/car_detail_change/${wishList.CAR_DTL_ID}">
                      <img src="${wishList.DTL_IMG_CAR}" width="100" height="95" />
                    </a>
                    </td>
                    <td> <a href="/car_detail_change/${wishList.CAR_DTL_ID}">

                      ${wishList.MANUFACTURER} ${wishList.MODEL}
                      ${wishList.DETAILED_MODEL} 
                    </a>
                    </td>
                    <th>
                        ${wishList.PRICE} 만원
                      </th>
                      
                      <td >
                        <div>
                        <button class="btn btn-outline-dark mb-2">
                          구매문의
                        </button>
                      </div>
                      <div>
                        <form action="dltWishList" method="get">
                          <input type="hidden" name="user_id">  
                          <input type="hidden" name="wishlist_id" value="W001">  
                          <button class="btn btn-outline-dark mb-2" onclick="deleteWishlist()">
                            찜 해제
                          </button>
                        </form>
                      </div>
                    </td>
                  </div>
                </tr>
              </c:forEach>
                </table>
              </div>
              </div>
            </div>

           <br>
           <div class="container mt-5">
            <div class="container border p-5">
            <div class="d-flex justify-content-between">
              <h4>방문 예약 일정 : 총 <span style="color: cornflowerblue;">${myPagereserve.size()}</span>건</h4>
            </div>
            <hr />
            <!-- 차량 정보 -->
            <div class="container">
              <div class="row">
                <table class="table table-hover">
                  <c:forEach var="reserve" items="${myPagereserve}">
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
                        <%
                        String user_id = request.getParameter("user_id");
                      %>
                        <a href="visit_reserve/ <%=user_id %>" class="btn btn-outline-dark"
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
      </div>
    </main>
    <div class="mb-5"></div>

    <%@ include file="../footer.jsp" %>
  </body>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
  <script>
    function deleteWishlist(){
      alert("찜 해제 되었습니다.")
      window.location.href = "./myPage"
    } 
  </script>
</html>

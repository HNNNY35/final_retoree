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
    <title>방문예약 정보 변경</title>
  </head>
  <!-- 헤더 -->
  <%@ include file="../header.jsp" %>
  <body>
    <div class="container">
      <div class="row mb-3">
      <!-- 좌측 마이페이지 메뉴 -->
          <%@ include file="../dealer_mypage_side_nav.jsp" %>

        <div class="col-9">
          <h3 class="pt-3">방문예약 정보 변경하기</h3>
          <hr />
          <div>
              <h4>판매 차량</h4>
          </div>
          <table class="table sales">
            <thead>
              <tr>
                <th>모델</th>
                <th>차량 번호</th>
                <th>가격</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                  <td>
                        ${carSalesInfo.MANUFACTURER} ${carSalesInfo.MODEL}
                      </button>
                    </form>
                    </td>
                  <td>
                   ${carSalesInfo.VEH_NUM}
                  </td>
                  <td>
                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${carSalesInfo.PRICE}" />만원
                  </td>
                </tr>
                <tr>
                </tr>
          </tbody>
          </table>
          <h4>방문예약 정보 변경</h4>
          <table class="table sales">
            <thead>
              <tr>
                <th>방문예약 일자</th>
                <th>시간</th>
              </tr>
            </thead>
            <tbody>
              <form action="/reservationComfirmModify" method="post">
                <input type="hidden" name="RESERVATION_ID" value="${reservationInfo.RESERVATION_ID}">
                <input type="hidden" name="CAR_DTL_ID" value="${carSalesInfo.CAR_DTL_ID}">
                <tr>
                  <td>${reservationInfo.RSV_DATE}</td>
                  <td>
                    <c:if test="${reservationInfo.RVS_TIME eq 'am'}">
                    오전
                    </c:if>
                    <c:if test="${reservationInfo.RVS_TIME eq 'pm'}">
                      오후
                      </c:if>
                  </td>
                </tr>
                <tr>
                  <th>이름</th>
                  <th>연락처</th>
                </tr>
                <tr>
                  <td>
                    ${reservationInfo.NAME}
                  </td>
                  <td>
                    ${reservationInfo.CELL_NUMBER}
                  </td>
                </tr>
                <tr>
                  <th colspan="2">방문예약 주소 입력</th>
                </tr>
                <tr>
                  <td colspan="2">
                    <input type="text" class="form-control" id="address_kakao" name="ADDR_CITY" placeholder="클릭하세요" readonly/>
                  </td>
                </tr>
                <tr>
                  <th>방문예약 상태</th>
                  <td >
                    <select name="RSV_STATUS" id="RSV_STATUS" class="form-select
                    ">
                    <option value="예약 신청" <c:if test="${reservationInfo.RSV_STATUS == '예약 신청'}">selected</c:if>>예약 신청</option>
                    <option value="예약 확정" <c:if test="${reservationInfo.RSV_STATUS == '예약 확정'}">selected</c:if>>예약 확정</option>
                    <option value="예약 취소" <c:if test="${reservationInfo.RSV_STATUS == '예약 취소'}">selected</c:if>>예약 취소</option>
                  </select>
                </td>
                </tr>
                <tr>
                  <td colspan="2" class="text-center m-5">
                    <button type="submit" class="submitBtn">예약 정보 변경하기</button>
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
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    window.onload = function(){
        document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function(data) { //선택시 입력값 세팅
                    document.getElementById("address_kakao").value = data.address; // 주소 넣기
                    document.querySelector("input[name=ADDR_DISTRICT]").focus(); //상세입력 포커싱
                }
            }).open();
        });
    }
    </script>
</html>

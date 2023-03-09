<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매 차량 정보 수정</title>
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/car_modify.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
</head>
<body>
    <!-- 바꾼 헤더 -->
    <%@ include file="../header.jsp" %>

    <div class="container">
        <div class="row mb-3">
          <!-- 좌측 마이페이지 메뉴 -->
          <%@ include file="../dealer_mypage_side_nav.jsp" %>

          <!-- 우측 차량 신규 등록 부분 -->
          <div class="col-9">
            <h3>차량 정보 수정</h3>
            <hr>
            <form action="car_modify_general" method="post">
              <input type="hidden" name="CAR_ID" value="${resultMap.CAR_ID}">
              <input type="hidden" name="CAR_DTL_ID" value="${resultMap.CAR_DTL_ID}">
              <input type="hidden" name="PANER_ID" value="${resultMap.PANER_ID}">
              <input type="hidden" name="SKELETON_ID" value="${resultMap.SKELETON_ID}">
              <h4>차량 일반 정보</h4>
              <table class="table">
                <tbody>
                  <tr>
                    <th>분류</th>
                    <td>
                      <input type="text" name="ORIGIN" id="ORIGIN" class="form-select" value="${resultMap.ORIGIN}" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th>제조사</th>
                    <td>
                      <input type="text" name="MANUFACTURER" id="MANUFACTURER" class="form-select" value="${resultMap.MANUFACTURER}" disabled>
                    </td>
                  </tr>
                    <tr>
                    <th>모델</th>
                    <td>
                      <input type="text" name="MODEL" id="MODEL" class="form-control" value="${resultMap.MODEL}" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th>상세모델</th>
                    <td>
                      <input type="text" name="DETAILED_MODEL" id="DETAILED_MODEL" class="form-control" value="${resultMap.DETAILED_MODEL}" disabled>
                    </td>
                  </tr>
                  <tr>
                      <th>차량번호</th>
                      <td>
                        <input type="text" name="VEH_NUM" id="VEH_NUM" class="form-control" value="${resultMap.VEH_NUM}" disabled>
                      </td>
                  </tr>
                  
                  <tr>
                    <th>가격</th>
                    <td>
                      <input type="text" name="PRICE" id="PRICE" class="form-control" value="${resultMap.PRICE}" required>
                    </td>
                  </tr>

                  <tr>
                    <th>연식</th>
                    <td>
                      <select name="MODEL_YEAR" id="MODEL_YEAR" class="form-select" required>
                        <option value="2023" <c:if test="${resultMap.MODEL_YEAR == 2023}">selected</c:if>>2023</option>
                        <option value="2022" <c:if test="${resultMap.MODEL_YEAR == 2022}">selected</c:if>>2022</option>
                        <option value="2021" <c:if test="${resultMap.MODEL_YEAR == 2021}">selected</c:if>>2021</option>
                        <option value="2020" <c:if test="${resultMap.MODEL_YEAR == 2020}">selected</c:if>>2020</option>
                        <option value="2019" <c:if test="${resultMap.MODEL_YEAR == 2019}">selected</c:if>>2019</option>
                        <option value="2018" <c:if test="${resultMap.MODEL_YEAR == 2018}">selected</c:if>>2018</option>
                        <option value="2017" <c:if test="${resultMap.MODEL_YEAR == 2017}">selected</c:if>>2017</option>
                        <option value="2016" <c:if test="${resultMap.MODEL_YEAR == 2016}">selected</c:if>>2016</option>
                        
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <th>판매지역</th>
                    <td>
                      <input type="text" name="ADDR_CITY" id="ADDR_CITY" class="form-control" value="${resultMap.ADDR_CITY}" required>
                    </td>
                  </tr>
                  <tr>
                    <th>연료</th>
                    <td>
                      <select name="FUEL" id="FUEL" class="form-control" required>
                        <option value="가솔린" <c:if test="${resultMap.FUEL == '가솔린'}">selected</c:if>>가솔린</option>
                        <option value="디젤" <c:if test="${resultMap.FUEL == '디젤'}">selected</c:if>>디젤</option>
                        <option value="LPG" <c:if test="${resultMap.FUEL == 'LPG'}">selected</c:if>>LPG</option>
                        <option value="가솔린+LPG" <c:if test="${resultMap.FUEL == '가솔린+LPG'}">selected</c:if>>가솔린+LPG</option>
                        <option value="하이브리드" <c:if test="${resultMap.FUEL == '하이브리드'}">selected</c:if>>하이브리드</option>
                        <option value="전기" <c:if test="${resultMap.FUEL == '전기'}">selected</c:if>>전기</option>
                        <option value="기타" <c:if test="${resultMap.FUEL == '기타'}">selected</c:if>>기타</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>변속기</th>
                    <td>
                      <select name="TRANSMISSION" id="TRANSMISSION" class="form-select" required>
                        <option value="오토" <c:if test="${resultMap.TRANSMISSION == '오토'}">selected</c:if>>오토</option>
                        <option value="수동" <c:if test="${resultMap.TRANSMISSION == '수동'}">selected</c:if>>수동</option>
                        <option value="세미오토" <c:if test="${resultMap.TRANSMISSION == '세미오토'}">selected</c:if>>세미오토</option>
                        <option value="CVT" <c:if test="${resultMap.TRANSMISSION == 'CVT'}">selected</c:if>>CVT</option>
                        <option value="기타" <c:if test="${resultMap.TRANSMISSION == '기타'}">selected</c:if>>기타</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>차량등급</th>
                    <td>
                      <select name="CARGRADE" id="CARGRADE" class="form-select" value="${resultMap.CARGRADE}" required>
                        <option value="프리미엄" <c:if test="${resultMap.CARGRADE == '프리미엄'}">selected</c:if>>프리미엄</option>
                        <option value="프리미엄 초이스" <c:if test="${resultMap.CARGRADE == '프리미엄 초이스'}">selected</c:if>>프리미엄 초이스</option>
                        <option value="르블랑" <c:if test="${resultMap.CARGRADE == '르블랑'}">selected</c:if>>르블랑</option>
                        <option value="익스클루시브" <c:if test="${resultMap.CARGRADE == '익스클루시브'}">selected</c:if>>익스클루시브</option>
                        <option value="캘리그래피" <c:if test="${resultMap.CARGRADE == '캘리그래피'}">selected</c:if>>캘리그래피</option>
                        <option value="트렌디" <c:if test="${resultMap.CARGRADE == '트렌디'}">selected</c:if>>트렌디</option>
                        <option value="프레스티지" <c:if test="${resultMap.CARGRADE == '프레스티지'}">selected</c:if>>프레스티지</option>
                        <option value="노블레스" <c:if test="${resultMap.CARGRADE == '노블레스'}">selected</c:if>>노블레스</option>
                        <option value="시그니처" <c:if test="${resultMap.CARGRADE == '시그니처'}">selected</c:if>>시그니처</option>
                    </select>
                    </td>
                  </tr>
                  <tr>
                    <th>주행거리</th>
                    <td>
                      <input type="text" name="DRIVEN_DIST" id="DRIVEN_DIST" class="form-control" placeholder="숫자만 입력 ex)10000" value="${resultMap.DRIVEN_DIST}" required>
                    </td>
                  </tr>

                  <tr>
                    <th>사고정보</th>
                    <td>
                      <select name="ACCIDENT_INFO" id="ACCIDENT_INFO" class="form-select" value="${resultMap.ACCIDENT_INFO}" required>
                        <option value="none" <c:if test="${resultMap.ACCIDENT_INFO == '무사고'}">selected</c:if>>무사고</option>
                        <option value="panel_exchange" <c:if test="${resultMap.ACCIDENT_INFO == 'panel_exchange'}">selected</c:if>>외부패널 교환</option>
                        <option value="accident" <c:if test="${resultMap.ACCIDENT_INFO == 'accident'}">selected</c:if>>사고</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>추가옵션</th>
                    <td>
                      <select name="OPTIONS" id="OPTIONS" class="form-select" value="${resultMap.OPTIONS}" required>
                        <option value="sunroof" <c:if test="${resultMap.OPTIONS == 'sunroof'}">selected</c:if>>선루프</option>
                        <option value="navi" <c:if test="${resultMap.OPTIONS == 'navi'}">selected</c:if>>내비게이션</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>색상</th>
                    <td>
                      <select name="COLOR" id="COLOR" class="form-select" value="${resultMap.COLOR}" required>
                        <option value="검정색" <c:if test="${resultMap.COLOR == '검정색'}">selected</c:if>>검정색</option>
                        <option value="검정투톤" <c:if test="${resultMap.COLOR == '검정투톤'}">selected</c:if>>검정투톤</option>
                        <option value="쥐색" <c:if test="${resultMap.COLOR == '쥐색'}">selected</c:if>>쥐색</option>
                        <option value="은색" <c:if test="${resultMap.COLOR == '은색'}">selected</c:if>>은색</option>
                        <option value="은회색" <c:if test="${resultMap.COLOR == '은회색'}">selected</c:if>>은회색</option>
                        <option value="은색투톤" <c:if test="${resultMap.COLOR == '은색투톤'}">selected</c:if>>은색투톤</option>
                        <option value="흰색" <c:if test="${resultMap.COLOR == '흰색'}">selected</c:if>>흰색</option>
                        <option value="진주색" <c:if test="${resultMap.COLOR == '진주색'}">selected</c:if>>진주색</option>
                        <option value="흰색투톤" <c:if test="${resultMap.COLOR == '흰색투톤'}">selected</c:if>>흰색투톤</option>
                        <option value="은하색" <c:if test="${resultMap.COLOR == '은하색'}">selected</c:if>>은하색</option>
                        <option value="청색" <c:if test="${resultMap.COLOR == '청색'}">selected</c:if>>청색</option>
                        <option value="담녹색" <c:if test="${resultMap.COLOR == '담녹색'}">selected</c:if>>담녹색</option>
                        <option value="빨간색" <c:if test="${resultMap.COLOR == '빨간색'}">selected</c:if>>빨간색</option>
                        <option value="보라색" <c:if test="${resultMap.COLOR == '보라색'}">selected</c:if>>보라색</option>
                        <option value="청옥색" <c:if test="${resultMap.COLOR == '청옥색'}">selected</c:if>>청옥색</option>
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="text-center m-5">
                      <button type="submit" class="submitBtn">일반 정보 수정</button>
                    </td>
                  </tr>
                </tbody>
              </table>
              <hr>
            </form>

            <form action="/car_modify_panel" method="post">
            <h4>차량 외부 패널</h4>
            <input type="hidden" name="CAR_ID" value="${resultMap.CAR_ID}">
            <input type="hidden" name="CAR_DTL_ID" value="${resultMap.CAR_DTL_ID}">
            <input type="hidden" name="PANER_ID" value="${resultMap.PANER_ID}">
            <input type="hidden" name="SKELETON_ID" value="${resultMap.SKELETON_ID}">
            <table class="table">
              <tbody>
                <tr>
                  <th>후드</th>
                  <td><span class=""><select name="HOOD" id="HOOD" class="form-select">
                    <option value="1" <c:if test="${resultMap.HOOD == '1'}">selected</c:if>>정상</option>
                    <option value="2" <c:if test="${resultMap.HOOD == '2'}">selected</c:if>>교환</option>
                  </select></span></td>
                  <th>트렁크리드</th>
                  <td><span class="">
                    <select name="TRUNK_LID" id="TRUNK_LID" class="form-select">
                    <option value="1" <c:if test="${resultMap.TRUNK_LID == '1'}">selected</c:if>>정상</option>
                    <option value="2" <c:if test="${resultMap.TRUNK_LID == '2'}">selected</c:if>>교환</option>
                  </select>
                </span></td> 
                </tr>
                <tr>
                  <th>프론트휀더</th>
                  <td><span class="">
                    <select name="FRONT_FENDER" id="FRONT_FENDER" class="form-select">
                      <option value="1" <c:if test="${resultMap.FRONT_FENDER == '1'}">selected</c:if>>정상</option>
                      <option value="2" <c:if test="${resultMap.FRONT_FENDER == '2'}">selected</c:if>>교환</option>
                    </select>
                  </span></td>
                  <th>루프패널</th>
                  <td><span class="">
                    <select name="ROOF_PANEL" id="ROOF_PANEL" class="form-select">
                      <option value="1" <c:if test="${resultMap.ROOF_PANEL == '1'}">selected</c:if>>정상</option>
                      <option value="2" <c:if test="${resultMap.ROOF_PANEL == '2'}">selected</c:if>>교환</option>
                    </select>
                  </span></td>
                </tr>
                <tr>
                  <th>도어</th>
                  <td><span class="">
                    <select name="DOOR" id="DOOR" class="form-select">
                      <option value="1" <c:if test="${resultMap.DOOR == '1'}">selected</c:if>>정상</option>
                      <option value="2" <c:if test="${resultMap.DOOR == '2'}">selected</c:if>>교환</option>
                    </select>
                  </span></td>
                  <th>쿼터패널</th>
                  <td><span class="">
                    <select name="QUARTER_PANEL" id="QUARTER_PANEL" class="form-select">
                      <option value="1" <c:if test="${resultMap.QUARTER_PANEL == '1'}">selected</c:if>>정상</option>
                      <option value="2" <c:if test="${resultMap.QUARTER_PANEL == '2'}">selected</c:if>>교환</option>
                    </select>
                  </span></td>
                </tr>
                <tr>
                  <th>사이드실패널</th>
                  <td><span class="">
                    <select name="SIDE_PANEL" id="SIDE_PANEL" class="form-select">
                      <option value="1" <c:if test="${resultMap.SIDE_PANEL == '1'}">selected</c:if>>정상</option>
                      <option value="2" <c:if test="${resultMap.SIDE_PANEL == '2'}">selected</c:if>>교환</option>
                    </select>
                  </span></td>
                  <th></th>
                  <td>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="text-center m-5">
                    <button type="submit" class="submitBtn">외부 패널 정보 수정</button>
                  </td>
                </tr>
              </tbody>
            </table>
            <hr>
          </form>

            <form action="/car_modify_skeleton" method="post">
              <h4>차량 주요 골격</h4>
              <input type="hidden" name="CAR_ID" value="${resultMap.CAR_ID}">
              <input type="hidden" name="CAR_DTL_ID" value="${resultMap.CAR_DTL_ID}">
              <input type="hidden" name="PANER_ID" value="${resultMap.PANER_ID}">
              <input type="hidden" name="SKELETON_ID" value="${resultMap.SKELETON_ID}">
              <table class="table">
                <colgroup>
                  <col width="27%" />
                  <col width="23%" />
                  <col width="27%" />
                  <col width="23%" />
                </colgroup>
                <tbody>
                  <tr>
                    <th>프론트패널</th>
                    <td><span class="">
                      <select name="FRONT_PANEL" id="FRONT_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.FRONT_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.FRONT_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th>대쉬패널</th>
                    <td><span class="">
                      <select name="DASH_PANEL" id="DASH_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.DASH_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.DASH_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>크로스맴버</th>
                    <td><span class="">
                      <select name="CROSS_MEMBER" id="CROSS_MEMBER" class="form-select">
                        <option value="1" <c:if test="${resultMap.CROSS_MEMBER == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.CROSS_MEMBER == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th>플로어패널</th>
                    <td><span class="">
                      <select name="FLOOR_PANEL" id="FLOOR_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.FLOOR_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.FLOOR_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>인사이드패널</th>
                    <td><span class="">
                      <select name="INSIDE_PANEL" id="INSIDE_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.INSIDE_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.INSIDE_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th>필러패널</th>
                    <td><span class="">
                      <select name="FILER_PANEL" id="FILER_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.FILER_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.FILER_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>사이드멤버</th>
                    <td><span class="">
                      <select name="SIDE_MEMBER" id="SIDE_MEMBER" class="form-select">
                        <option value="1" <c:if test="${resultMap.SIDE_MEMBER == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.SIDE_MEMBER == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th>리어패널</th>
                    <td><span class="">
                      <select name="REAR_PANEL" id="REAR_PANEL" class="form-select">
                        <option value="1" <c:if test="${resultMap.REAR_PANEL == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.REAR_PANEL == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>휠하우스</th>
                    <td><span class="">
                      <select name="WHEEL_HOUSE" id="WHEEL_HOUSE" class="form-select">
                        <option value="1" <c:if test="${resultMap.WHEEL_HOUSE == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.WHEEL_HOUSE == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th>트렁크플로어</th>
                    <td><span class="">
                      <select name="TRUNK_FLOOR" id="TRUNK_FLOOR" class="form-select">
                        <option value="1" <c:if test="${resultMap.TRUNK_FLOOR == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.TRUNK_FLOOR == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>패키지트레이</th>
                    <td><span class="">
                      <select name="PACKAGE_TRAY" id="PACKAGE_TRAY" class="form-select">
                        <option value="1" <c:if test="${resultMap.PACKAGE_TRAY == '1'}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${resultMap.PACKAGE_TRAY == '2'}">selected</c:if>>교환</option>
                      </select>
                    </span></td>
                    <th></th>
                  <td>
                  </td>
                  </tr>
                  <tr>
                    <td colspan="4" class="text-center m-5">
                      <button type="submit" class="submitBtn">주요 골격 정보 수정</button>
                    </td>
                  </tr>
                </tbody>
              </table>
              <hr>
            </form>
          </div>
        </div>
    </div>


    <!-- 푸터 -->
    <%@ include file="../footer.jsp" %>
    <script>
      function formChk(){
        if(isNaN($('#PRICE').val())){
          alert("가격은 숫자만 입력 가능합니다. 다시 입력해주세요.")
          return false;
        } else if(isNaN($('#DRIVEN_DIST').val())){
          alert("주행거리는 숫자만 입력 가능합니다. 다시 입력해주세요.")
          return false;
        }
        return true;
      }
    </script>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
></script>
</body>
</html>
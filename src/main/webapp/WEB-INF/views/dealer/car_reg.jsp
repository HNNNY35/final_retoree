<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>판매 차량 신규 등록</title>
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="../css/car_reg.css" />
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

                  <!-- 우측 차량 신규 등록 부분 -->
                  <div class="col-9">
                    <h3>차량 신규 등록</h3>
                    <hr>
                    <form action="/car_reg_submit" method="post">
                      <h4>차량 일반 정보</h4>
                      <input type="hidden" name="DEALER_ID" value="${DEALER_ID}">
                      <table class="table">
                        <tbody>
                          <tr>
                            <th>분류</th>
                            <td>
                              <select name="ORIGIN" id="ORIGIN" class="form-select">
                                <option value="국산차">국산차</option>
                                <option value="수입차">수입차</option>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <th>제조사</th>
                            <td>
                              <select name="MANUFACTURER" id="MANUFACTURER" class="form-select">
                                <option value="현대">현대</option>
                                <option value="제네시스">제네시스</option>
                                <option value="기아">기아</option>
                                <option value="쉐보레">쉐보레(GM대우)</option>
                                <option value="르노코리아">르노코리아(삼성)</option>
                                <option value="쌍용">쌍용</option>
                                <option value="벤츠">벤츠</option>
                              </select>
                            </td>
                          </tr>
                            <tr>
                            <th>모델</th>
                            <td>
                              <input type="text" name="MODEL" id="MODEL" class="form-control">
                            </td>
                          </tr>
                          <tr>
                            <th>상세모델</th>
                            <td>
                              <input type="text" name="DETAILED_MODEL" id="DETAILED_MODEL" class="form-control">
                            </td>
                          </tr>
                          <tr>
                              <th>차량번호</th>
                              <td>
                                <input type="text" name="VEH_NUM" id="VEH_NUM" class="form-control">
                              </td>
                          </tr>
                          
                          <tr>
                            <th>가격</th>
                            <td>
                              <input type="text" name="PRICE" id="PRICE" class="form-control">
                            </td>
                          </tr>
        
                          <tr>
                            <th>연식</th>
                            <td>
                              <select name="MODEL_YEAR" id="MODEL_YEAR" class="form-select">
                                <option value="2023">2023</option>
                                <option value="2022">2022</option>
                                <option value="2021">2021</option>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                              </select>
                            </td>
                          </tr>
                          
                          <tr>
                            <th>판매지역</th>
                            <td>
                              <input type="text" name="ADDR_CITY" id="ADDR_CITY" class="form-control">
                            </td>
                          </tr>
                          <tr>
                            <th>연료</th>
                            <td>
                              <select name="FUEL" id="FUEL" class="form-select">
                                <option value="가솔린">가솔린</option>
                                <option value="디젤">디젤</option>
                                <option value="LPG">LPG</option>
                                <option value="가솔린+LPG">가솔린+LPG</option>
                                <option value="하이브리드">하이브리드</option>
                                <option value="전기">전기</option>
                                <option value="기타">기타</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>변속기</th>
                            <td>
                              <select name="TRANSMISSION" id="TRANSMISSION" class="form-select">
                                <option value="오토">오토</option>
                                <option value="수동">수동</option>
                                <option value="세미오토">세미오토</option>
                                <option value="CVT">CVT</option>
                                <option value="기타">기타</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>차량등급</th>
                            <td>
                              <select name="CARGRADE" id="CARGRADE" class="form-select">
                                <option value="프리미엄">프리미엄</option>
                                <option value="프리미엄 초이스">프리미엄 초이스</option>
                                <option value="르블랑">르블랑</option>
                                <option value="익스클루시브">익스클루시브</option>
                                <option value="캘리그래피">캘리그래피</option>
                                <option value="트렌디">트렌디</option>
                                <option value="프레스티지">프레스티지</option>
                                <option value="노블레스">노블레스</option>
                                <option value="시그니처">시그니처</option>
                            </select>
                            </td>
                          </tr>

                          <tr>
                            <th>주행거리</th>
                            <td>
                              <input type="text" name="DRIVEN_DIST" id="DRIVEN_DIST" class="form-control">
                            </td>
                          </tr>
        
                          <tr>
                            <th>사고정보</th>
                            <td>
                              <select name="ACCIDENT_INFO" id="ACCIDENT_INFO" class="form-select">
                                <option value="none">무사고</option>
                                <option value="panel_exchange">외부패널 교환</option>
                                <option value="accident">사고</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>추가옵션</th>
                            <td>
                              <select name="OPTIONS" id="OPTIONS" class="form-select">
                                <option value="sunroof">선루프</option>
                                <option value="navi">내비게이션</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>색상</th>
                            <td>
                              <select name="COLOR" id="COLOR" class="form-select">
                                <option value="검정색">검정색</option>
                                <option value="검정투톤">검정투톤</option>
                                <option value="쥐색">쥐색</option>
                                <option value="은색">은색</option>
                                <option value="은회색">은회색</option>
                                <option value="은색투톤">은색투톤</option>
                                <option value="흰색">흰색</option>
                                <option value="진주색">진주색</option>
                                <option value="흰색투톤">흰색투톤</option>
                                <option value="은하색">은하색</option>
                                <option value="청색">청색</option>
                                <option value="담녹색">담녹색</option>
                                <option value="빨간색">빨간색</option>
                                <option value="보라색">보라색</option>
                                <option value="청옥색">청옥색</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>차량 이미지</th>
                            <td>
                              <input type="file" name="DTL_IMG_CAR" id="DTL_IMG_CAR" class="form-control">
                            </td>
                          </tr>
                        
                        </tbody>
                      </table>
                      <hr>

                      <h4>차량 외부 패널</h4>
                      <table class="table">
                        <tbody>
                          <tr>
                            <th>후드</th>
                            <td><span class=""><select name="HOOD" id="HOOD" class="form-select">
                              <option value="1" selected>정상</option>
                              <option value="2">교환</option>
                            </select></span></td>
                            <th>트렁크리드</th>
                            <td><span class="">
                              <select name="TRUNK_LID" id="TRUNK_LID" class="form-select">
                              <option value="1" selected>정상</option>
                              <option value="2">교환</option>
                            </select>
                          </span></td>
                          </tr>
                          <tr>
                            <th>프론트휀더</th>
                            <td><span class="">
                              <select name="FRONT_FENDER" id="FRONT_FENDER" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>루프패널</th>
                            <td><span class="">
                              <select name="ROOF_PANEL" id="ROOF_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>도어</th>
                            <td><span class="">
                              <select name="DOOR" id="DOOR" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>쿼터패널</th>
                            <td><span class="">
                              <select name="QUARTER_PANEL" id="QUARTER_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>사이드실패널</th>
                            <td><span class="">
                              <select name="SIDE_PANEL" id="SIDE_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th></th>
                            <td>

                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <hr>

                      <h4>차량 주요 골격</h4>
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
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>대쉬패널</th>
                            <td><span class="">
                              <select name="DASH_PANEL" id="DASH_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>크로스맴버</th>
                            <td><span class="">
                              <select name="CROSS_MEMBER" id="CROSS_MEMBER" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>플로어패널</th>
                            <td><span class="">
                              <select name="FLOOR_PANEL" id="FLOOR_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>인사이드패널</th>
                            <td><span class="">
                              <select name="INSIDE_PANEL" id="INSIDE_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>필러패널</th>
                            <td><span class="">
                              <select name="FILER_PANEL" id="FILER_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>사이드멤버</th>
                            <td><span class="">
                              <select name="SIDE_MEMBER" id="SIDE_MEMBER" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>리어패널</th>
                            <td><span class="">
                              <select name="REAR_PANEL" id="REAR_PANEL" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>휠하우스</th>
                            <td><span class="">
                              <select name="WHEEL_HOUSE" id="WHEEL_HOUSE" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th>트렁크플로어</th>
                            <td><span class="">
                              <select name="TRUNK_FLOOR" id="TRUNK_FLOOR" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <th>패키지트레이</th>
                            <td><span class="">
                              <select name="PACKAGE_TRAY" id="PACKAGE_TRAY" class="form-select">
                                <option value="1" selected>정상</option>
                                <option value="2">교환</option>
                              </select>
                            </span></td>
                            <th></th>
                          <td>
                          </td>
                          </tr>
                        </tbody>
                      </table>
                      <hr>
                      <div class="text-center">
                        <button type="submit" class="submitBtn ">입력 완료</button>
                      </div>
                    </form>
        
        
                  </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

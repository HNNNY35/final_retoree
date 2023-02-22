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
            <h3>차량 정보 수정</h3>
            <hr>
            <form action="" method="post">
              <h4>차량 일반 정보</h4>
              <table class="table">
                <tbody>
                  <tr>
                    <th>제조사</th>
                    <td>
                      <input type="text" name="manufacturer" id="manufacturer" class="form-control" value="현대" disabled>
                    </td>
                  </tr>
                    <tr>
                    <th>모델</th>
                    <td>
                      <input type="text" name="model" id="model" class="form-control" value="코나" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th>상세모델</th>
                    <td>
                      <input type="text" name="detailed_model" id="detailed_model" class="form-control" value="코나" disabled>
                    </td>
                  </tr>
                  <tr>
                      <th>차량번호</th>
                      <td>
                        <input type="text" name="veh_num" id="veh_num" class="form-control" value="12하3456" disabled>
                      </td>
                  </tr>
                  
                  <tr>
                    <th>가격</th>
                    <td>
                      <input type="text" name="price" id="price" class="form-control">
                    </td>
                  </tr>

                  <tr>
                    <th>연식</th>
                    <td>
                      <select name="model_year" id="model_year" class="form-control">
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
                    <th>연료</th>
                    <td>
                      <select name="fuel" id="fuel" class="form-control">
                        <option value="gasoline">가솔린</option>
                        <option value="diesel">디젤</option>
                        <option value="lpg">LPG</option>
                        <option value="galpg">가솔린+LPG</option>
                        <option value="hybrid">하이브리드</option>
                        <option value="elect">전기</option>
                        <option value="etc">기타</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>변속기</th>
                    <td>
                      <select name="transmission" id="transmission" class="form-control">
                        <option value="auto">오토</option>
                        <option value="manual">수동</option>
                        <option value="semiauto">세미오토</option>
                        <option value="cvt">CVT</option>
                        <option value="etc">기타</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>차량등급</th>
                    <td>
                      <input type="text" name="cargrade" id="cargrade" class="form-control">
                    </td>
                  </tr>
                  <tr>
                    <th>세부등급</th>
                    <td>
                      <input type="text" name="detailed_cargrade" id="detailed_cargrade" class="form-control">
                    </td>
                  </tr>

                  <tr>
                    <th>주행거리</th>
                    <td>
                      <input type="text" name="driven_dist" id="driven_dist" class="form-control">
                    </td>
                  </tr>

                  <tr>
                    <th>사고정보</th>
                    <td>
                      <select name="accident_info" id="accident_info" class="form-control">
                        <option value="none">무사고</option>
                        <option value="panel_exchange">외부패널 교환</option>
                        <option value="accident">사고</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>추가옵션</th>
                    <td>
                      <select name="options" id="options" class="form-control">
                        <option value="sunroof">선루프</option>
                        <option value="navi">내비게이션</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th>색상</th>
                    <td>
                      <input type="text" name="color" id="color" class="form-control">
                    </td>
                  </tr>

                  <tr>
                    <th>차량 이미지</th>
                    <td>
                      <input type="file" name="dtl_img_car" id="dtl_img_car" class="form-control">
                    </td>
                  </tr>

                </tbody>
              </table>
              <hr>
            </form>

            <form action="" method="post">
            <h4>차량 외부 패널</h4>
            <table class="table">
              <tbody>
                <tr>
                  <th>후드</th>
                  <td><span class=""><select name="hood" id="hood" class="form-select">
                    <option value="정상" selected>정상</option>
                    <option value="교환">교환</option>
                  </select></span></td>
                  <th>트렁크리드</th>
                  <td><span class="">
                    <select name="trunk_lid" id="trunk_lid" class="form-select">
                    <option value="정상" selected>정상</option>
                    <option value="교환">교환</option>
                  </select>
                </span></td>
                </tr>
                <tr>
                  <th>프론트휀더</th>
                  <td><span class="">
                    <select name="front_fender" id="front_fender" class="form-select">
                      <option value="정상" selected>정상</option>
                      <option value="교환">교환</option>
                    </select>
                  </span></td>
                  <th>루프패널</th>
                  <td><span class="">
                    <select name="roof_panel" id="roof_panel" class="form-select">
                      <option value="정상" selected>정상</option>
                      <option value="교환">교환</option>
                    </select>
                  </span></td>
                </tr>
                <tr>
                  <th>도어</th>
                  <td><span class="">
                    <select name="door" id="door" class="form-select">
                      <option value="정상" selected>정상</option>
                      <option value="교환">교환</option>
                    </select>
                  </span></td>
                  <th>쿼터패널</th>
                  <td><span class="">
                    <select name="quarter_panel" id="quarter_panel" class="form-select">
                      <option value="정상" selected>정상</option>
                      <option value="교환">교환</option>
                    </select>
                  </span></td>
                </tr>
                <tr>
                  <th>사이드실패널</th>
                  <td><span class="">
                    <select name="side_panel" id="side_panel" class="form-select">
                      <option value="정상" selected>정상</option>
                      <option value="교환">교환</option>
                    </select>
                  </span></td>
                  <th>외부 패널 정보</th>
                  <td>
                    <button type="submit" class="panel_btn">입력 완료</button>
                  </td>
                </tr>
              </tbody>
            </table>
            <hr>
          </form>

            <form action="" method="post">
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
                      <select name="front_panel" id="front_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>대쉬패널</th>
                    <td><span class="">
                      <select name="dash_panel" id="dash_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>크로스맴버</th>
                    <td><span class="">
                      <select name="cross_member" id="cross_member" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>플로어패널</th>
                    <td><span class="">
                      <select name="floor_panel" id="floor_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>인사이드패널</th>
                    <td><span class="">
                      <select name="inside_panel" id="inside_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>필러패널</th>
                    <td><span class="">
                      <select name="filer_panel" id="filer_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>사이드멤버</th>
                    <td><span class="">
                      <select name="side_member" id="side_member" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>리어패널</th>
                    <td><span class="">
                      <select name="rear_panel" id="rear_panel" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>휠하우스</th>
                    <td><span class="">
                      <select name="wheel_house" id="wheel_house" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>트렁크플로어</th>
                    <td><span class="">
                      <select name="trunk_floor" id="trunk_floor" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                  </tr>
                  <tr>
                    <th>패키지트레이</th>
                    <td><span class="">
                      <select name="package_tray" id="package_tray" class="form-select">
                        <option value="정상" selected>정상</option>
                        <option value="교환">교환</option>
                      </select>
                    </span></td>
                    <th>주요 골격 정보</th>
                  <td>
                    <button type="submit" class="panel_btn">입력 완료</button>
                  </td>
                  </tr>
                </tbody>
              </table>
              <hr>
            </form>
            <div class="text-center m-5">
              <button type="submit" class="submitBtn">수정완료</button>
              <button type="" class="deleteBtn">삭제</button>
            </div>

          </div>
        </div>
    </div>


    <!-- 푸터 -->
    <%@ include file="../footer.jsp" %>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
></script>
</body>
</html>
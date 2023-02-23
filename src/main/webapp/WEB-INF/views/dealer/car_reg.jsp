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
                    <form action="/car_reg_2" method="post">
                      <h4>차량 일반 정보</h4>
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
                              <select name="maunfacturer" id="maunfacturer" class="form-select">
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
                              <input type="text" name="model" id="model" class="form-control">
                            </td>
                          </tr>
                          <tr>
                            <th>상세모델</th>
                            <td>
                              <input type="text" name="detailed_model" id="detailed_model" class="form-control">
                            </td>
                          </tr>
                          <tr>
                              <th>차량번호</th>
                              <td>
                                <input type="text" name="veh_num" id="veh_num" class="form-control">
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
                              <select name="model_year" id="model_year" class="form-select">
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
                              <select name="fuel" id="fuel" class="form-select">
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
                              <select name="transmission" id="transmission" class="form-select">
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
                              <select name="cargrade" id="cargrade" class="form-select">
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
                              <select name="accident_info" id="accident_info" class="form-select">
                                <option value="none">무사고</option>
                                <option value="panel_exchange">외부패널 교환</option>
                                <option value="accident">사고</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>추가옵션</th>
                            <td>
                              <select name="options" id="options" class="form-select">
                                <option value="sunroof">선루프</option>
                                <option value="navi">내비게이션</option>
                              </select>
                            </td>
                          </tr>
        
                          <tr>
                            <th>색상</th>
                            <td>
                              <select name="color" id="color" class="form-select">
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
                              <input type="file" name="dtl_img_car" id="dtl_img_car" class="form-control">
                            </td>
                          </tr>
                        
                        </tbody>
                      </table>
                      <hr>
                    </form>
        
                    <div class="text-center m-5">
                      <button type="submit" class="submitBtn">다음</button>
                    </div>
        
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

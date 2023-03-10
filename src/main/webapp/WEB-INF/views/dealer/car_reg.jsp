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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  </head>
  <body>
    <%-- <script type="text/javascript" src="./js/search.js"></script> --%>
    <!-- 바꾼 헤더 -->
    <%@ include file="../header.jsp" %>

    <div class="container">
      <div class="row mb-3">
        <!-- 좌측 마이페이지 메뉴 -->
        <%@ include file="../dealer_mypage_side_nav.jsp" %>

                  <!-- 우측 차량 신규 등록 부분 -->
                  <div class="col-9">
                    <h3>차량 신규 등록</h3>
                    <hr>
                    <form action="/car_reg_img" method="post" onsubmit="return formChk();" enctype="multipart/form-data">
                      <input type="hidden" name="DEALER_ID" value="${DEALER_ID}">
                      <h4>차량 일반 정보</h4>
                      <table class="table">
                        <tbody>
                          <tr>
                            <th>분류</th>
                            <td>
                              <select name="ORIGIN" id="ORIGIN" class="form-select">
                                <option value="국산">국산차</option>
                                <option value="수입">수입차</option>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <th>제조사</th>
                            <td>
                              <select name="MANUFACTURER" id="MANUFACTURER" class="form-select" onchange="itemChange()">
                                <option value="현대">현대</option>
                                <option value="제네시스">제네시스</option>
                                <option value="기아">기아</option>
                                <option value="쉐보레">쉐보레(GM대우)</option>
                                <option value="르노코리아">르노코리아(삼성)</option>
                                <option value="쌍용">쌍용</option>
                                <option value="벤츠">벤츠</option>
                                <option value="BMW">BMW</option>
                                <option value="폭스바겐">폭스바겐</option>
                              </select>
                            </td>
                          </tr>
                            <tr>
                            <th>모델</th>
                            <td>
                              <select name="MODEL" id="MODEL" class="form-select" required>
                                <option selected>모델</option>
                              </select>
                            </td>
                          </tr>
                          <tr>
                            <th>상세모델</th>
                            <td>
                              <input type="text" name="DETAILED_MODEL" id="DETAILED_MODEL" class="form-control" placeholder="모델과 동일할 경우 생략">
                            </td>
                          </tr>
                          <tr>
                              <th>차량번호</th>
                              <td>
                                <input type="text" name="VEH_NUM" id="VEH_NUM" class="form-control" placeholder="00가0000" required>
                              </td>
                          </tr>
                          
                          <tr>
                            <th>가격 (만원)</th>
                            <td>
                              <input type="text" name="PRICE" id="PRICE" class="form-control" placeholder="숫자만 입력 ex)2000" required>
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
                              <input type="text" name="ADDR_CITY" id="ADDR_CITY" class="form-control" required>
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
                            <th>주행거리 (km)</th>
                            <td>
                              <input type="text" name="DRIVEN_DIST" id="DRIVEN_DIST" class="form-control" placeholder="숫자만 입력 ex)10000" required>
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
                        </tbody>
                      </table>

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
                      <div class="text-center">
                        <button type="submit" class="submitBtn ">입력 완료</button>
                      </div>
                    </form>
        
                  </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>

    <script>
      function itemChange(){

      var hyundai = ["아반떼", "소나타", "그랜저", "베뉴", "코나", "투싼", "싼타페", "팰리세이드", "캐스퍼"];
      var genesis = ["G70", "G80", "GV60", "GV70", "GV80", "G90"];
      var kia = ["k3","k5","k7", "k8", "k9", "스팅어", "모닝", "레이", "소울", "셀토스", "스포티지", "니로", "소렌토", "모하비", "카니발"];
      var chevrolet = ["트래버스", "볼트", "이쿼녹스", "트레일블레이저", "타호", "콜로라도", "카마로"];
      var renaultkorea =["XM3","QM6","SM3","SM5","SM7"];
      var smotor = ["티볼리", "코란도", "렉스턴", "토레스"];
      var benz = ["E-Class", "A-Class", "C-Class", "S-Class", "Mercedes-Maybach", "GLC", "CLA", "CLS", "EQS", "GLA", "GLB", "GLC", "GLE", "GLS"];
      var bmw = ["iX", "i7", "i4", "i4", "XM", "X7","X6","X5", "X4", "X3", "X2", "X1"];
      var volkwagen = ["투아렉", "골프", "티구안", "아르테온"];



      var selectItem = $("#MANUFACTURER").val();
      var changeItem;

      if(selectItem == "현대"){
          changeItem = hyundai;
      }else if(selectItem == "제네시스"){
          changeItem = genesis;
      }else if(selectItem == "기아"){
          changeItem = kia;
      }else if(selectItem == "쉐보레"){
          changeItem = chevrolet;  
      }else if(selectItem == "르노코리아"){
          changeItem = renaultkorea;
      }else if(selectItem == "쌍용"){
          changeItem = smotor;
      }else if(selectItem == "벤츠"){
          changeItem = benz;
      }else if(selectItem == "BMW"){
          changeItem = bmw;
      }else if(selectItem == "폭스바겐"){
          changeItem = volkwagen;
      }

      $('#MODEL').empty();

      var selectedItem = $("<option selected>모델</option>");

      $('#MODEL').append(selectedItem);
      for(var count = 0; count < changeItem.length; count++){
          var option = $("<option value='"+changeItem[count]+"' >"+changeItem[count]+"</option>");
          $('#MODEL').append(option);
      }

      }

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

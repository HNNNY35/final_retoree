<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/car_detail.css" />
    <link rel="stylesheet" href="/css/test.css" />
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
    <title>차량 상세 페이지</title>
    <!-- 해야할것 : 차량 상세 페이지(찜, 차량 상세 정보, 차량 상세 이미지, 할부금 모의 계산, 딜러에게 문의하기) -->
  </head>
  <body>
    <%@ include file="../header.jsp" %>

    <!-- 차량 사진 -->
    <c:set var="fileNameFront" value="${carImgs.Front}" />
    <c:set var="fileNameSide" value="${carImgs.Side}" />
    <c:set var="fileNameInside" value="${carImgs.Inside}" />
    <c:set var="fileNameNavi" value="${carImgs.Navi}" />
    <c:set var="fileNameTire" value="${carImgs.Tire}" />
    <c:set var="fileNameTrunk" value="${carImgs.Trunk}" />
    <c:set var="path" value="${carImgs.PHYSICALFILE_NAME}" />
    <div class="container">
      <div class="img-container">
        <div class="inner-container">
          <div class="mySlides">
            <div class="numbertext">1 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameFront}"
              width="100%"
              height="600px"
            />
          </div>

          <div class="mySlides">
            <div class="numbertext">2 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameSide}"
              width="100%"
              height="600px"
            />
          </div>

          <div class="mySlides">
            <div class="numbertext">3 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameInside}"
              width="100%"
              height="600px"
            />
          </div>

          <div class="mySlides">
            <div class="numbertext">4 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameTire}"
              width="100%"
              height="600px"
            />
          </div>

          <div class="mySlides">
            <div class="numbertext">5 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameNavi}"
              width="100%"
              height="600px"
            />
          </div>

          <div class="mySlides">
            <div class="numbertext">6 / 6</div>
            <img
              class="car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameTrunk}"
              width="100%"
              height="600px"
            />
          </div>

          <a class="prev" onclick="plusSlides(-1)">❮</a>
          <a class="next" onclick="plusSlides(1)">❯</a>
        </div>

        <div class="caption-container">
          <p id="caption"></p>
        </div>

        <div class="car-row">
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameFront}"
              style="width: 30%"
              onclick="currentSlide(1)"
              alt="앞면"
            />
          </div>
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameSide}"
              style="width: 30%"
              onclick="currentSlide(2)"
              alt="옆면"
            />
          </div>
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameInside}"
              style="width: 30%"
              onclick="currentSlide(3)"
              alt="내부"
            />
          </div>
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameTire}"
              onclick="currentSlide(4)"
              style="width: 30%"
              alt="타이어"
            />
          </div>
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameNavi}"
              style="width: 30%"
              onclick="currentSlide(5)"
              alt="네비게이션"
            />
          </div>
          <div class="car-column">
            <img
              class="demo cursor car-img"
              src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameTrunk}"
              style="width: 30%"
              onclick="currentSlide(6)"
              alt="트렁크"
            />
          </div>
        </div>
      </div>
    </div>

    <!-- 차량 정보 -->

    <div class="container">
      <br /><br />

      <div class="row mb-3">
        <div class="col-6">
          <div class="card text-center" style="height: 100%;"  >
            <h3 class="card-header">차량 정보</h3>
            <div class="card-body">
              <div style="display: flex">
                <div
                  class="rounded-pill bg-secondary text-white m-2"
                  style="width: 8rem"
                >
                  차량진단 완료
                </div>
                <span
                  class="rounded-pill bg-warning text-white m-2"
                  style="width: 8rem"
                >
                  중고차 시세
                </span>
              </div>
              <h5 style="font-weight: 600">(${resultMap1.VEH_NUM}) ${resultMap1.MANUFACTURER} ${resultMap1.MODEL}</h5>
              <div class="text-muted p-2">
                <div>
                  ${resultMap1.DETAILED_MODEL}
                </div>
                <div>
                  ${resultMap1.MODEL_YEAR} | ${resultMap1.DRIVEN_DIST}km | ${resultMap1.TRANSMISSION} | ${resultMap1.CARGRADE}
                </div>
                <div> 
                  <c:choose>
                    <c:when test="${resultMap1.OPTIONS eq 'navi'}">네비게이션</c:when>
                  </c:choose>
                  <c:choose>
                    <c:when test="${resultMap1.OPTIONS eq 'sunroof'}">선루프</c:when>
                  </c:choose>
                    | ${resultMap1.ADDR_CITY}
                </div>
              </div>

                <strong class="add" id="inputList">
                  찜하기
                  <span style="display: inline-block">
                    <c:choose>
                      <c:when test="${likeCheck eq '0'}">
                        <form action="/add_wishlist" method="post">
                          <input type="hidden" name="CAR_DTL_ID" value="${resultMap1.CAR_DTL_ID}">
                          <button type="submit" class="rounded-circle bg-light border-0 p-0">
                              <i class="material-icons"
                            style="
                      width: 3rem;
                      height: 3rem;
                      display: flex;
                      justify-content: center;
                      align-items: center;
                      "
                    id="heart"
                    >favorite_border</i
                    >
                </button>
                </form>
                  </c:when>
                  <c:when test="${likeCheck eq '1'}">
                    <form action="/remove_wishlist" method="post">
                      <input type="hidden" name="CAR_DTL_ID" value="${resultMap1.CAR_DTL_ID}">
                      <button type="submit" class="rounded-circle bg-light border-0 p-0">
                        <i class="material-icons"
                      style="
                      width: 3rem;
                      height: 3rem;
                      display: flex;
                      justify-content: center;
                      align-items: center;
                      "
                    id="heartFill"
                    >favorite</i
                    >
                  </button>
                  </form>
                  </c:when>
                  <c:when test="${likeCheck eq '2'}">
                    <a href="javascript:login_need();">
                      <i class="material-icons rounded-circle bg-light"
                      style="
                  width: 3rem;
                  height: 3rem;
                  display: flex;
                  justify-content: center;
                  align-items: center;
                  "
                id="heartNotLogin"
                >favorite_border</i
                >
              </a>
                  </c:when>
                </c:choose>
              
            </span>
            
          </strong>
                <c:set var="price" value="${resultMap1.PRICE}" />
              <h4 style="font-weight: 700; margin-top: 10px">
                판매가격
                <span class="font-weight-bold text-primary"><fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />만원</span>
              </h4>
            </div>
            <!-- 모달 -->
            <div>
              <c:set var="carPrice" value="${price * 10000}" />
              <c:set var="regTax" value="${carPrice * 0.05}" />
              <c:set var="acqTax" value="${carPrice * 0.02}" />
              <c:set var="totalPrice" value="${carPrice + regTax + acqTax + 213000 + 1000 + 3000}" />
              <a
                href="#modalTarget"
                data-bs-toggle="modal"
                class="m-2 btn btn-primary"
                >할부금 계산하기</a
              >
            </div>
            <div class="modal" id="modalTarget">
              <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                  <h2 class="modal-header">할부금 계산하기</h2>
                  <div class="modal-body">
                    <h4 class="align-items-center mb-3">
                      <span class="badge bg-primary rounded-pill">총 비용 <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPrice}" /></span>
                    </h4>
                    <ul class="list-group mb-3">
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">차량 가격</h6>
                          <!-- <small class="text-muted">Brief description</small> -->
                        </div>
                        <span class="text-muted"><fmt:formatNumber type="number" maxFractionDigits="3" value="${carPrice}" />원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">등록세(5%)</h6>
                          <!-- <small class="text-muted">Brief description</small> -->
                        </div>
                        <span class="text-muted"><fmt:formatNumber type="number" maxFractionDigits="3" value="${regTax}" />원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">취득세(2%)</h6>
                          <!-- <small class="text-muted">Brief description</small> -->
                        </div>
                        <span class="text-muted"><fmt:formatNumber type="number" maxFractionDigits="3" value="${acqTax}" />원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">공채매입비</h6>
                          <!-- <small class="text-muted">Brief description</small> -->
                        </div>
                        <span class="text-muted">213,000원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">증지대</h6>
                          <!-- <small>EXAMPLECODE</small> -->
                        </div>
                        <span class="text-muted">1,000원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between lh-sm"
                      >
                        <div>
                          <h6 class="my-0">인지대</h6>
                          <!-- <small>EXAMPLECODE</small> -->
                        </div>
                        <span class="text-muted">3,000원</span>
                      </li>
                      <li
                        class="list-group-item d-flex justify-content-between bg-light"
                      >
                        <span>총 구매 예상 비용</span>
                        <strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPrice}" />원</strong>
                      </li>
                    </ul>

                    <a
                      class="btn btn-primary"
                      href="https://www.hyundaicapital.com/uscafn_new/udsuscaln/CPUCDL0101.hc?comp=IPGL000&utm_source=glovis&utm_medium=affiliate&utm_campaign=%EC%A4%91%EA%B3%A0%EC%B0%A8%EB%A1%A0&utm_term=%EC%9D%BC%EB%B0%98%EB%B0%B0%EB%84%88_211230&utm_content=PC%EB%B0%B0%EB%84%88"
                    >
                      대출 조회
                    </a>
                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">
                      close
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 딜러 정보 -->
        <div class="col-6">
          <div class="card text-center " style="height: 100%;">
            <h3 class="card-header">딜러 정보</h3>
            <div class="card-body">
              <div class="box" style="background: #bdbdbd">
                <img
                  class="profile"
                  src="${resultMap2.PROFILE_IMG}"
                />
              </div>
              <h5 style="font-weight: 600; margin-bottom: 10px">${resultMap2.NAME}</h5>
              <p class="text-muted">전화번호:${resultMap2.CELL_NUMBER}</p>
              <p class="text-muted">
                판매중 : <span class="text-danger">${resultMap3}대 </span>| 판매완료 :
                <span class="text-danger">${resultMap4}대</span>
              </p>
            </div>
            <div>
              <a
              href="#modalTarget2"
              data-bs-toggle="modal"
              class="m-2 btn btn-outline-warning"
              >방문 예약</a
            >
          </span>
          <div class="modal" id="modalTarget2">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <h2 class="modal-header">리투리카 방문예약신청</h2>
                <div class="modal-body">
                  <form action="/car_detail_reservation" method="post">
                    <input type="hidden" name="CAR_DTL_ID" value="${resultMap1.CAR_DTL_ID}">
                    <input type="hidden" name="DEALER_ID" value="${resultMap2.DEALER_ID}">
                    <!-- <input type="hidden" name="USER_ID" value="U001"> -->
                  <h5 class="bg-warning rounded-pill p-2">현재 보고계신 차량은 헛걸음보상 대상차량입니다.</h5>
                  <div>
                    <small >매매상사 방문 시 방문예약한 차량이 없거나,</small>
                  </div>
                    <small>
                      다른 차량으로 구매 유도를 할 경우  <span style="color: cornflowerblue;" > 20만원</span>을 보상해드립니다.
                    </small>
                    <h5 class="pt-4 pb-1 ">방문 일자 </h5>
                    <div  class="bg-light rounded-pill p-3">

                      <label for="reservation_day">
                        <input type="date" name="RSV_DATE" min="2023-02-08" max="2024-12-31" required>
                      </label>
                    </div>
                    <h5 class="pt-5 pb-1">방문 시기</h5>
                    <div  class="bg-light rounded-pill p-3">
                      
                      
                      <label  for="listGroupRadios2">
                        <span class="p-3">
                          <input class=" form-check-input flex-shrink-0" type="radio" name="RVS_TIME" id="listGroupRadios2" value="am" required>
                          <span>
                            오전
                          </span>
                        </label></span>
                        <label for="listGroupRadios3">
                  <span class="p-3">
                    <input class="form-check-input flex-shrink-0" type="radio" name="RVS_TIME" id="listGroupRadios3" value="pm" required>
                    <span>
                      오후
                    </span>
                  </label></span> </div>
                  <h5 class="pt-5 pb-1">방문예약 서비스 이용 안내</h5>
                  <div class="bg-light rounded-pill p-3">
                    1. 방문예약 신청 > <span>2. 판매자 예약 확정 ></span>  <span>3. 매매 상사 방문</span>
                  </div>
                </div>
                <div class="modal-footer justify-content-center">
                  <button class="btn btn-primary " type="submit">방문예약</button>
                  <button class="btn btn-secondary" data-bs-dismiss="modal">
                    취소
                  </button>
                </div>
              </form>
              </div>
            </div>
          </div>
              <span>
                <a
                  href="#modalTarget3"
                  data-bs-toggle="modal"
                  class="m-2 btn btn-outline-primary"
                  >1:1 상담 요청</a
                >
              </span>
              <div class="modal" id="modalTarget3">
                <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">
                    <h2 class="modal-header">1:1 상담</h2>
                    <div class="modal-body">
                      <form action="/car_contact" method="post">
                        <input type="hidden" name="CAR_DTL_ID" value="${resultMap1.CAR_DTL_ID}">
                        <input type="hidden" name="DEALER_ID" value="${resultMap2.DEALER_ID}">
                        <!-- <input type="hidden" name="USER_ID" value="U001"> -->

                      <div class="textarea-wrap">
                        <input type="text" name="INQ_TITLE" class="form-control" placeholder="제목" required >
                        <input type="text" name="INQ_CONTENT" class="form-control" placeholder="문의 내용을 입력하세요." style="height: 320px;" width="100%" required>

                        <!-- <textarea class="textarea-tp1" maxlength="400" name = "INQ_CONTENT" value="내용" style="height: 320px;" width="100%" required>
                        </textarea>
                        <p class="text-counter ">
                          <span>0</span>/400 byte</p>
                        </div> -->
                    </div>
                    <div class="modal-footer justify-content-center" >
                      <button type="submit" class="btn btn-primary">확인</button>
                    </form>
                      <!-- -->
                      <button class="btn btn-secondary" data-bs-dismiss="modal">
                        취소
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br />
      <br />

      <!--차량 진단서  -->

      <hr class="featurette-divider" />
      <h2 class="text-center">
        진단 평가 결과, 해당 차량은 
          <c:choose>
            <c:when test="${resultMap1.ACCIDENT_INFO eq 'none'}"><span class="text-primary">[무사고 차량]</span></c:when>
            <c:when test="${resultMap1.ACCIDENT_INFO eq 'panel_exchange'}"><span class="text-primary">[외부패널 교환 차량]</span></c:when>
            <c:when test="${resultMap1.ACCIDENT_INFO eq 'accident'}"><span class="text-primary">[사고 차량]</span></c:when>
          </c:choose>
           입니다.
      </h2>
      <hr />
      <br />
      <div class="row featurette">
        <div class="col-md-7 order-md-2">

          <div class="text-center fs-2 pb-4">외부 패널</div>
          <table class="table">
            <tbody>
              <tr>
                <th>후드</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.HOOD eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.HOOD eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                  </td>
                <th>트렁크리드</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.TRUNK_LID eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.TRUNK_LID eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>프론트휀더</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.FRONT_FENDER eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.FRONT_FENDER eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>루프패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.ROOF_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.ROOF_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>도어</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.DOOR eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.DOOR eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>쿼터패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.QUARTER_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.QUARTER_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>사이드실패널</th>
                <td colspan="3">
                  <c:choose>
                    <c:when test="${resultMap1.SIDE_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.SIDE_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-md-5 order-md-1">
          <img
            src="https://autoimg.danawa.com/photo/4188/model_360.png"
            alt=""
            width="350"
            height="250"
          />
        </div>
      </div>
      <hr class="featurette-divider" />

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="text-center fs-2 pb-4">주요 골격</h2>
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
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.FRONT_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.FRONT_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>대쉬패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.DASH_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.DASH_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>크로스맴버</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.CROSS_MEMBER eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.CROSS_MEMBER eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>플로어패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.FLOOR_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.FLOOR_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>인사이드패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.INSIDE_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.INSIDE_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>필러패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.FILER_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.FILER_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>사이드멤버</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.SIDE_MEMBER eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.SIDE_MEMBER eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>리어패널</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.REAR_PANEL eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.REAR_PANEL eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>휠하우스</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.WHEEL_HOUSE eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.WHEEL_HOUSE eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
                <th>트렁크플로어</th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap1.TRUNK_FLOOR eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.TRUNK_FLOOR eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th>패키지트레이</th>
                <td colspan="3">
                  <c:choose>
                    <c:when test="${resultMap1.PACKAGE_TRAY eq '1'}">
                      <span class="">정상</span>
                    </c:when>
                    <c:when  test="${resultMap1.PACKAGE_TRAY eq '2'}">
                    <span class="text-warning">교환</span>
                    </c:when>
                  </c:choose>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-md-5">
          <img src="/img/주요 골격.png" alt="" width="400" />
          <!-- <svg
            class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
            width="500"
            height="500"
            xmlns="../image/주요 골격.jpeg"
            role="img"
            aria-label="Placeholder: 500x500"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#eee"></rect>
            <text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
          </svg> -->
        </div>
      </div>
    </div>

    <!-- 차량 옵션부분 넣어야하나? -->
    <%@ include file="../footer.jsp" %>

    </body>

  <script src="/js/car_detail.js"></script>
  <script>
  function login_need() {
    alert('로그인하셔야 이용할 수 있는 기능입니다.');
  }
  </script>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

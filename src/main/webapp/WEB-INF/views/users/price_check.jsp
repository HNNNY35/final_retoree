<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>시세 조회</title>
    <link rel="stylesheet" href="css/price_check.css">
    <link rel="stylesheet" href="css/header.css">
    <link
    href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
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
          <!-- 본문 타이틀 -->
          <hr class="featurette-divider" />
          <h2 class="text-center">
              모델로 시세 확인하기
            </h2>
            <hr />
            <br />
            
            <div class="container">
                <div class="row mb-3">
                    
                    <!-- 좌측 검색필터 -->
                    <div class="col-3">
                        <div class="card text-center">
                            <h5 class="card-header">차량 검색</h3>
                            <div class="card-body">
                                <div class="searchSelect">
                                    <select name="manufacturer" id="manufacturer" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>제조사</option>
                                        <option value="hyundai">현대</option>
                                        <option value="genesis">제네시스</option>
                                        <option value="kia">기아</option>
                                        <option value="chevrolet">쉐보레(GM대우)</option>
                                        <option value="renaultkorea">르노코리아(삼성)</option>
                                        <option value="smotor">쌍용</option>
                                        <option value="benz">벤츠</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="model" id="model" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>모델</option>
                                        <option value="i30">i30</option>
                                        <option value="i40">i40</option>
                                        <option value="grandeur">그랜저</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="detailedModel" id="detailedModel" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>상세모델</option>
                                        <option value="GN7_22">그랜저(GN7)(22년~현재)</option>
                                        <option value="GN7_22_H">그랜저 하이브리드(GN7)(22년~현재)</option>
                                        <option value="IG_19">더 뉴 그랜저 IG(19년~현재)</option>
                                        <option value="IG_19_H">더 뉴 그랜저 IG 하이브리드(19년~현재)</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="modelYear" id="modelYear" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>연식</option>
                                        <option value="2022">2022년식</option>
                                        <option value="2021">2021년식</option>
                                        <option value="2020">2020년식</option>
                                        <option value="2019">2019년식</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="fuel" id="fuel" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>연료</option>
                                        <option value="gasoline_electricity">가솔린+전기 2400cc</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="grade" id="grade" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>등급</option>
                                        <option value="premium">프리미엄</option>
                                        <option value="premium_choice">프리미엄 초이스</option>
                                        <option value="leblanc">르블랑</option>
                                        <option value="exclusive">익스클루시브</option>
                                        <option value="calligraphy">캘리그래피</option>
                                    </select>
                                </div>

                                <div class="searchSelect">
                                    <select name="detailedGrade" id="detailedGrade" class="form-select form-select-sm" aria-label=".form-select-sm">
                                        <option selected>세부등급 없음</option>
                                    </select>
                                </div>

                                <div class="searchTitle small text-end">
                                    <span>필터 초기화</span>
                                     <a href="" class="btn">
                                        <span class="material-symbols-outlined text-primary">refresh</span>
                                     </a>
                                </div>

                                <div class="text-start">
                                    <!-- 주행거리 onchange() 이벤트로 슬라이더값 표시 추가 필요 -->
                                    <div>

                                        <div class="filterName">주행거리</div>
                                        <input type="range" name="distanceDriven" id="distanceDriven" class="form-range"
                                        data-slider-min="0" data-slider-max="200000">
                                    </div>
                                    <div>

                                        <div class="filterName">사고정보</div>
                                        <div>
                                            <button class="btn btn-light btn-sm">무사고</button>
                                            <button class="btn btn-light btn-sm">외부패널 교환</button>
                                            <button class="btn btn-light btn-sm">사고</button>
                                        </div>
                                    </div>
                                    <div class="filterName">추가옵션</div>
                                    <div>
                                        <button class="btn btn-light btn-sm">선루프</button>
                                        <button class="btn btn-light btn-sm">내비게이션</button>
                                    </div>
                                    <div class="filterName">색상</div>
                                    <div>
                                        <button class="btn btn-light btn-sm">검정색</button>
                                        <button class="btn btn-light btn-sm">검정투톤</button>
                                        <button class="btn btn-light btn-sm">은색</button>
                                        <button class="btn btn-light btn-sm">더보기</button>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <!-- 우측 검색결과 -->
                    <div class="col-9">
                        <div class="carInfo">
                            <div>
                                <h3 class="fw-bold">현대 더 뉴 그랜저 IG 하이브리드 2021년식</h3>
                                <div class="fw-bold my-3 text-danger">금주 시세
                                    <span class="h4 fw-bold">
                                        3,193 ~ 3,894
                                    </span>
                                    만원
                                    <a href="" class="btn btn-light btn-sm">신차가격표</a>
                                </div>
                                <div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">검정색</div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">무사고 기준</div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">40,000km 기준</div>
                                </div>
                            </div>
                            <div class="brandLogo">
                                <img src="http://www.encar.com/images/pr/manufact/001.png?220414" alt="">
                            </div>
                        </div>
                    
                        <hr class="featurette-divider" />
                        
                        <!-- 검색 결과 및 정렬 -->
                        <div class="searchResultTitle">
                            <span class="small">검색결과 9대</span>
                            <span>
                                <select name="alignment" id="alignment" class="form-select form-select-sm" aria-label=".form-select-sm">
                                    <option value="">최근등록일순</option>
                                    <option value="">연식순</option>
                                    <option value="">주행거리순</option>
                                    <option value="">가격순</option>
                                </select>
                            </span>
                        </div>
                        
                        <hr class="featurette-divider" />

                        <!-- 검색 결과 리스트 -->

                        <table class="priceCheckTable">
                            <tr class="border-bottom">
                                <td>
                                    <!-- 차량 이미지 -->
                                    <a href="">
                                        <img src="http://file.carisyou.com/upload/2019/11/27/FILE_201911270320073070.png" alt="" width="150px" class="m-2">
                                    </a>
                                </td>
                                <td>
                                    <div class="fw-bold">
                                        <a href="./car_detail_change.html" class="text-black">현대 더 뉴 그랜저 IG 하이브리드 르블랑</a>
                                    </div>
                                    <div class="fw-light small text-secondary">
                                        <span>2022년 02월</span>
                                        <span>14,391km</span>
                                        <span>경기</span>
                                    </div>
                                    <div>
                                        <span class="fs-5 fw-bold text-danger">
                                            2,566
                                        </span>
                                        <span class="small">만원</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="text-center my-2">
                                        <div class="small">시세대비
                                            <span class="text-primary">가격 낮음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">판매가능성
                                            <span class="text-primary">가격 낮음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">신뢰도
                                            <span class="text-primary">가격 낮음</span>
                                        </div>
                                    </div>
                                </td>
                                <!-- 시세리포트 모달 -->
                                <td>
                                    <div class="mx-3">
                                        <a href="#modalTarget1" class="btn btn-outline-danger rounded-pill fw-bold" data-bs-toggle="modal">시세 리포트</a>
                                        <div class="modal" id="modalTarget1">
                                            <div class="modal-dialog modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="modal-title fs-5 fw-bold">
                                                            시세 리포트
                                                        </div>
                                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <div class="modal-body"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr class="border-bottom">
                                <td>
                                    <!-- 차량 이미지 -->
                                    <a href="">
                                        <img src="http://file.carisyou.com/upload/2019/11/27/FILE_201911270320073070.png" alt="" width="150px" class="m-2">
                                    </a>
                                </td>
                                <td>
                                    <div class="fw-bold">
                                        <a href="./car_detail_change.html" class="text-black">현대 더 뉴 그랜저 IG 하이브리드 르블랑</a>
                                    </div>
                                    <div class="fw-light small text-secondary">
                                        <span>2022년 02월</span>
                                        <span>14,391km</span>
                                        <span>경기</span>
                                    </div>
                                    <div>
                                        <span class="fs-5 fw-bold text-danger">
                                            2,566
                                        </span>
                                        <span class="small">만원</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="text-center my-2">
                                        <div class="small">시세대비
                                            <span class="text-primary">가격 낮음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">판매가능성
                                            <span class="text-primary">높음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">신뢰도
                                            <span class="text-primary">보통</span>
                                        </div>
                                    </div>
                                </td>
                                <!-- 시세리포트 모달 -->
                                <td>
                                    <div class="mx-3">
                                        <a href="#modalTarget1" class="btn btn-outline-danger rounded-pill fw-bold" data-bs-toggle="modal">시세 리포트</a>
                                        <div class="modal" id="modalTarget1">
                                            <div class="modal-dialog modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="modal-title fs-5 fw-bold">
                                                            시세 리포트
                                                        </div>
                                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <div class="modal-body"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr class="border-bottom">
                                <td>
                                    <!-- 차량 이미지 -->
                                    <a href="">
                                        <img src="http://file.carisyou.com/upload/2019/11/27/FILE_201911270320073070.png" alt="" width="150px" class="m-2">
                                    </a>
                                </td>
                                <td>
                                    <div class="fw-bold">
                                        <a href="./car_detail_change.html" class="text-black ">현대 더 뉴 그랜저 IG 하이브리드 르블랑</a>
                                    </div>
                                    <div class="fw-light small text-secondary">
                                        <span>2022년 02월</span>
                                        <span>14,391km</span>
                                        <span>경기</span>
                                    </div>
                                    <div>
                                        <span class="fs-5 fw-bold text-danger">
                                            2,566
                                        </span>
                                        <span class="small">만원</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="text-center my-2">
                                        <div class="small">시세대비
                                            <span class="text-primary">가격 낮음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">판매가능성
                                            <span class="text-primary">높음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">신뢰도
                                            <span class="text-primary">보통</span>
                                        </div>
                                    </div>
                                </td>
                                <!-- 시세리포트 모달 -->
                                <td>
                                    <div class="mx-3">
                                        <a href="#modalTarget1" class="btn btn-outline-danger rounded-pill fw-bold" data-bs-toggle="modal">시세 리포트</a>
                                        <div class="modal" id="modalTarget1">
                                            <div class="modal-dialog modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="modal-title fs-5 fw-bold">
                                                            시세 리포트
                                                        </div>
                                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <div class="modal-body"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr class="border-bottom">
                                <td>
                                    <!-- 차량 이미지 -->
                                    <a href="">
                                        <img src="http://file.carisyou.com/upload/2019/11/27/FILE_201911270320073070.png" alt="" width="150px" class="m-2">
                                    </a>
                                </td>
                                <td>
                                    <div class="fw-bold">
                                        <a href="./car_detail_change.html" class="text-black">현대 더 뉴 그랜저 IG 하이브리드 르블랑</a>
                                    </div>
                                    <div class="fw-light small text-secondary">
                                        <span>2022년 02월</span>
                                        <span>14,391km</span>
                                        <span>경기</span>
                                    </div>
                                    <div>
                                        <span class="fs-5 fw-bold text-danger">
                                            2,566
                                        </span>
                                        <span class="small">만원</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="text-center my-2">
                                        <div class="small">시세대비
                                            <span class="text-primary">가격 낮음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">판매가능성
                                            <span class="text-primary">높음</span>
                                        </div>

                                    </div>
                                    <div class="text-center my-2">
                                        <div class="small">신뢰도
                                            <span class="text-primary">보통</span>
                                        </div>
                                    </div>
                                </td>
                                <!-- 시세리포트 모달 -->
                                <td>
                                    <div class="mx-3">
                                        <a href="#modalTarget1" class="btn btn-outline-danger rounded-pill fw-bold" data-bs-toggle="modal">시세 리포트</a>
                                        <div class="modal" id="modalTarget1">
                                            <div class="modal-dialog modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="modal-title fs-5 fw-bold">
                                                            시세 리포트
                                                        </div>
                                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <div class="modal-body"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                        </table>
                        <div class="m-3">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a href="" class="page-link" aria-label="Prev"><span aria-hidden="true">&laquo;</span></a>
                                </li>
                                <li class="page-item">
                                    <a href="" class="page-link active">1</a>
                                </li>
                                <li class="page-item">
                                    <a href="" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="" class="page-link">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                      <span aria-hidden="true">&raquo;</span>
                                    </a>
                                  </li>
                            </ul>
                        </div>
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
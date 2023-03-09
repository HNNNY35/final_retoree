<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>시세 조회</title>
        <link rel="stylesheet" href="/css/price_check.css">
        <link rel="stylesheet" href="/css/header.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
    </head>
    <body>
        <!-- 바꾼 헤더 -->
        <%@ include file="../header.jsp" %>


        <!-- 차량 사진 -->
        <c:set var="fileNameFront" value="${carImgs.Front}" />
        <c:set var="path" value="${carImgs.PHYSICALFILE_NAME}" />
        <div
            class="container">
            <!-- 본문 타이틀 -->
            <hr class="featurette-divider"/>
            <h2 class="text-center">
                모델로 시세 확인하기
            </h2>
            <hr/>
            <br/>

            <div class="container">
                <div
                    class="row mb-3">

                    <!-- 좌측 검색필터 -->
                    <div class="col-3">
                        <div class="card text-center">
                            <h5 class="card-header">차량 검색</h3>
                            <div class="card-body">
                                <form action="/price_check" method="post">
                                    <div>
                                        <button class="btn btn-gray btn-sm">검색</button>
                                    </div>
                                    <div class="searchSelect">
                                        <select name="manufacturer" id="manufacturer" class="form-select form-select-sm" aria-label=".form-select-sm" onchange="itemChange()">
                                            <option selected>제조사</option>
                                            <option value="현대">현대</option>
                                            <option value="제네시스">제네시스</option>
                                            <option value="기아">기아</option>
                                            <option value="쌍용">쌍용</option>
                                            <option value="르노삼성">르노삼성</option>
                                            <option value="벤츠">벤츠</option>
                                            <option value="BMW">BMW</option>
                                            <option value="폭스바겐">폭스바겐</option>
                                        </select>
                                    </div>

                                    <div class="searchSelect">
                                        <select name="model" id="model" class="form-select form-select-sm" aria-label=".form-select-sm">
                                            <option selected>모델</option>
                                        </select>
                                    </div>

                                    <div class="searchSelect">
                                        <select name="modelYear" id="modelYear" class="form-select form-select-sm" aria-label=".form-select-sm">
                                            <option selected>연식</option>
                                            <option value="2023">2023년식</option>
                                            <option value="2022">2022년식</option>
                                            <option value="2021">2021년식</option>
                                            <option value="2020">2020년식</option>
                                            <option value="2019">2019년식</option>
                                            <option value="2018">2018년식</option>
                                            <option value="2017">2017년식</option>
                                            <option value="2016">2016년식</option>
                                            <option value="2015">2015년식 이전</option>
                                        </select>
                                    </div>

                                    <div class="searchSelect">
                                        <select name="fuel" id="fuel" class="form-select form-select-sm" aria-label=".form-select-sm">
                                            <option selected>연료</option>
                                            <option value="가솔린">가솔린(휘발유)</option>
                                            <option value="디젤">디젤(경유)</option>
                                            <option value="하이브리드">하이브리드</option>
                                            <option value="전기">전기</option>
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

                                    <div
                                        class="text-start">
                                        <!-- 주행거리 onchange() 이벤트로 슬라이더값 표시 추가 필요 -->
                                        <div>

                                            <div class="filterName">주행거리</div>
                                            <input type="range" name="distanceDriven" id="distanceDriven" class="form-range" min="0" max="300000" step="1000" value="0" oninput="document.getElementById('value1').innerHTML=this.value;">
                                            <div class="p-1" id="value1"></div>
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
                                </form>
                            </div>
                        </div>
                    </div>


                    <!-- 우측 검색결과 -->
                    <div class="col-9">
                        <div class="carInfo">
                            <div>
                            <%-- ???? --%>
                                <h3 class="fw-bold">${manufAndModel.MANUFACTURER} ${manufAndModel.MODEL}</h3>
                                <div class="fw-bold my-3 text-danger">금주 시세
                                    <span class="h4 fw-bold">
                                        ${minMax.MIN} ~ ${minMax.MAX}
                                    </span>
                                    만원
                                    <a href="" class="btn btn-light btn-sm">신차가격표</a>
                                </div>
                                <%-- 보류 --%>
                                <%-- <div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">검정색</div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">무사고 기준</div>
                                    <div class="btn btn-secondary disabled btn-sm rounded-pill">40,000km 기준</div>
                                </div> --%>
                            </div>
                            <div class="brandLogo">
                            <%-- 브랜드 로고... 보류... --%>
                                <img src="http://www.encar.com/images/pr/manufact/001.png?220414" alt="">
                            </div>
                        </div>

                        <hr
                        class="featurette-divider"/>
 
                        <!-- 검색 결과 및 정렬 -->
                        <div class="searchResultTitle">
                        <%-- 총 컬럼 개수 --%>
                            <span class="small">검색결과 ${resultMap.size()}대</span>
                            <span>
                            <%-- 보류 --%>
                                <select name="alignment" id="alignment" class="form-select form-select-sm" aria-label=".form-select-sm">
                                    <option value="">최근등록일순</option>
                                    <option value="">연식순</option>
                                    <option value="">주행거리순</option>
                                    <option value="">가격순</option>
                                </select>
                            </span>
                        </div>

                        <hr class="featurette-divider"/>

                        <!-- 검색 결과 리스트 -->
<%-- 반복 시작 --%>
                        <c:forEach items="${resultMap}" var="resultData" varStatus="loop">

                        <table class="priceCheckTable">
                            <tr class="border-bottom">
                                <td>
                                    <!-- 차량 이미지 -->
                                    <a href="">
                                        <img src="/files/${carImgs.PHYSICALFILE_NAME}/${fileNameFront}" alt="" width="150px" class="m-2">
                                    </a>
                                </td>
                                <td>
                                    <div class="fw-bold">
                                        <a href="/car_detail_change/${resultData.CAR_DTL_ID}" class="text-black">${resultData.MANUFACTURER} ${resultData.MODEL} ${resultData.DETAILED_MODEL}</a>
                                    </div>
                                    <div class="fw-light small text-secondary">
                                        <span>${resultData.MODEL_YEAR}년</span>
                                        <span>${resultData.DRIVEN_DIST}km</span>
                                    </div>
                                    <div>
                                        <span class="fs-5 fw-bold text-danger">
                                            ${resultData.PRICE}
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
                                                    <div class="modal-body">모달 내용</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
<%-- 반복 끝 --%>
                        </table>
                        <div class="m-3">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a href="" class="page-link" aria-label="Prev">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
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
                <script>
            function itemChange(){

                var hyundai = ["아반떼", "소나타", "그랜저", "베뉴", "코나", "투싼", "싼타페", "팰리세이드", "캐스퍼"];
                var genesis = ["G70", "G80", "GV60", "GV70", "GV80", "G90"];
                var kia = ["k3","k5","k7", "k8", "k9", "스팅어", "모닝", "레이", "소울", "셀토스", "스포티지", "니로", "소렌토", "모하비", "카니발"];
                var smotor = ["티볼리", "코란도", "렉스턴", "토레스"];
                var renaultkorea =["XM3","QM6","SM3","SM5","SM7"];
                var benz = ["E-Class", "A-Class", "C-Class", "S-Class", "Mercedes-Maybach", "GLC", "CLA", "CLS", "EQS", "GLA", "GLB", "GLC", "GLE", "GLS"];
                var bmw = ["iX", "i7", "i4", "i4", "XM", "X7","X6","X5", "X4", "X3", "X2", "X1"];
                var volkwagen = ["투아렉", "골프", "티구안", "아르테온"];

 

                var selectItem = $("#manufacturer").val();
                var changeItem;

                if(selectItem == "현대"){
                    changeItem = hyundai;
                }else if(selectItem == "제네시스"){
                    changeItem = genesis;
                }else if(selectItem == "기아"){
                    changeItem = kia;
                }else if(selectItem == "쌍용"){
                    changeItem = smotor;
                }else if(selectItem == "르노삼성"){
                    changeItem = renaultkorea;
                }else if(selectItem == "벤츠"){
                    changeItem = benz;
                }else if(selectItem == "BMW"){
                    changeItem = bmw;
                }else if(selectItem == "폭스바겐"){
                    changeItem = volkwagen;
                }

                $('#model').empty();

                var selectedItem = $("<option selected>모델</option>");

                $('#model').append(selectedItem);
                for(var count = 0; count < changeItem.length; count++){
                    var option = $("<option value='"+changeItem[count]+"' >"+changeItem[count]+"</option>");
                    $('#model').append(option);
                }

            }
        </script>

        <!-- 푸터 -->
        <%@ include file="../footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>

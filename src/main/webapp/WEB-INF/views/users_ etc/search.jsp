<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Search</title>
        <link rel="stylesheet" href="./css/search.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap" rel="stylesheet"/>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    </head>
    <body>
        <%-- <script type="text/javascript" src="./js/search.js"></script> --%>
        <%@ include file="../header.jsp" %>
        <!-- header -->
        <!-- 좌측 검색필터 -->
            <main>
                <div
                class="container"> <!-- 본문 타이틀 -->
                <hr class="featurette-divider"/>
                <h2 class="text-center">
                    차량검색
                </h2>
                <hr/>
                <br/>
                <!-- </div> -->
                <!-- Filter -->
                    <div class="container"> <div class="row mb-3">
                        <div class="col-3">
                            <div class="card text-center">
                                <h5 class="card-header">차량 검색</h3>
                                <div class="card-body">
                                    <form action="/search" method="post">
                                        <div><button class="btn btn-gray btn-sm">검색</button></div>
                                        <div class="searchSelect">
                                            <select name="manufacturer" id="manufacturer" class="form-select form-select-sm" aria-label=".form-select-sm" onchange="itemChange()">
                                                <option selected>제조사</option>
                                                <option value="현대">현대</option>
                                                <option value="제네시스">제네시스</option>
                                                <option value="기아">기아</option>
                                            </select>
                                        </div>

                                        <div class="searchSelect">
                                            <select name="model" id="model" class="form-select form-select-sm" aria-label=".form-select-sm">
                                            <option selected>모델</option>
                                            </select>
                                        </div>

                                        <div class="searchSelect">
                                            <select name="detailedModel" id="detailedModel" class="form-select form-select-sm" aria-label=".form-select-sm">
                                                <option selected>상세모델</option>
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

                        <!-- Contents -->
                        <div class="col-9">
                            <span class="fs-5">
                                총
                                <span class="text-primary">
                                    ${resultMap.size()}
                                </span>
                                <span>
                                    대
                                </span>
                            </span>
                            <span class="text_right">
                                <span class="text">
                                    <a href="" class="text-decoration-none text-dark">최신 등록순</a>

                                </span>
                                <span class="text">
                                    <a href="" class="text-decoration-none text-dark">가격</a>
                                </span>
                                <span class="text">
                                    <a href="" class="text-decoration-none text-dark">주행거리</a>
                                </span>
                                <span class="text">
                                    <a href="" class="text-decoration-none text-dark">연식</a>
                                </span>
                                <span class="text">
                                    <a href="" class="text-decoration-none text-dark">가까운 순서</a>
                                </span>
                            </span>
                            <br>
                            <br>
                            <%-- 카드 시작 --%>
                            <div class="row row-cols-1 row-cols-md-3 g-4">
                                <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                                <div class="col">
                                    <div class="card h-100">
                                        <img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/cb1bf635-35e0-4bf8-bebd-060b001bf99f/live360/images/thumb/img_0_0_0_M.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <div>
                                                <a href="" class="card-text fw-normal small text-primary text-decoration-none">D-AUTO MALL 드림디오토</a>
                                            </div>
                                            <h5>
                                                <a href="/car_detail_accent_modern" class="card-title fw-bold text-dark text-decoration-none">${resultData.MUNUFACTURER} ${resultData.DETAILED_MODEL}</a>
                                            </h5>
                                            <div>
                                                <a href="" class="card-text fw-normal small text-secondary text-decoration-none">${resultData.MODEL_YEAR} | ${resultData.DRIVEN_DIST}km</a>
                                            </div>
                                            <div>
                                                <a href="" class="card-text fw-normal small text-secondary text-decoration-none">${resultData.FUEL}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function itemChange(){
                alert("Avtive itemChange");

                var hyundai = ["아반떼", "소나타", "그랜저", "베뉴", "코나", "투싼", "싼타페", "팰리세이드"];
                var genesis = ["G70", "G80", "GV60", "GV70", "GV80", "G90"];
                var kia = ["k3","k5","k7", "k8", "k9", "스팅어", "모닝", "레이", "소울", "셀토스", "스포티지", "니로", "소렌토", "모하비", "카니발"];

                var selectItem = $("#manufacturer").val();
                var changeItem;

                if(selectItem == "현대"){
                    changeItem = hyundai;
                }else if(selectItem == "제네시스"){
                    changeItem = genesis;
                }else if(selectItem == "기아"){
                    changeItem = kia;
                }

                $('#model').empty();

                var selectedItem = $("<option selected>모델</option>");

                $('#model').append(selectedItem);
                for(var count = 0; count < changeItem.length; count++){
                    var option = $("<option>"+changeItem[count]+"</option>");
                    $('#model').append(option);
                }

            }
        </script>
    </body>
</html></div></body></html></div></div></main><!-- footer --><%@ include file="../footer.jsp" %><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script></body></html>

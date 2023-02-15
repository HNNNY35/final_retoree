<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search</title>
    <link rel="stylesheet" href="/css/search.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <link
      href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="../header.jsp" %>
    <!-- header -->
    <!-- 좌측 검색필터 -->
    <main>
        <div class="container">
            <!-- 본문 타이틀 -->
            <hr class="featurette-divider" />
            <h2 class="text-center">
                차량검색
              </h2>
              <hr />
              <br />
            <!-- </div> -->
              <!-- 좌측 검색필터 -->
              <div class="container">
                  <div class="row mb-3">
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

                      <!-- 우측 검색필터 -->
                      <div class="col-9">
                        <sapn class="fs-5" >
                          총 
                       <span class="text-primary">
                        215
                       </span>
                       <span>
                         대
                       </span>
                      </sapn>
                         <span class="text_right">
                         <span class="text">
                           <a href="" class="text-decoration-none text-dark">최신 등록순</a>
                           
                          </span>
                          <span class="text"><a href="" class="text-decoration-none text-dark">가격</a></span>
                          <span class="text"><a href="" class="text-decoration-none text-dark">주행거리</a></span>
                          <span class="text"><a href="" class="text-decoration-none text-dark">연식</a></span>
                          <span class="text"><a href="" class="text-decoration-none text-dark">가까운 순서</a></span>
                        </span>
                        <br>
                        <br>  
                            <div class="row row-cols-1 row-cols-md-3 g-4">
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/cb1bf635-35e0-4bf8-bebd-060b001bf99f/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div ><a href="" class="card-text fw-normal small text-primary text-decoration-none">대전 D-AUTO MALL 드림디오토</a></div>
                                    <h5 ><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 엑센트 신형 모던 wit 1.4 VVT</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2015</a></span>
                                    <span class="small">|</span>
                                    <span ><a href="" class="card-text fw-normal small text-secondary text-decoration-none">87,196km</a></span>
                                  <span class="small">|</span>
                                  <span ><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span ><a href="" class="card-text fw-normal small text-secondary text-decoration-none">대전</a></span>
                                  
                                  <div>
                                    <span ><a href="" class="card-text text-primary text-decoration-none">750</a></span>
                                    <span ><a href="" class="card-text fw-bold text-dark text-decoration-none"></a>만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>

                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/9ef1f668-19e7-4a8a-9349-104ba195ede8/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a> 
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">휀다,트렁크교환,풀옵션차량입니다.</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 그랜저IG 프리미엄 스페셜 2.4 GDi</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2019</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">38,788km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">경기</a></span>
                                  <div>
                                   <span><a href="" class="card-text text-primary text-decoration-none">2,200</a></span>
                                   <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                  </div>
                                  <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/2503698e-c093-4284-990b-b205fcdab283/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">1인신조차량, 완전무사고 차량입니다.</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 벨로스터 N 퍼포먼스 N 퍼포먼스</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2020</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">21,257km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">대구</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">2,530</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/a4a84cc3-1595-421e-a800-41a772cb244c/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">신차급^^</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 캐스퍼 가솔린 1.0 인스퍼레이션</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2023</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">1,026km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">부산</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">1,770</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/7c1deb04-e8fa-4c40-9872-519e770eca31/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">키로수짧은 무사고 차량입니다.</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 더 뉴아반떼AD 스마트 초이스 스마트스트림 1.6 가솔린</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2020</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">8,168km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">경기</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">1,690</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/3acd949c-9e90-4655-9bf1-eddac32f1d12/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">금연차량/완전 무사고/신차급 컨디션</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 아반떼(CN7) 모던 스마트스트림 1.6 가솔린</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2021</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">22,785km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">대전</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">2,070</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/d521909c-e932-4f82-94ea-931db934cdf8/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">완전무사고,짧은키로수</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 아반떼AD 1.6 GDi 밸류 플러스</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2017</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">22,755km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">부산</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">1,370</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/c764aa3e-51b2-4604-8ab0-2c45ab1319e7/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">무사고/배기구변완료/최저가판매</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 더 뉴벨로스터 PYL DCT 감마 1.6 GDi DCT</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2015</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">77,818km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">인천</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">790</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                              <div class="col">
                                <div class="card h-100">
                                  <a href=""><img src="https://cdn.autobell.co.kr/picture/sellcar/prd/carImg/f73fb2eb-920a-4c77-baaf-2ea6333472dd/live360/images/thumb/img_0_0_0_M.jpg"  width="270px"  class="card-img-top" alt="..."></a>
                                  <div class="card-body">
                                    <div><a href="" class="card-text fw-normal small text-primary text-decoration-none">차량성능상태굿입니다.</a></div>
                                    <h5><a href="" class="card-title fw-bold text-dark text-decoration-none">현대 더 뉴아반떼AD 스마트스트림 1.6 가솔린 스마트</a></h5>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">2019</a></span>
                                    <span class="small">|</span>
                                    <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">71,858km</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">가솔린</a></span>
                                  <span class="small">|</span>
                                  <span><a href="" class="card-text fw-normal small text-secondary text-decoration-none">대전</a></span>
                                  
                                  <div>
                                    <span><a href="" class="card-text text-primary text-decoration-none">1,350만원</a></span>
                                    <span><a href="" class="card-text fw-bold text-dark text-decoration-none">만원</a></span>
                                   </div>
                                   <br>
                                   <hr>
                                   <span style="display: inline-block">
                                    <i class="material-icons rounded-circle bg-light text-primary magin" style="
                                                              width: 1rem;
                                                              height: 1rem;
                                                              display: flex;
                                                              justify-content:left;
                                                              
                                                              " id="heart">favorite_border</i>
                                </span>
                                <span class="">관심차량</span>
                                  </div>
                                </div>
                              </div>
                             
                                </div>
                              </div>
                            </div>

                            </div>
                            </div>
                  </div>
              </div>
                  
    </main>
    <!-- footer -->
      <%@ include file="../footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
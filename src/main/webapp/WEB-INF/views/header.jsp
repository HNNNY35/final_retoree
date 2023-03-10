<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/header.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>Document</title>
  </head>
  <body>
    <!-- 바꾼 헤더 -->

    <header class="p-3 mb-3 border-bottom">
      <div class="container marketing">
        <div
          class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
        >
          <a
            href="./main_search"
            class="navbar-brand d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none"
          >
            <!-- <h1 class="img-responsive">리투리 로고</h1> -->
            <img
              src="/img/RETOREE_crop.png"
              alt="Brand"
              class="img-responsive"
              height="60rem"
            />
          </a>

          <ul
            class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"
          >
            <li>
              <a
                href="../main_search"
                class="fs-5 nav-link px-2 link-dark"
                <img
                src="/img/RETOREE_crop.png"
                alt="Brand"
                class="img-responsive"
                height="60rem"
              ></a>
            </li>

            <li>
              <a href="../main_search" class="fs-5 nav-link px-2 link-dark"
                >HOME</a
              >
            </li>
            <li>
              <a href="../search" class="fs-5 nav-link ps-5 link-dark"
                >검색
              </a>
            </li>
            <li>
              <a href="../price_check" class="fs-5 nav-link ps-5 link-dark"
                >시세</a
              >
            </li>
            <li>
              <a href="../event" class="fs-5 nav-link ps-5 link-dark"
                >이벤트</a
              >
            </li>
            <li>
              <a href="../cs_main" class="fs-5 nav-link ps-5 link-dark"
                >고객센터</a
              >
            </li>
           <a href="../notice" class="fs-5 nav-link ps-5 link-dark"
                >공지사항</a
              >
            </li>
          </ul>

          <div class="dropdown text-end">
            <a
              href="#"
              class="d-block link-dark text-decoration-none dropdown-toggle"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              <img
                src="https://us.123rf.com/450wm/tuktukdesign/tuktukdesign1705/tuktukdesign170500020/77461809-%EC%82%AC%EC%9A%A9%EC%9E%90-%EC%95%84%EC%9D%B4%EC%BD%98-%EB%B2%A1%ED%84%B0-%EB%82%A8%EC%9E%90-%EC%82%AC%EB%9E%8C-%ED%94%84%EB%A1%9C%ED%95%84-%EC%95%84%EB%B0%94%ED%83%80-%EA%B8%80%EB%A6%AC%ED%94%84-%ED%94%BD%ED%86%A0%EA%B7%B8%EB%9E%A8-%EC%8B%AC%EB%B3%BC-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4%EC%85%98.jpg?ver=6"
                alt="mdo"
                width="32"
                height="32"
                class="rounded-circle"
              />
            </a>
            <sec:authorize access="isAnonymous()">
            <ul class="dropdown-menu text-small">
              
              <li><a class="dropdown-item" href="/loginform">로그인</a></li>
              <li><a class="dropdown-item" href="/registeragree">회원가입</a></li>
            </ul>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_USER')">
            <ul class="dropdown-menu text-small">
              <li>
                <a class="dropdown-item" href="/myPage">마이페이지</a>
              </li>
             
              <li><a class="dropdown-item" href="../myPageVisitReserve">방문예약 확인</a></li>
              <li><a class="dropdown-item" href="../wishListCar">찜 차량</a></li>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="/logoutform">로그아웃</a></li>
            </ul>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_DEALER')">
            <ul class="dropdown-menu text-small">
              <li>
                <a class="dropdown-item" href="/dealer/mypage">마이페이지</a>
              </li>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="/logoutform">로그아웃</a></li>
            </ul>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <ul class="dropdown-menu text-small">
              <li>
                <a class="dropdown-item" href="/listPagination/1">회원관리</a>
              </li>
             
              <li><a class="dropdown-item" href="/notice">공지사항관리</a></li>
              <%-- <li><a class="dropdown-item" href="../cs_main">문의게시판관리</a></li>
              <li><a class="dropdown-item" href="../event">이벤트관리</a></li> --%>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="/logoutform">로그아웃</a></li>
            </ul>
            </sec:authorize>
            
          </div>
        </div>
      </div>
    </header>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

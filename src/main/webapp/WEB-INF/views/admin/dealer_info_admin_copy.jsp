<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <title>user_info_admin</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS v5.2.1 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/login.css" />
    <link rel="stylesheet" href="/css/price_check_header.css" />
  </head>

  <body>
    <%@ include file="../header.jsp" %>

    <div class="container">
      <div class="row mb-3">
        <!-- 좌측 관리자페이지 메뉴 -->
        <div class="col-3">
          <div class="card cardmt">
            <div class="card-header text-center">
              <a href="" class="h5 text-black">관리자페이지</a>
            </div>
            <div class="card-body">
              <div class="myPageMenu">
                <ul>
                  <li>
                    <a href="" class="fs-5">회원관리</a>
                    <ul>
                      <li>
                        <a href="./dealer_info_admin.html">딜러회원관리</a>
                      </li>
                      <li><a href="./user_info_admin.html">일반회원관리</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="" class="fs-5">이벤트관리</a>
                  </li>
                  <li>
                    <a href="" class="fs-5">문의게시판관리</a>
                  </li>
                  <li>
                    <a href="" class="fs-5">공지사항관리</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- 우측 회원관리 -->
        <div class="col-9">
          <div>
            <div class="container tablemargin">
              <h1 class="text-center fw-bold title">일반회원관리페이지</h1>
              <br />
              <br />
              <table
                class="table table-bordered border-primary border-opacity-25"
              >
                <thead>
                  <tr>
                    <th scope="col" class="table-primary text-center">이름</th>
                    <th scope="col" class="table-primary text-center">
                      아이디
                    </th>
                    <th scope="col" class="table-primary text-center">생일</th>
                    <th scope="col" class="table-primary text-center">
                      전화번호
                    </th>
                    <th scope="col" class="table-primary text-center">
                      메일아이디
                    </th>
                    <th scope="col" class="table-primary text-center">
                      거주지
                    </th>
                    <th scope="col" class="table-primary text-center">
                      시구군
                    </th>
                    <th scope="col" class="table-primary text-center">관리</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">
                      <div class="justify-content-center d-flex">
                        <div>
                          <form
                            action="/edit/${resultData.USERS_UID}"
                            method="post"
                          >
                            <button
                              type="submit"
                              class="btn btn-sm btn-outline-primary"
                            >
                              수정
                            </button>
                          </form>
                        </div>
                        <div>
                          <form
                            action="/delete/${resultData.USERS_UID}"
                            method="post"
                            class="ps-2"
                          >
                            <button
                              type="submit"
                              class="btn btn btn-sm btn-outline-danger"
                            >
                              삭제
                            </button>
                          </form>
                        </div>
                      </div>
                    </th>
                  </tr>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">
                      <div class="justify-content-center d-flex">
                        <div>
                          <form
                            action="/edit/${resultData.USERS_UID}"
                            method="post"
                          >
                            <button
                              type="submit"
                              class="btn btn-sm btn-outline-primary"
                            >
                              수정
                            </button>
                          </form>
                        </div>
                        <div>
                          <form
                            action="/delete/${resultData.USERS_UID}"
                            method="post"
                            class="ps-2"
                          >
                            <button
                              type="submit"
                              class="btn btn btn-sm btn-outline-danger"
                            >
                              삭제
                            </button>
                          </form>
                        </div>
                      </div>
                    </th>
                  </tr>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">
                      <div class="justify-content-center d-flex">
                        <div>
                          <form
                            action="/edit/${resultData.USERS_UID}"
                            method="post"
                          >
                            <button
                              type="submit"
                              class="btn btn-sm btn-outline-primary"
                            >
                              수정
                            </button>
                          </form>
                        </div>
                        <div>
                          <form
                            action="/delete/${resultData.USERS_UID}"
                            method="post"
                            class="ps-2"
                          >
                            <button
                              type="submit"
                              class="btn btn btn-sm btn-outline-danger"
                            >
                              삭제
                            </button>
                          </form>
                        </div>
                      </div>
                    </th>
                  </tr>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Handle</th>
                    <th scope="col">
                      <div class="justify-content-center d-flex">
                        <div>
                          <form
                            action="/edit/${resultData.USERS_UID}"
                            method="post"
                          >
                            <button
                              type="submit"
                              class="btn btn-sm btn-outline-primary"
                            >
                              수정
                            </button>
                          </form>
                        </div>
                        <div>
                          <form
                            action="/delete/${resultData.USERS_UID}"
                            method="post"
                            class="ps-2"
                          >
                            <button
                              type="submit"
                              class="btn btn btn-sm btn-outline-danger"
                            >
                              삭제
                            </button>
                          </form>
                        </div>
                      </div>
                    </th>
                  </tr>
                </tbody>
              </table>
              <div class="text-center m-3">
                <form action="./user_info_admin_edit.html" method="get">
                  <button class="btn btn-sl btn-outline-secondary">
                    회원추가
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <!-- Bootstrap JavaScript Libraries -->
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
      integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
      crossorigin="anonymous"
    ></script>
  </body>
</html> --%>

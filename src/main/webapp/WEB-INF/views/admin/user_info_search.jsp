<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="/css/users_info_admin.css" />
    
  </head>

  <body>
    <%@ include file="../header.jsp" %>      
            <div class="container">
          <h1 class="text-center fw-bold title">회원관리페이지</h1>
             <!-- 검색창 -->
             <br>
          <br>  
         <div>
            <form action = "/admin/listSearch/" method ="get">
                    <div class="d-flex flex-row mt-5">
                    <select class="form-select w-25 mx-2 border-primary" name="searchType" id="">
                          <option value="SELECT">선택</option>
                          <option value="NAME" ${keyType == 'NAME' ? 'selected' : ''}>이름</option>
                          <option value="ID" ${keyType == 'ID' ? 'selected' : ''}>아이디</option>
                          <option value="BIRTHDAY" ${keyType == 'BIRTHDAY' ? 'selected' : ''}>생일</option>
                          <option value="CELL_NUMBER" ${keyType == 'CELL_NUMBER' ? 'selected' : ''}>전화번호</option>
                      </select>
                        <input type="text" class="form-control w-25 mx-2 border-primary"  name="SERCH_KEYWORD" value="${searchUser}">
                        <button type="submit" id="searchBtn" class="btn btn-outline-primary mx-2">검색</button>
                    </div>
                  </form>
                   <div>
            <%-- <form action = "/admin/listSearch/" method ="get">
                    <div class="d-flex flex-row mt-5">
                        <select class="form-select w-25 mx-2 border-primary" name="searchType" id="">
                            <option value="SELECT">선택</option>
                            <option value="NAME">이름</option>
                            <option value="ID">아이디</option>
                            <option value="BIRTHDAY">생일</option>
                            <option value="CELL_NUMBER">전화번호</option>
                        </select>
                        <input type="text" class="form-control w-25 mx-2 border-primary"  name="searchKeyword" >
                        <button type="submit" id="searchBtn" class="btn btn-outline-primary mx-2">검색</button>
                    </div>
                  </form>
                   <div> --%>
          <br>
          <br>  
          <table class="table table-bordered border-primary border-opacity-25"width="100">
              <thead>
                <tr>
                  <th scope="col" class="table-primary text-center">이름</th>
                  <th scope="col" class="table-primary text-center">아이디</th>
                  <th scope="col" class="table-primary text-center">생일</th>
                  <th scope="col" class="table-primary text-center">전화번호</th>
                  <th scope="col" class="table-primary text-center">메일아이디</th>
                  <th scope="col" class="table-primary text-center">권한</th>
                  <th scope="col" class="table-primary text-center">거주지</th>
                  <th scope="col" class="table-primary text-center">상세주소</th>
                  <th scope="col" class="table-primary text-center">관리</th>
                </tr>
              </thead>
              <tbody>
                    <c:forEach items="${resultMap.resultList}" var="resultMap" varStatus="loop">
                        <tr>
                          <td scope="col">${resultMap.NAME}</td>
                          <td scope="col">${resultMap.ID}</td>
                          <td scope="col">${resultMap.BIRTHDAY}</td>
                          <td scope="col">${resultMap.CELL_NUMBER}</td>
                          <td scope="col">${resultMap.EMAIL}</td>
                          <td scope="col">${resultMap.AUTH}</td>
                          <td scope="col">${resultMap.ADDR_CITY}</td>
                          <td scope="col">${resultMap.ADDR_DISTRICT}</td>
                          <%-- <input
                                    type="hidden"
                                    class="form-control"
                                    name="DEALER_ID"
                                    id="DEALER_ID"
                                    value="${resultData.DEALER_ID}"
                                    required
                                    /> --%>
                                    <%-- <input
                                    type="text"
                                    class="form-control"
                                    name="AUTH"
                                    id="auth"
                                    value="${resultData.AUTH}"
                                    required
                                    /> --%>
                 <th scope="col"> 
                 <div class="justify-content-center d-flex">
                    <div>
                     <form action="/useredit/${resultMap.USER_ID}" method="POST">
                           <button type="submit" class="btn btn-sm btn-outline-primary">
                               수정
                            </button>
                        </form>
                    </div>
                 <div>
                    <form action="/userdelete/${resultMap.USER_ID}" method="post" class="ps-2">
                       <button type="submit" class="btn btn btn-sm btn-outline-danger">
                             삭제
                          </button>
                           </form>
                              </div>
                              </div>
                            </tr>
                        </c:forEach>
                          </tbody>
                        </table>
                        <%-- {resultMap.paginations.totalCount} --%>
                          <c:set var="_paginations" value="${resultMap.paginations}" />
                                <%-- ${_paginations}     --%>
                                <span>총갯수: ${_paginations.totalCount} </span>
                                <div class="pagination">
                                <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                  <li class="page-item">
                                    <a class="page-link" href="/admin/listPagination/${_paginations.previousPage}" aria-label="Previous">
                                      <span aria-hidden="true">&laquo;</span>
                                      <span class="sr-only">Pre</span>
                                    </a>
                                  </li>
                                  <%-- for(int i = 0; i > 9; i++){} = blockScale = 5; --%>
                                 <c:forEach var="i" begin="${_paginations.blockStart}" end="${_paginations.blockEnd}">
                                        <li class="page-item">
                                          <a class="page-link" href="/admin/listPagination/${i}">${i}</a>
                                        </li>
                                      </c:forEach>
                                  <li class="page-item">
                                    <a class="page-link" href="/admin/listPagination/${_paginations.nextPage}" aria-label="Next">
                                      <span class="sr-only">Next</span>
                                      <span aria-hidden="true">&raquo;</span>
                                    </a>
                                  </li>
                                </ul>
                             </a>
                          </li>
                        </ul>
                      </nav>
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
        </html>
        
                  

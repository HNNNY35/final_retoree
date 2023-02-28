<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>딜러 정보수정</title>
        <link rel="stylesheet" href="/css/header.css"/>
        <link rel="stylesheet" href="/css/dealer_info_modify.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    </head>
    <body>
        <!-- 바꾼 헤더 -->
        <%@ include file="../header.jsp" %>
        <div class="container">
            <div
                class="row mb-3">
                <!-- 좌측 마이페이지 메뉴 -->
                <div class="col-3">
                    <div class="card">
                        <div class="card-header text-center">
                            <a href="" class="h5 text-black">마이페이지</a>
                        </div>
                        <div class="card-body">
                            <div class="myPageMenu">
                                <ul>
                                    <li>
                                        <a href="">딜러 정보 수정</a>
                                    </li>
                                    <li>
                                        <a href="">차량관리</a>
                                        <ul>
                                            <li><a href="">차량 신규 등록</a></li>
                                            <li><a href="">판매관리</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="">고객관리</a>
                                    </li>
                                    <li>
                                        <a href="">매출내역</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 우측 정보 수정 부분 -->
                <div class="col-9">
                    <h3>딜러 정보 수정</h3>
                    <hr>

                    <form action="/dealer/modify" method="post">


                        <table class="modify_form">
                            <tbody>
                                <tr>
                                    <th>
                                        <h6 class="fw-bold">프로필 이미지</h6>
                                    </th>
                                    <td>
                                        <img src="/img/profile.jpg" alt="" class="profileImg"/>
                                        <div class="input-group mb-3 profileImgUpload">
                                            <input type="file" class="form-control" id="profileImg">
                                            <label class="input-group-text" for="profileImgUpload">Upload</label>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">이름
                            </h6>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="name" id="name" value="${user.NAME}" disabled readonly/>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                사업자 등록번호
                            </h6>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="brNumber" id="brNumber" value="${user.BR_NUMBER}" disabled readonly/>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                아이디
                            </h6>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="userId" id="userId" value="${user.ID}" disabled readonly/>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                비밀번호
                            </h6>
                        </th>
                        <td>
                            <input type="password" class="form-control" name="PASSWORD" id="password" required/>
                            <label for="userPw" class="small">영문 대/소문자, 숫자 사용 가능하며, 8~16자까지
                                                                                                                                                                                                                        가능합니다.</label>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                비밀번호 확인
                            </h6>
                        </th>
                        <td>
                            <input type="password" class="form-control" name="PASSWORDCONFIRM" id="passwordConfirm" required/>
                            <label for="text" id="passwordCheckResult" class="small"></label>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                휴대전화번호
                            </h6>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="CELL_NUMBER" id="CELL_NUMBER" required value="${user.CELL_NUMBER}"/>
                            <br/>
                        </td>
                    </tr>

                    <tr>
                        <th>
                            <h6 class="fw-bold">
                                이메일
                            </h6>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="EMAIL" id="EMAIL" value="${user.EMAIL}" required/>
                            <br/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <h6 class="fw-bold">거주지</h6>
                        </th>
                        <td>
                        <h6 class="">${user.ADDR_CITY} ${user.ADDR_DISTRICT}</h6>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="d-flex">
                            <select class="form-select" name="ADDR_CITY" id="addressCity">
                                <option value="${user.ADDR_CITY}" selected>시도</option>
                                <option value="seoul">서울특별시</option>
                                <option value="gyeonggido">경기도</option>
                                <option value="gangwondo">강원도</option>
                                <option value="gyeongsangbukdo">경상북도</option>
                            </select>

                            <select class="form-select" name="ADDR_DISTRICT" id="addressDistrict">
                                <option value="${user.ADDR_DISTRICT}">시군구</option>
                            </select>
                            <br/>
                            <input type="hidden" name="USER_ID" value="${user.DEALER_ID}">
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="text-center m-5">
                <button type="submit" class="submitBtn">수정</button>
            </div>
        </form>

        <script type="text/javascript">
   // 비밀번호체크
    $(document).ready(function() {
      $("#password, #passwordConfirm").on("keyup", function () {
        var password = $("#password").val();
        var passwordConfirm = $("#passwordConfirm").val();

        if (password != "" && passwordConfirm != "") {
          if (password != passwordConfirm) {
            $("#passwordCheckResult").html("비밀번호가 일치하지 않습니다.").css("color", "red");;
          } else {
            $("#passwordCheckResult").html("비밀번호가 일치합니다.").css("color", "black");
          }
        } else {
          $("#passwordCheckResult").html("");
        }
      });
    });
  
  </script>
    </body>
</html></div></div></div><!-- 푸터 --><%@ include file="../footer.jsp" %><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script></body></html>

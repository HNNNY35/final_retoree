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
                    <form action="/car_reg_submit" method="post" enctype="multipart/form-data" onsubmit="return checkImgType();">
                      <input type="hidden" name="CAR_ID" value="${CAR_ID}">
                      <table class="table">
                        <tbody>
                          <tr>
                            <th><h4>차량 이미지</h4></th>
                            <td></td>
                          </tr>
                          <tr>
                            <th>앞면</th>
                            <td>
                              <input type="file" name="imgFront" id="imgFront" class="form-control" required>
                            </td>
                          </tr>
                          <tr>
                            <th>옆면</th>
                            <td>
                              <input type="file" name="imgSide" id="imgSide" class="form-control" required>
                            </td>
                          </tr>
                          <tr>
                            <th>내부</th>
                            <td>
                              <input type="file" name="imgInside" id="imgInside" class="form-control" required>
                            </td>
                          </tr>
                          <tr>
                            <th>타이어</th>
                            <td>
                              <input type="file" name="imgTire" id="imgTire" class="form-control" required>
                            </td>
                          </tr>
                          <tr>
                            <th>네비게이션</th>
                            <td>
                              <input type="file" name="imgNavi" id="imgNavi" class="form-control" required>
                            </td>
                          </tr>
                          <tr>
                            <th>트렁크</th>
                            <td>
                              <input type="file" name="imgTrunk" id="imgTrunk" class="form-control" required>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="text-center">
                        <button type="submit" class="submitBtn">입력 완료</button>
                      </div>
                    </form>

        
                  </div>
      </div>
    </div>

    <%@ include file="../footer.jsp" %>
    <!-- <script>
      function checkImgType(){
        var imgs = [$('#imgFront'), $('#imgSide'), $('#imgInside'), $('#imgTire'), $('#imgNavi'), $('#imgTrunk')]
        for(var count = 0; count < imgs.length; couont++) {
          var fileVal = imgs(count).val();
          var idx = fileVal.lastIndexOf(".")+1;
          var type = fileVal.substring(idx).toUpperCase();
          if(type == "PNG" || type == "JPG" || type == "JPEG" || type == "GIF"){
          } else {
            alert("이미지파일(PNG, JPG, JPEG, GIF)만 업로드 가능합니다.");
            return false;
            }
          }
          return true;
        }
    </script> -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>dealer_info_admin_edit</title>
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

      <form action="/" method="post"> 
      <div><h1 class="text-center fw-bold mt-5 mb-3">딜러회원관리등록</h1></div>
      <div class="boxcolor">
          
            <label for="name">이름</label>
            <input type="text" id="name" name="name"><br>
      
            <label for="id">아이디</label>
            <input type="text" id="id" name="id"><br>
      
            <label for="birthday">생일</label>
            <input type="text" id="birthday" name="birthday"><br>
      
            <label for="phone">전화번호</label>
            <input type="text" id="phone" name="phone"><br>
      
            <label for="email">메일</label>
            <input type="text" id="email" name="email"><br>
      
            <label for="residence">거주지</label>

        <table>
          <tr>
            <td>
              <select class="address  ps-5" name="ADDR_CITY" id="addressCity">
                <option value="city" selected>시도</option>
              <option value="서울특별시">서울특별시</option>
              <option value="경기도">경기도</option>
              <option value="경기도">인천</option>
              <option value="경상도">경상도</option>
              <option value="전라도">전라도</option>
              <option value="충청도">충청도</option>
              <option value="강원도">강원도</option>
              </select>
            </td>
            <td>
              <select class="address ps-5" name="ADDR_DISTRICT" id="addressDistrict">
                <option value="city​county">시구군</option>
            <optgroup label="서울">서울
            <option value="강남구">강남구</option>
            <option value="용산구">용산구</option>
            <option value="서초구">서초구</option>
            <option value="송파구">송파구</option>
            <option value="중구">중구</option>
            <option value="강북구">강북구</option>
            <option value="강서구">강서구</option>
            <option value="강동구">강동구</option>
            <option value="동작구">동작구</option>
            <option value="영등포구">영등포구</option>
            <option value="마포구">마포구</option>
          </optgroup>
            <optgroup label="경기도">경기도
            <option value="하남시">하남시</option>
            <option value="부천시">부천시</option>
            <option value="김포시">김포시</option>
            <option value="구리시">구리시</option>
            <option value="포천시">포천시</option>
            <option value="고양시">고양시</option>
            <option value="평택시">평택시</option>
            <option value="화성시">화성시</option>
          </optgroup>
            <optgroup label="인천">인천
            <option value="계양구">계양구</option>
            <option value="부평구">부평구</option>
            <option value="남동구">남동구</option>
            <option value="연수구">연수구</option>
            <option value="중구">중구</option>
            <option value="동구">동구</option>
            <option value="서구">서구</option>
            <option value="미추홀구">미추홀구</option>
          </optgroup>
            <optgroup label="경상도">경상도
            <option value="울산광역시">울산광역시</option>
            <option value="부산광역시">부산광역시</option>
            <option value="대구광역시">대구광역시</option>
            <option value="창원시">창원시</option>
            <option value="김해시">김해시</option>
            <option value="거제시">거제시</option>
            <option value="경주시">경주시</option>
            <option value="안동시">안동시</option>
          </optgroup>
            <optgroup label="전라도">전라도
            <option value="광주광역시">광주광역시</option>
            <option value="목포시">목포시</option>
            <option value="나주시">나주시</option>
            <option value="순천시">순천시</option>
            <option value="전주시">전주시</option>
            <option value="군산시">군산시</option>
            <option value="익산시">익산시</option>
            <option value="김제시">김제시</option>
            <option value="남원시">남원시</option>
          </optgroup>
            <optgroup label="충청도">충청도
            <option value="대전광역시">대전광역시</option>
            <option value="청주시">청주시</option>
            <option value="충주시">충주시</option>
            <option value="천안시">천안시</option>
            <option value="공주시">공주시</option>
            <option value="논산시">논산시</option>
            <option value="보령시">보령시</option>
            <option value="아산시">아산시</option>
          </optgroup>
            <optgroup label="강원도">강원도
            <option value="강릉시">강릉시</option>
            <option value="속초시">속초시</option>
            <option value="원주시">원주시</option>
            <option value="춘천시">춘천시</option>
            <option value="정선군">정선군</option>
            <option value="횡성군">횡성군</option>
            <option value="평창군">평창군</option>
            <option value="철원군">철원군</option>
          </optgroup>
              </select>
            </td>
          </tr>
        </table>
 
   
       
        <!-- 전체 폼 -->
      </div>
       </form>
       <br>
        
       <div class="text-center">
       <form action="dealer_info_admin.html" method="get">
         <button type="submit" class=" btn btn-lg btn-outline-primary mb-5">
           등록
         </button>
        </form>
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
 
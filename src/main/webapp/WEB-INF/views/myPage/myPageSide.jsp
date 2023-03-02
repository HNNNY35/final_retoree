<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/car_detail.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/mypage.css" />
    </head>
    
    <div class="side temp-box border" style="height: 350px">
    <ul>
      <li>
        <h4 class="mt-3"><a href="./myPage?user_id=U001" style="color: black;" class="text-decoration-none" >마이페이지</a> </h4>
      </li>
      <li>
        <a href="./wishListCar?user_id=U001" class="text-decoration-none">찜 차량</a>
      </li>
      <li>
        <a href="./myPageVisitReserve?user_id=U001" class="text-decoration-none">방문 예약</a>
      </li>
      <li>
        <a href="./contact?user_id=U001" class="text-decoration-none">1:1 문의 내역</a>
      </li>
    </ul>
    <ul >
      <li>
        <h5 >회원정보</h5>
        
         
          <!-- 세션 -- -->
          
            <li>
              <a href="/myPage_modify?user_id=U001" class="text-decoration-none">회원정보수정</a>
            
            <li>
              <a href="/withdraw" class="text-decoration-none">회원 탈퇴</a>
            </li>
          </li>
        
      </li>
    </ul>
  </div>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <title>Document</title>
  </head>
  <body>
    <div class="col-3">
                    <div class="card">
                        <div class="card-header text-center">
                            <a href="" class="h5 text-black">마이페이지</a>
                        </div>
                        <div class="card-body">
                            <div class="myPageMenu">
                                <ul>
                                    <li>
                                        <a href="/dealer/modify/${user.DEALER_ID}">딜러 정보 수정</a>
                                    </li>
                                    <li>
                                        <a href="/dealer_sales_mgmt">차량관리</a>
                                        <ul>
                                            <li><a href="/car_reg">차량 신규 등록</a></li>
                                            <li><a href="/dealer_sales_mgmt">판매관리</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="/dealer_customer_mgmt">고객관리</a>
                                    </li>
                                    <li>
                                        <a href="/dealer_sales">매출내역</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
  </body>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
  ></script>
</html>

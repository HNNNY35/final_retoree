<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/cs.css">
        

</head>

<body>
  <%@ include file="../header.jsp" %>
    <main>
    <div class="container">

        <h3>자주하는 질문</h3>
        <input type="text" class="cs_input" placeholder="궁금한 점이 있다면 무엇이든 찾아보세요" aria-label="Username" aria-describedby="basic-addon1">

        <!-- 사이드바 -->
    <div class="d-flex container">
        <div class="">
            <ul class="wid cs_ul">
                <li class="cs_li"><a href="./cs_FNA_page01" class="cs_a">내차사기</a></li>
                <li class="cs_li"><a href="#" class="cs_a">내차팔기</a></li>
                <li class="cs_li"> <a href="#" class="cs_a">기타</a></li>
            </ul>
            
        </div>
        
        <!-- contents -->
            <div class="contents container">
                <div><h3>내차사기</h3></div>
                <ul class="cs_ul">
                    <li class="cs_li"><p><a class="btn" data-bs-toggle="collapse" href="#q1" role="button" aria-expanded="false">내차사기 홈서비스 결제는 어떻게 하나요?</a>
                        <div class="collapse" id="q1">
                            <div class="card card-body">
                                내차사기 홈서비스 결제는 현금, 카드, K Car 할부 등 총 3가지 방식으로 할 수 있습니다.

                                ■ 현금
                                
                                - 가상계좌에 입금하여 결제할 수 있습니다.
                                
                                - 현금 결제 시 입금금액과 가상계좌번호를 알려 드립니다. 금액 확인 후 입금해 주세요.
                                
                                - 현금 결제 시 현금영수증을 받을 수 있습니다. 
                                
                                
                                
                                ■ 카드
                                
                                - 신용카드 결제는 삼성카드로만 할 수 있습니다.
                                
                                - 이전등록비를 제외한 모든 비용을 카드로 결제할 수 있습니다.
                                
                                - 카드 관련 사항은 삼성카드 자동차금융 상담센터(1688-3001) 또는 삼성카드 다이렉트오토 홈페이지로 문의해 주세요.
                                
                                
                                
                                ■ K Car 할부
                                
                                - 365일 24시간 대출한도 조회 후 K Car 할부를 이용할 수 있습니다.
                                
                                - K Car 할부는 신용점수에 따라 최대 1억원을 최장 72개월까지 분할 상환할 수 있는 금융 상품입니다. 부담 없이 상담받아 보세요.
                                
                                - 일부 조건에 따라 K Car 할부 이용이 제한될 수 있습니다.(예: 만 25세 이하 병역미필자, 무소득자, 외국인, 공동명의 등)
                                
                                - 차량 환불로 대출을 취소하는 경우에는 중도상환수수료가 면제됩니다.
                            </div>
                        </p>
                    </li>
                    <li class="cs_li"><p><a class="btn" data-bs-toggle="collapse" href="#q2" role="button" aria-expanded="false">내차사기 홈서비스로 주문하면 어디든지 배송되나요?</a>
                        <div class="collapse" id="q2">
                            <div class="card card-body">
                                네, 전국 어디서나 배송 받을 수 있습니다. 단, 섬 지역, 산간 지역은 도선료가 추가되거나 배송 시기가 늦어질 수 있습니다. 
                                또한, 전기차를 구매하신 경우 출발지, 배송지, 차종에 따라 고객님과 배송 과정을 일부 협의해야 합니다. 자세한 내용은 K Car 고객센터(1588-5455), 
                                내차사기 홈서비스(서비스번호 1번)로 문의해 주세요.
                            </div>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
    <div class="container-fluid">
   
</div>
</div>
</main>
<%@ include file="../footer.jsp" %>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
</script>
</body>

</html>
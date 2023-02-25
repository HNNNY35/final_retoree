<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Notice_page</title>
        <link rel="stylesheet" href="/css/header.css"/>
        <link rel="stylesheet" href="/css/notice_page.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap" rel="stylesheet"/>
    </head>
    <body>
        <%@ include file="../header.jsp" %>
        <div class="container">
            <div class="fs-1 text-center mt-5 fw-bold">공지사항</div>
            <div class="mt-5 fs-5 fw-bold">
                <span><h2 style="display:inline">${notice.NOTICE_TITLE}</h3></span>
                <span class="text-muted">${notice.NOTICE_DATE}</span>
            </div>

            <hr/> 

            <div>
                <div style="white-space:pre;"><c:out value="${notice.NOTICE_CONTENT}" /></div>
            </div>
            <div>
                <div class="text-center">
                    <a href="/notice" class="btn btn-dark mt-5">목록</a>
                    <a href="/notice_modify/${notice.NOTICE_NO}" class="btn btn-dark mt-5">수정</a>
                    <a href="/notice_delete/${notice.NOTICE_NO}" class="btn btn-dark mt-5">삭제</a>
                </div>
            </div>
        </div>

        <%@ include file="../footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>

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
        <title>Notice</title>
        <link rel="stylesheet" href="../css/header.css"/>
        <link rel="stylesheet" href="../css/notice_edit.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap" rel="stylesheet"/>
    </head>
    <body><%@ include file="../header.jsp" %>
    </body>
    <body>
        <div class="container">
            <main class=" p-0 mb-5 ms-5">
                <form action="/notice_modify" method="POST">

                    <div class="mt-2">
                        <div class="notice_edit">
                            <label for="" class="form-label fs-5 fw-bold">공지사항 작성</label>
                        </div>
                        <hr>

                        <table class="table border  border-radius text-center align-middle ">
                            <thead class="">
                                <tr scope="">
                                    <th scope="" class="bg-primary bg-opacity-25">제목</th>
                                    <td colspan="3">
                                        <input type="text" name="NOTICE_TITLE" id="" class="form-control" value="${notice.NOTICE_CONTENT}"/>
                                    </td>
                                </tr>
                                <%-- Controller에서 오늘 날짜로 처리  --%>
                                <tr scope="">
                                    <th scope="row" class="bg-primary bg-opacity-25">등록일</th>
                                    <td colspan="3">
                                        <input class="form-check-input" type="checkbox" name="NOTICE_TOP" value="YES">
                                        공지사항 등록
                                    </td>
                                </tr>
                            </thead> 
                            <tbody>
                                <tr scope="row">
                                    <th class="bg-primary bg-opacity-25">내용</th>
                                    <td colspan="3">
                                        <textarea class="form-control" name="NOTICE_CONTENT" id="" placeholder="내용을 입력하세요" cols="30" rows="10"><c:out value="${notice.NOTICE_CONTENT}" /></textarea>
                                    </td>
                                </tr>
                                <tr scope="row">
                                    <th class="bg-primary bg-opacity-25">파일첨부</th>
                                    <td colspan="3">
                                        <div class="">
                                            <input type="file" name="notice_file" id="" class="form-control"/>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                            <input type="hidden" name="NOTICE_NO", value ="${notice.NOTICE_NO}">
                        </table>
                        <hr>
                        <div class="text-center">
                            <button type="submit" class="btn btn-outline-primary">
                                등록
                            </button>
                        </div>
                    </div>
                </form>
            </main>
        </div>
        <script></script>
        <%@ include file="../footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 작성</title>
    <%@ include file="head.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1>게시글 작성</h1>
    <hr>
    <form action="<c:url value='/notice/create'/>" method="post">
        <div class="form-group">
            <label for="title">제목</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title">
        </div>
        <div class="form-group">
            <label for="content">내용</label>
            <textarea class="form-control" id="content" name="content" rows="3"></textarea>
        </div>
        <input type="hidden" name="userId" value="">
        <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>


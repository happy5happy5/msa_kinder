<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 상세 페이지</title>
    <%@ include file="head.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1>${notice.title}</h1>
    <hr>
    <p>${notice.content}</p>
    <hr>
    <p>작성자: ${notice.user.userName}</p>
    <p>작성일자: ${notice.createdAt}</p>
    <div class="row">
        <a href="/notice" class="btn btn-secondary">목록</a>
        <a href="/notice/update?id=${notice.id}" class="btn btn-primary">수정</a>
        <a href="/notice/delete?id=${notice.id}" class="btn btn-danger">삭제</a>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="head.jsp" %>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1>공지사항</h1>
    <!-- 게시글 목록 -->
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성일자</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${notices}" var="notice">
            <tr>
                <th scope="row">${notice.id}</th>
                <td><a href="/notice/detail?id=${notice.id}">${notice.title}</a></td>
                <td>${notice.user.userName}</td>
                <td>${notice.createdAt}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/notice/create" class="btn btn-primary">게시글 만들기</a>
    <a href="/notice/delete" class="btn btn-danger">게시글 삭제</a>
</div>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item ${page == 0 ? 'disabled' : ''}">
            <a class="page-link" href="?page=${page - 1 >= 0 ? page - 1 : 0}" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <c:forEach var="i" begin="0" end="${totalPages - 1}">
            <li class="page-item ${page == i ? 'active' : ''}">
                <a class="page-link" href="?page=${i}">${i + 1}</a>
            </li>
        </c:forEach>
        <li class="page-item ${page == totalPages - 1 ? 'disabled' : ''}">
            <a class="page-link" href="?page=${page + 1 <= totalPages - 1 ? page + 1 : totalPages - 1}" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>
</nav>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Query List</title>
    <%@ include file="head.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1>Query List</h1>

    <%-- Query List --%>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">User</th>
            <th scope="col">Content</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${queries}" var="query">
            <tr>
                <th scope="row">${query.id}</th>
                <td>${query.title}</td>
                <td>${query.user.userName}</td>
                <td>${query.content}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%-- Pagination --%>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <!-- Previous Page -->
            <li class="page-item ${page == 0 ? 'disabled' : ''}">
                <a class="page-link" href="?page=${page - 1}&size=${size}&sortBy=${sortBy}" tabindex="-1">Previous</a>
            </li>

            <!-- Page Numbers -->
            <c:forEach begin="0" end="${totalPages - 1}" var="i">
                <li class="page-item ${page == i ? 'active' : ''}">
                    <a class="page-link" href="?page=${i}&size=${size}&sortBy=${sortBy}">${i + 1}</a>
                </li>
            </c:forEach>

            <!-- Next Page -->
            <li class="page-item ${page == totalPages - 1 ? 'disabled' : ''}">
                <a class="page-link" href="?page=${page + 1}&size=${size}&sortBy=${sortBy}">Next</a>
            </li>
        </ul>
    </nav>

</div>
<%@include file="footer.jsp"%>
</body>
</html>

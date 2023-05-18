<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../pages/head.jsp"%>
<body>
<%@ include file="../pages/navbar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="mt-3">Notice Detail</h1>
            <p><strong>Title: </strong>${notice.title}</p>
            <p><strong>Content: </strong>${notice.content}</p>
            <p><strong>Created At: </strong>${notice.createdAt}</p>
            <p><strong>Updated At: </strong>${notice.updatedAt}</p>
            <form action="<c:url value='/notice/delete/${notice.id}'/>" method="post">
<%--                <input type="hidden" name="_method" value="delete">--%>
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

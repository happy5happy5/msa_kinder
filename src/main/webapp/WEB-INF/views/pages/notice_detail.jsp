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
        </div>
    </div>
</div>
</body>
</html>

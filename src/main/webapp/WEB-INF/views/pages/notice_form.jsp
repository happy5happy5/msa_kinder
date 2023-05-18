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
            <h1 class="mt-3">Create New Notice</h1>
            <form action="<c:url value='/notice/create'/>" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title"
                           placeholder="Enter Title">
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea class="form-control" id="content" name="content"
                              rows="3"></textarea>
                </div>
                <input type="hidden" id="userName" name="userName" value="${currentUser.userName}">
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../pages/head.jsp"%>
<body style="background-color: #ff7eb9;">
<%@ include file="../pages/navbar.jsp"%>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-sm-8 col-md-6">
            <div class="card">
                <div class="card-header">
                    <h1 class="text-center">로그인</h1>
                </div>
                <div class="card-body">
                    <form action="<c:url value='/login' />" method="post">
                        <div class="form-group">
                            <label for="username">사용자 이름</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="사용자 이름 입력">
                        </div>
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력">
                        </div>
                        <button type="submit" class="btn btn-block btn-primary">로그인</button>
                    </form>
                    <% if (request.getParameter("error") != null && request.getParameter("error").equals("Invalid username or password!")) { %>
                    <div class="alert alert-danger mt-3" role="alert">
                        <%=request.getParameter("error") %>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

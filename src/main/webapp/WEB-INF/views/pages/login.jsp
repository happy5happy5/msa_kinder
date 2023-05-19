<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../pages/head.jsp"%>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    .container {
        margin-top: 50px;
    }

    .card {
        background-color: #fff;
        border: none;
        border-radius: 5px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .card-header {
        background-color: #ff7eb9;
        color: #fff;
        font-size: 24px;
        padding: 10px 20px;
        text-align: center;
        text-transform: uppercase;
    }

    .card-body {
        padding: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-control {
        border: none;
        border-radius: 0;
        border-bottom: 1px solid #ccc;
        box-shadow: none;
        padding: 10px 0;
    }

    .form-control:focus {
        box-shadow: none;
        border-bottom: 2px solid #ff7eb9;
    }

    .btn-block {
        background-color: #ff7eb9;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-size: 18px;
        font-weight: bold;
        padding: 10px 20px;
        text-transform: uppercase;
    }

    .btn-block:hover {
        background-color: #ff69b4;
    }

</style>
<body>

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

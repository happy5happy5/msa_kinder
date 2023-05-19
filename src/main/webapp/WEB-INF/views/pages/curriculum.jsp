<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@ include file="head.jsp"%>
<body>
<%@ include file="navbar.jsp"%>

<style>

    .image-container {
        text-align: center;
        margin-left: 150px;
        margin-bottom: 100px;
    }
    img {
        margin: 20px;
        max-width: 60%;
        height: auto;
    }
    .reservation {
        max-width: 300px;
    }
    div {
        text-align:center;
    }

</style>
<body>


<div>
    <img src="${pageContext.request.contextPath}/resources/10.png" alt="" class="reservation">
</div>

<div class="image-container">
        <img src="${pageContext.request.contextPath}/resources/images/1.png" alt="">
        <img src="${pageContext.request.contextPath}/resources/images/2.png" alt="">
        <img src="${pageContext.request.contextPath}/resources/images/3.png" alt="">
</div>


<%@include file="footer.jsp"%>
</body>
</html>
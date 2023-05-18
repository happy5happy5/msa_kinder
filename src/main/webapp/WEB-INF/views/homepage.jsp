<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="pages/head.jsp"%>
<body>
<%@ include file="pages/navbar.jsp"%>
<div class="container">
    <h1 id="userprofile"></h1>
    <img src="https://picsum.photos/600/400?random=1" alt="cute animal picture">
</div>
<%@include file="pages/footer.jsp"%>
<script>
    function getUserProfile(){
        if(getCookie("token"))
        document.querySelector("#userprofile").textContent =getCookie("userName")+" 님 하잉 님아뒤는 이거임::"+getCookie("userId")
    }
    getUserProfile()
</script>
</body>
</html>

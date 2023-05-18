<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<script>
    function checkToken() {
        const token = getCookie("token");
        if (token===undefined || isTokenExpired(token)) {
            console.log("만료토큰")
            console.log("token: "+token)
            console.log("isTokenExpired: ")
            // 만료된 토큰이 있을 경우
            document.querySelector("#login-btn").style.display = "block";
            document.querySelector("#signup-btn").style.display = "block";
            document.querySelector("#mypage").style.display = "none";
            document.querySelector("#logout").style.display = "none";
        } else {
            console.log("유효토큰")
            console.log("token: "+token)
            console.log("isTokenExpired: ")
            // 유효한 토큰이 있을 경우
            document.querySelector("#login-btn").style.display = "none";
            document.querySelector("#signup-btn").style.display = "none";
            document.querySelector("#mypage").style.display = "block";
            document.querySelector("#logout").style.display = "block";
        }
    }

    function getCookie(name) {
        const value = "; " + document.cookie;
        const parts = value.split("; " + name + "=");
        if (parts.length === 2) {
            return parts.pop().split(";").shift();
        }
    }

    function isTokenExpired(token) {
        const payload = JSON.parse(atob(token.split('.')[1]));
        const expirationTime = payload.exp;
        const currentTime = Math.floor(Date.now() / 1000);
        return expirationTime < currentTime;
    }
    function logout() {
        document.cookie = "token=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
        window.location.href = "/";
    }
    //todo: 만료시간 이후에 로그인이 풀린걸 알려줘야함
    checkToken()

</script>
<footer>

</footer>

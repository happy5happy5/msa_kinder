<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<head>
    <title>Homepage</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</head>
<header>
    <script>
        function checkTokenExpiration() {
            console.log("Token Checking Start.....")
            let cookie = document.cookie;
            let token = getCookieValue(cookie, "jwt_token");
            if (token != null) {
                let decodedToken = jwt_decode(token);
                let expirationTime = decodedToken.exp * 1000;
                let currentTime = new Date().getTime();
                let timeLeft = expirationTime - currentTime;
                if (timeLeft < 60000) { // 60 seconds
                    refreshToken();
                }
            }
        }

        function getCookieValue(cookie, name) {
            let value = null;
            let cookies = cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                let parts = cookies[i].split('=');
                if (parts[0].trim() === name) {
                    value = parts[1];
                    break;
                }
            }
            return value;
        }

        function refreshToken() {
            $.ajax({
                type: "GET",
                url: "/api/token/refresh",
                success: function() {
                    console.log("Token refreshed successfully.");
                },
                error: function() {
                    console.error("Failed to refresh token.");
                }
            });
        }

        setInterval(checkTokenExpiration, 5000); // check every 10 seconds
    </script>
</header>
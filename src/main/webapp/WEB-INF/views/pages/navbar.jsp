<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="sticky-top w-100">
    <nav class="navbar navbar-expand-lg bg-light ">
        <div class="container-fluid">
            <a class="navbar-brand alien" href="<c:url value="/"/>">유치원</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link active"
                                            aria-current="page" href="<c:url value="/introduce"/>">회사소개</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/curriculum"/>">커리큘럼</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/page/reservation.jsp"/>">예약하기</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/page/journal.jsp"/>">알림장</a></li>
                    <li class="nav-item dropdown"><a
                            class="nav-link dropdown-toggle" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">고객센터</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item"
                                   href="<c:url value="/notice"/>">공지사항</a></li>
                            <li><a class="dropdown-item"
                                   href="<c:url value="/queries"/>">q&a</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="spacer mx-auto"></div>


                <a class="nav-item mr-auto border " id="login-btn" type="button"
                   href="<c:url value="/login"/>">로그인</a>
                <a class="nav-item mr-auto border " id="signup-btn" type="button"
                   href="<c:url value="/signup"/>">회원가입</a>
                <a class="nav-item mr-auto border " id="mypage" type="button"
                   href="<c:url value="/mypage"/>">마이페이지</a>
                <a class="nav-item mr-auto border " id="logout" type="button"
                   href="#" onclick="logout()">로그아웃</a>

            </div>
        </div>
    </nav>

</header>

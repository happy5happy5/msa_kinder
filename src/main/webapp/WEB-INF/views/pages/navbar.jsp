<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                            aria-current="page" href="<c:url value="/page/introduce.jsp"/>">회사소개</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/page/curriculum.jsp"/>">커리큘럼</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/page/reservation.jsp"/>">예약하기</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="<c:url value="/page/journal.jsp"/>">알림장</a></li>
                    <li class="nav-item dropdown"><a
                            class="nav-link dropdown-toggle" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">고객센터</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item"
                                   href="<c:url value="/page/notice.jsp"/>">공지사항</a></li>
                            <li><a class="dropdown-item"
                                   href="<c:url value="/page/questionAndAnswer.jsp"/>">q&a</a></li>
                        </ul></li>
                </ul>
                <div class="spacer mx-auto"></div>
                <a class="nav-item mr-auto border" type="button"
                   href="<c:url value="/page/login.jsp"/>">로그인</a><a
                    class="nav-item mr-auto border" type="button"
                    href="<c:url value="/page/signup.jsp"/>">회원가입</a>
<%--                <%--%>
<%--                    String userid = (String) session.getAttribute("id");--%>
<%--                    if (validator.isValidUser(userid)) {--%>
<%--                        out.print(userid + "님하잉");--%>
<%--                        boolean passwordAgain = session.getAttribute("validMypage") != null;--%>

<%--                        if (passwordAgain) {--%>
<%--                %>--%>

<%--                <a href="page/mypage.jsp" type="button" class="nav-item mr-auto border ms-1"--%>
<%--                >마이페이지</a>--%>
<%--                <%--%>
<%--                } else {--%>
<%--                %>--%>

<%--                <button type="button" class="nav-item mr-auto border ms-1"--%>
<%--                        data-bs-toggle="modal" data-bs-target="#mypageValidationModal">마이페이지</button>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>






<%--                <a class="nav-item mr-auto border" type="button"--%>
<%--                   href="<c:url value="/page/logout_process.jsp"/>">로그아웃</a>--%>


<%--                <%--%>
<%--                } else {--%>
<%--                %><a class="nav-item mr-auto border" type="button"--%>
<%--                     href="<c:url value="/page/login.jsp"/>">로그인</a><a--%>
<%--                    class="nav-item mr-auto border" type="button"--%>
<%--                    href="<c:url value="/page/signup.jsp"/>">회원가입</a>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
            </div>
        </div>
    </nav>
</header>

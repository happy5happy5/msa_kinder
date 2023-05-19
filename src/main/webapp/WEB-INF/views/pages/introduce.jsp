<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@ include file="head.jsp"%>
<body>
<%@ include file="navbar.jsp"%>
<style>
    #dog {
        width: 1000px;
        height: 700px;
        padding: 0 0 40px 0;
        object-fit: contain;
        align-items: center;

    }
    .carousel-inner img {
        object-fit: cover;
        height: 100vh;
    }
    #slides > img{
        width:100%;/*너비*/
        float:left;/*가로로 배치*/
    }
    #map {
        width: 950px;
        height: 670px;
        object-fit: contain;
        align-items: center;

    }


</style>

<div class="row">

    <div class="col-2 position-fixed ms-5 top-50 start-0">
        <div id="list" class="list-group">
            <a class="list-group-item list-group-item-action"
               href="#list-item-1">어서오시개</a> <a
                class="list-group-item list-group-item-action" href="#list-item-2">시설 소개
        </a> <a class="list-group-item list-group-item-action"
                href="#list-item-3">오시는 길</a>
        </div>
    </div>


    <div class="col-2 spacer"></div>



    <div class="col-8 mx-5">
        <div data-bs-spy="scroll" data-bs-target="#list" data-offset="50"
             data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
            <h4 id="list-item-1"></h4>
            <img src="${pageContext.request.contextPath}/resources/images/start.png" alt="유치원 컨셉" id="dog">


            <h4 id="list-item-2"></h4>
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/resources/images/dog1.jpg" alt="시설사진" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/resources/images/dog2.jpg" alt="시설사진" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/resources/images/dog3.jpg" alt="시설사진" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/resources/images/dog4.jpg" alt="시설사진" class="d-block w-100">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/resources/images/dog5.jpg" alt="시설사진" class="d-block w-100">
                    </div>
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>


                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>


            </div>

            <h4 id="list-item-3"></h4>
            <img src="${pageContext.request.contextPath}/resources/images/map.png" alt="지도" id="map">

        </div>
    </div>

</div>




<%@include file="footer.jsp"%>
</body>
</html>
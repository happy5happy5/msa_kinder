<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%@ include file="head.jsp" %>
<body>
<%@ include file="navbar.jsp" %>
<!-- 상단 -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-4">
            <img src="https://picsum.photos/500/300" class="img-fluid" alt="Image 1">
        </div>
        <div class="col-sm-4">
            <img src="https://picsum.photos/500/300" class="img-fluid" alt="Image 2">
        </div>
        <div class="col-sm-4">
            <img src="https://picsum.photos/500/300" class="img-fluid" alt="Image 3">
        </div>
    </div>
</div>
<!-- 하단 -->
`
<div class="container">
    <div class="row">
        <div class="col-md-4 mb-3">
            <div class="card">
                <img src="/resources/static/1.png" class="card-img-top" alt="Image 4">
                <div class="card-body text-center d-flex flex-column justify-content-end">
                    <h5 class="card-title mb-0">제목</h5>
                    <p class="card-text text-secondary mb-0">부제목</p>
                    <a class="btn btn-primary mt-3" href="/reservation/create">예약하기</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-3">
            <div class="card">
                <img src="/static/1.png" class="card-img-top" alt="Image 5">
                <div class="card-body text-center d-flex flex-column justify-content-end">
                    <h5 class="card-title mb-0">제목</h5>
                    <p class="card-text text-secondary mb-0">부제목</p>
                    <a class="btn btn-primary mt-3" href="/reservation/create">예약하기</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-3">
            <div class="card">
                <img src="/resources/static/3.png" class="card-img-top" alt="Image 6">
                <div class="card-body text-center d-flex flex-column justify-content-end">
                    <h5 class="card-title mb-0">제목</h5>
                    <p class="card-text text-secondary mb-0">부제목</p>
                    <a class="btn btn-primary mt-3" href="/reservation/create">예약하기</a>
                </div>
            </div>
        </div>
    </div>
</div>

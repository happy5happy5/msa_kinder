<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="head.jsp" %>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1>질문 목록</h1>
    <!-- 게시글 목록 -->
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성일자</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${queries}" var="query">
            <tr>
                <th scope="row">${query.id}</th>
                <td><a href="/queries/${query.id}">${query.title}</a></td>
                <td>${query.user.userName}</td>
                <td>${query.createdAt}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="checkToken(true)">
        질문 만들기
    </button>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">질문 만들기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="/queries/create" method="post">
                        <div class="mb-3">
                            <label for="title" class="col-form-label">제목</label>
                            <input type="text" class="form-control" id="title" name="title">
                        </div>
                        <div class="mb-3">
                            <label for="content" class="col-form-label">내용</label>
                            <textarea class="form-control" id="content" name="content"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                            <button type="submit" class="btn btn-primary">질문 등록</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item ${page == 0 ? 'disabled' : ''}">
            <a class="page-link" href="?page=${page - 1 >= 0 ? page - 1 : 0}" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <c:forEach var="i" begin="0" end="${totalPages - 1}">
            <li class="page-item ${page == i ? 'active' : ''}">
                <a class="page-link" href="?page=${i}">${i + 1}</a>
            </li>
        </c:forEach>
        <li class="page-item ${page == totalPages - 1 ? 'disabled' : ''}">
            <a class="page-link" href="?page=${page + 1 < totalPages ? page + 1 : totalPages - 1}" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>
</nav>
</body>
<%@ include file="footer.jsp" %>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%@ include file="head.jsp" %>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <form method="post" action="/reservation/create">
                <div class="form-group">
                    <label for="userName">보호자 성명</label>
                    <input type="text" class="form-control" id="userName" name="userName" required>
                </div>
                <div class="form-group">
                    <label for="phone">연락처</label>
                    <input type="text" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="bookingdate">예약 날짜</label>
                    <input type="date" class="form-control" id="bookingdate" name="bookingdate" required>
                </div>
                <div class="form-group">
                    <label for="curriculum">커리큘럼</label>
                    <select class="form-control" id="curriculum" name="curriculum" required>
                        <option value="">선택하세요</option>
                        <option value="아침">아침반</option>
                        <option value="점심">점심반</option>
                        <option value="저녁">저녁반</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="comment">남기실 말씀</label>
                    <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">예약하기</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
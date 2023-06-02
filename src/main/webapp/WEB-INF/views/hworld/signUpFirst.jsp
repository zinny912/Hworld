<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>회선 확인</title>
</head>

<body class="theme-color2 light ltr">

    <!-- Sign Up Section Start -->
    <div class="login-section">
        <div class="materialContainer">
            <div class="box">
                <!-- 홈 버튼 -->
                <div class="d-flex justify-content-center">
                    <a href="index.html">
                        <h2><img src="/assets/images/logos/2.png"></h2>
                    </a>
                </div>
                <div class="login-title">
                    <h2 style="margin-top: 15px;">회선 확인</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>로그인</h2>
                </div> -->

                <!-- 내용 표시 영역 -->
                <div class="search-result my-2">
                    <h3>(회선이 없는 사용자가 가입 시도시)</h3>
                </div>
                <div class="search-result my-2">
                    <h4>회선정보가 존재하지 않습니다. 가까운 대리점을 방문해서 회선을 등록해주세요.</h4>
                    <h4> -> 버튼 클릭시 MJ01(대리점 안내)으로 이동?</h4>
                </div>

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button onclick="location.href = '/etc/findShop';" type="submit">
                        <span>대리점 찾기</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->
</body>

</html>
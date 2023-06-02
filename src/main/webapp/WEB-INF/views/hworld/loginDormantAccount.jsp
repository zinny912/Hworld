<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>계정 활성화</title>
</head>

<body class="signup-page theme-color2">

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
                    <h2 style="margin-top: 15px;">계정 활성화(명칭 확정 필요)</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>가입 전 회선 확인</h2>
                </div> -->

                <!-- 정보 입력 영역 -->
                <div class="input">
                    <label for="name">이름</label>
                    <input type="text" name="name" id="name">
                    <span class="spin"></span>
                </div>

                <div class="input">
                    <label for="phoneNumber">연락처</label>
                    <input type="text" name="phoneNumber" id="phoneNumber">
                    <span class="spin"></span>
                </div>

                <!-- 필요없다면 지우기 -->
                <div class="input">
                    <p>이름 + 전화번호로 SMS 인증 또는 이메일 인증</p>
                </div>

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button onclick="location.href = 'log-in-dormant-account-result.html';">
                        <span>확인</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>

            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->

    <div class="bg-overlay"></div>

</body>

</html>
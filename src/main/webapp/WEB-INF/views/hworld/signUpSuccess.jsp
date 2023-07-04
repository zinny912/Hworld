<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>    
</head>

<body class="signup-page theme-color2">

    <!-- Sign Up Section Start -->
    <div class="login-section">
        <div class="materialContainer">
            <div class="box">
                <!-- 홈 버튼 -->
                <div class="brand-logo d-flex justify-content-center">
                    <svg class="svg-icon my-auto">
                        <use class="fill-color" xlink:href="/assets/svg/icons.svg#logo"></use>
                    </svg>
                    <a href="/">
                        <h2><img src="/assets/images/logo.png"></h2>
                    </a>
                </div>
                <div class="login-title">
                    <h2 style="margin-top: 15px;">회원 가입</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>회원 가입</h2>
                </div> -->

                <!-- 정보 입력 영역 -->
                <!-- 초록색 체크무늬 아이콘 -->
                <div class="success-icon" style="background-color: white;">
                    <div class="main-container">
                        <div class="check-container">
                            <div class="check-background">
                                <svg viewBox="0 0 65 51" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M7 25L27.3077 44L58.5 7" stroke="white" stroke-width="13"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                            </div>
                            <div class="check-shadow"></div>
                        </div>
                    </div>
                </div>

                <div class="my-2" style="text-align: center;">
                    <h3>회원가입을 축하드립니다!</h3>
                </div>

                <div class="button login">
                    <button onclick="location.href = '/member/login';">
                        <span>로그인하기</span>
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
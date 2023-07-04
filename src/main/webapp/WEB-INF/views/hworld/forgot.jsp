<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <style>
        .login-section .materialContainer .button {
            margin-top: 20px;
            margin: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320))) 0;
            overflow: hidden;
            z-index: 2; }
        .login-section .materialContainer .button.login button {
            width: 80%;
            left: 0%;
            background-color: var(--theme-color);
            border: 1px solid var(--theme-color);
            font-weight: 900;
            font-size: 14px;
            color: #fff;
            padding: 14px 0px;
            border-radius: 4px; }
        .login-section .materialContainer .button.login button.active {
            border: 1px solid transparent;
            color: #fff !important;
            background-color: var(--theme-color); 
            padding: 10px 0px; }
        .login-section .materialContainer .button.login button span {
            padding: 0px; }
    </style>
</head>

<body class="theme-color2 light ltr">
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
                    <h2 style="margin-top: 15px;">계정정보 찾기</h2>
                </div>


                <!-- <div class="login-title">
                    <h2>계정정보 찾기</h2>
                </div> -->
                <div class="d-flex justify-content-center">
                    <div class="d-flex justify-content-center col-md-10 mt-4">
                        <div class="col-md-6">
                            <div class="d-flex justify-content-end button login btn m-1" style="padding-right: 10px;">
                                <button onclick="location.href = 'forgotId';" type="submit">
                                    <span>아이디 찾기</span>
                                    <i class="fa fa-check"></i>
                                </button>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="d-flex justify-content-start button login btn m-1" style="padding-left: 10px;">
                                <button onclick="location.href = 'forgotPw';" type="submit">
                                    <span>비밀번호 찾기</span>
                                    <i class="fa fa-check"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->
</body>

</html>
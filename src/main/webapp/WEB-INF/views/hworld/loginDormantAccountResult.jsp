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
                    <h2 style="margin-top: 15px;">계정 활성화</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>로그인</h2>
                </div> -->

                <!-- 내용 표시 영역 -->
                <!-- 이름/연락처 일치시 -->
                <!-- <div class="image d-flex justify-content-center my-5">
                    <img src=".//assets/images/check-mark.png" alt="" style="width: 40%;">
                </div> -->
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
                <div class="search-result my-2" style="text-align: center;">
                    <h3>등록된 이메일로 임시 비밀번호를 발송했습니다.</h3>
                    <p>로그인 후 비밀번호를 변경해주세요</p>
                </div>

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button onclick="location.href = 'log-in.html';" type="submit">
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
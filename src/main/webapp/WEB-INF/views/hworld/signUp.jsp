<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>    
    <title>회원 가입</title>
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
                    <h2 style="margin-top: 15px;">회원 가입</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>회원 가입</h2>
                </div> -->

                <!-- 정보 입력 영역 -->
                <div class="input">
                    <label for="userName">사용자 계정</label>
                    <input type="email" name="userName" id="userName">
                    <span class="spin"></span>
                </div>

                <div class="row gx-md-3 gy-3">
                    <div class="col-md-6">
                        <div class="input">
                            <label for="pass">비밀번호</label>
                            <input type="password" name="pass" id="pass">
                            <span class="spin"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="input">
                            <label for="compass">비밀번호 확인</label>
                            <input type="password" name="pass" id="passcom">
                            <span class="spin"></span>
                        </div>
                    </div>
                </div>

                <div class="input">
                    <label for="name">이름</label>
                    <input type="text" name="name" id="name">
                    <span class="spin"></span>
                </div>

                <div class="row gx-md-3 gy-3">
                    <div class="col-md-6">
                        <div class="input">
                            <label for="birth">주민등록번호 앞자리</label>
                            <input type="text" name="birth" id="birth">
                            <span class="spin"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="input">
                            <label for="RRN">주민등록번호 뒷자리</label>
                            <input type="password" name="RRN" id="RRN">
                            <span class="spin"></span>
                        </div>
                    </div>
                </div>

                <div class="input">
                    <label for="address">주소</label>
                    <input type="text" name="address" id="address">
                    <span class="spin"></span>
                </div>

                <div class="input">
                    <label for="phoneNumber">연락처</label>
                    <input type="text" name="phoneNumber" id="phoneNumber">
                    <span class="spin"></span>
                </div>

                <!-- 필요없다면 지우기 -->
                <div class="input">
                    <p>이메일 인증(또는 전화번호)</p>
                    <p>precheck/지금페이지 인증 어떻게? 두번은 번거로울지도..</p>
                </div>

                <div class="button login">
                    <button onclick="location.href = 'sign-up-success.html';">
                        <span>가입하기</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>

                <p><a href="log-in.html" class="theme-color">이미 계정이 있으신가요?</a></p>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->

    <div class="bg-overlay"></div>
</body>

</html>
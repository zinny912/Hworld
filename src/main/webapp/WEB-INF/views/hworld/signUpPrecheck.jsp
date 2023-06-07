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
                    <h2 style="margin-top: 15px;">회선 확인(명칭 확정 필요)</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>가입 전 회선 확인</h2>
                </div> -->

                <!-- 정보 입력 영역 -->
                <div class="input">                    
                    <input type="text" name="name" id="name" placeholder="이름">
                    <span class="spin"></span>
                </div>

                <div class="row gx-md-3 gy-3">
                    <div class="col-md-6">
                        <div class="input">                            
                            <input type="text" name="birth" id="birth" placeholder="주민등록번호 앞자리">
                            <span class="spin"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="input">                            
                            <input type="password" name="RRN" id="RRN" placeholder="주민등록번호 뒷자리">
                            <span class="spin"></span>
                        </div>
                    </div>
                </div>

                <!-- 필요없다면 지우기 -->
                <div class="input">
                    <p>(가능한 경우)이름+주민등록번호 인증하고 다음페이지 넘어가기</p>
                </div>

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button type="submit">
                        <span>확인(회선O)</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>

                <!-- 나중에 지울 버튼 -->
                <div class="button login">
                    <button onclick="location.href = '/etc/findShop';">
                        <span>대리점 위치안내(회선 X)</span>
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
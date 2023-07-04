<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>로그인</title>
</head>

<body class="theme-color2 light ltr">

    <!-- Log In Section Start -->
    <div class="login-section">
        <div class="materialContainer">
            <div class="box">
                <!-- 홈 이동 - 2안 -->
                <div class="brand-logo d-flex justify-content-center">
                    <svg class="svg-icon my-auto">
                        <use class="fill-color" xlink:href="/assets/svg/icons.svg#logo"></use>
                    </svg>
                    <a href="/">
                        <h2><img src="/assets/images/logo.png"></h2>
                    </a>
                </div>
                <div class="login-title">
                    <h2 style="margin-top: 15px;">로그인</h2>
                </div>

                <!-- 홈 이동 - 1안 -->
                <!-- <div class="login-title">
                    <div class="d-flex justify-content-between">
                        <div class="my-auto">
                            <h2>로그인</h2>
                        </div>
                        <div>
                            <a href="index.html">
                                <i class="fas fa-home"></i>
                            </a>
                        </div>
                    </div>
                </div> -->
				<form:form action="./login" id="loginForm" method="post" modelAttribute="memberVO">
	                <!-- 정보 입력 영역 -->
	                <div class="input">
	                    <input type="email" name="email" id="email" required placeholder="사용자 계정(이메일)">
	                    <span class="spin"></span>
	                    <div class="valid-feedback">
	                        계정을 입력해주세요
	                    </div>
	                </div>
	
	                <div class="input">                    
	                    <input type="password" name="pw" id="pw" placeholder="비밀번호">
	                    <span class="spin"></span>
	                </div>	                	                
	
	                <a href="forgot" class="pass-forgot">계정정보를 잊어버리셨나요?</a>
	

	                <!-- 버튼 영역 -->
	                <div class="button login">
	                    <button type="button" id="login_btn">
	                        <span>로그인</span>
	                        <i class="fa fa-check"></i>
	                    </button>
	                </div>
	
	                <!-- 나중에 지울 버튼 영역 -->
	                <!-- <div class="button login">
	                    <button onclick="location.href = 'log-in-first.html';" type="submit">
	                        <span>최초로그인(회선등록)</span>
	                        <i class="fa fa-check"></i>
	                    </button>
	                </div> -->
	
	                <div class="button login">
	                    <button onclick="location.href = 'log-in-dormant-account.html';" type="button">
	                        <span>로그인(휴면계정)</span>
	                        <i class="fa fa-check"></i>	                		
	                    </button>
	                </div>
                </form:form>
                <!-- 나중에 지울 버튼 끝 -->

                <!-- 회원가입 페이지 이동 -->
                <p style="margin-top: 0px">아직 회원이 아니신가요? <a href="precheck" class="theme-color">가입하기</a></p>
				<div class="g-recaptcha" data-sitekey="6LfiGXwmAAAAAGV4y7cC0tEowoX-87amSkjeNVTi" style="margin-left: 50px; padding-top: 465px;"></div>
            </div>
        </div>
    </div>
    <!-- Log In Section End -->

    <div class="bg-overlay"></div>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 구글 리캡차 -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
     
$(function() {
    $('#login_btn').click(function() {                      
        $.ajax({
            url: '/VerifyRecaptcha',
            type: 'post',
            data: {recaptcha: $("#g-recaptcha-response").val()},
            success: function(res) {
                const data=JSON.parse(res);
                if(data.success){                       
		$("#loginForm").submit();
                }else{
                    alert("자동가입방지 봇을 확인한 후 진행해주세요.");                               
                }               
            }
        });   
    });         
});
</script>


</body>

</html>
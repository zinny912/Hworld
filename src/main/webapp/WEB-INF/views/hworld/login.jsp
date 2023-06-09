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
                <div class="d-flex justify-content-center">
                    <a href="index.html">
                        <h2><img src="/assets/images/logos/2.png"></h2>
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
	                    <input type="text" name="email" id="email" required placeholder="사용자 계정">
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
	                    <button onclick="location.href = 'log-in-dormant-account.html';" type="submit">
	                        <span>로그인(휴면계정)</span>
	                        <i class="fa fa-check"></i>	                		
	                    </button>
	                </div>
                </form:form>
                <!-- 나중에 지울 버튼 끝 -->

                <!-- <p class="sign-category">
                    <span>다른 로그인 방법</span>
                </p> -->

                <!-- 소셜 로그인 부분 -->
                <!-- 소셜 로그인 1개 -->
                <!-- <div class="row gx-md-3 gy-3">
                    <div class="col-md-12">
                        <a href="www.facebook.com">
                            <div class="social-media fb-media">
                                <img src="/assets/images/inner-page/facebook.png" class="img-fluid blur-up lazyload"
                                    alt="">
                                <h6>네이버</h6>
                            </div>
                        </a>
                    </div>
                </div> -->

                <!-- 소셜 로그인 2개 -->
                <!-- <div class="row gx-md-3 gy-3">
                    <div class="col-md-6">
                        <a href="www.facebook.com">
                            <div class="social-media fb-media">
                                <img src="/assets/images/inner-page/facebook.png" class="img-fluid blur-up lazyload"
                                    alt="">
                                <h6>네이버</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="www.gmail.com">
                            <div class="social-media google-media">
                                <img src="/assets/images/inner-page/google.png" class="img-fluid blur-up lazyload"
                                    alt="">
                                <h6>바꾸기</h6>
                            </div>
                        </a>
                    </div>
                </div> -->

                <!-- 회원가입 페이지 이동 -->
                <p style="margin-top: 0px">아직 회원이 아니신가요? <a href="sign-up-precheck.html" class="theme-color">가입하기</a></p>
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
                        alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");                               
                    }               
                }
            }); 
             
             
             
        });
         
    });
</script>


</body>

</html>
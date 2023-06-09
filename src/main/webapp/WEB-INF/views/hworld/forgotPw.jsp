<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
   	<c:import url="../temp/style.jsp"></c:import>
    <title>비밀번호 찾기</title>
</head>

<body class="theme-color2 light ltr">
	<form:form action="./forgotPw" id="forgotPwForm" method="post" modelAttribute="memberVO">
	
	    <!-- Sign Up Section Start -->
	    <div class="login-section">
	        <div class="materialContainer">
	            <div class="box">
	                <!-- 홈 버튼 -->
	                <div class="d-flex justify-content-center">
	                    <a href="/">
	                        <h2><img src="/assets/images/logos/2.png"></h2>
	                    </a>
	                </div>
	                <div class="login-title">
	                    <h2 style="margin-top: 15px;">비밀번호 찾기</h2>
	                </div>
	
	                <!-- <div class="login-title">
	                    <h2>비밀번호 찾기</h2>
	                </div> -->
	                
	                <!-- 정보 입력 영역 -->
	                <div class="input">
	                    <label for="memberName">이름을 입력하세요</label>
	                    <input type="text" name="name" class="is-invalid" id="memberName">
	                    <span class="spin"></span>
	                </div>
	                <div class="input">
	                    <label for="userName">사용자 계정(이메일)을 입력하세요</label>
	                    <input type="text" name="userName" class="is-invalid" id="userName">
	                    <span class="spin"></span>
	                </div>
	                
	                <div class="g-recaptcha" data-sitekey="6LfiGXwmAAAAAGV4y7cC0tEowoX-87amSkjeNVTi" style="margin-left: 50px; padding-top: 210px;"></div>
	
	                <!-- 버튼 영역 -->
	                <div class="button login button-1">
	                    <button type="button" id="find_btn">
	                        <span>찾기</span>
	                        <i class="fa fa-check"></i>
	                    </button>
	                </div>
	            </div>
	        </div>
	    </div>
    <!-- Sign Up Section End -->
    </form:form>    

<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
     
$(function() {
    $('#find_btn').click(function() {                      
        $.ajax({
            url: '/VerifyRecaptcha',
            type: 'post',
            data: {recaptcha: $("#g-recaptcha-response").val()},
            success: function(res) {
                const data=JSON.parse(res);
                if(data.success){                       
		$("#loginForm").submit();
                }else{
                    alert("자동 방지 봇을 확인한 후 진행해주세요.");                               
                }               
            }
        });   
    });         
});
</script>
</body>

</html>
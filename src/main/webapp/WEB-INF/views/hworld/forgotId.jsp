<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>아이디 찾기</title>
</head>

<body class="theme-color2 light ltr">
	<form:form action="./forgotResultEmail" id="forgotIdForm" method="post" modelAttribute="memberVO">
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
	                    <h2 style="margin-top: 15px;">아이디 찾기</h2>
	                </div>
	
	                <!-- 원본 -->
	                <!-- <div class="login-title">
	                    <h2>아이디 찾기</h2>
	                </div> -->
	
	                <!-- 정보 입력 영역 -->
	                <div class="input">	                    
	                    <input type="text" name="name" class="is-invalid" id="name" placeholder="이름을 입력하세요">
	                    <span class="spin"></span>
	                </div>
					<!-- <div class="input">	                    
	                    <input type="text" name="tel" class="is-invalid" id="tel" placeholder="연락처( '-' 빼고 입력해주세요 ) ">
	                    <span class="spin"></span>
	                </div> -->
					<div class="input row mx-auto">
						<div class="col-6" style="padding-right: 6px">
							<input class="form-control" type="text" name="rrnf" id="rrnf" placeholder="주민등록번호 앞자리">
						</div>
						<div class="col-6" style="padding-left: 6px">
							<input class="form-control" type="password" name="rrnl" id="rrnl" placeholder="주민등록번호 뒷자리">
						</div>
					</div>
	                <!-- <div class="input">	                    
	                    <input type="text" name="phoneNum" class="is-invalid" id="phoneNum" placeholder="연락처( '-' 빼고 입력해주세요 ) ">
	                    <span class="spin"></span>
	                </div> -->
	                
	                <div class="g-recaptcha" data-sitekey="6LfiGXwmAAAAAGV4y7cC0tEowoX-87amSkjeNVTi" style="margin-left: 50px; padding-top: 210px;"></div>
	
	                <!-- 버튼 영역 -->
	                <div class="button login button-1">
	                    <button type="button" id="findBtns" onclick="findBtn(); return false;">
	                        <span>찾기</span>
	                        <i class="fa fa-check"></i>
	                    </button>
	                </div>
	            </div>
	        </div>
	    </div>
    </form:form>
    <!-- Sign Up Section End -->    

    <div class="bg-overlay"></div>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
//캡챠
$(function() {
    $('#findBtns').click(function() {                      
        $.ajax({
            url: '/VerifyRecaptcha',
            type: 'post',
            data: {recaptcha: $("#g-recaptcha-response").val()},
            success: function(res) {
                const data=JSON.parse(res);
                if(data.success){                       
		$("#forgotIdForm").submit();
                }else{
                    alert("자동 방지 봇을 확인한 후 진행해주세요.");                               
                }               
            }
        });   
    });         
});

// 아이디 찾기
var path = "${pageContext.request.contextPath }";

$(document).ready(function() {
	var msg = "${msg}";
	if(msg != ""){
	alert(msg);    
	}
});
 
function findBtn() {
 
	var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var tel_rule = /^\d{2,3}\d{3,4}\d{4}$/;
	 
	if ($("#name").val() == null || $("#name").val() == "") {
	alert("이름을 입력해주세요.");
	$("#name").focus();
	 
	return false;
	}
 
	if ($("#tel").val() == null || $("#tel").val() == "") {
	alert("연락처를 입력해주세요.");
	$("#tel").focus();
	 
	return false;
	}
	 
	if(!tel_rule.test($("#tel").val())){
	alert("전화번호 형식에 맞게 입력해주세요.");
	
	return false;
	}
	 
	 
	/* if (confirm("아이디를 찾으시겠습니까?")) {
	$("#forgotIdForm").button();
	 
	return false;
	} */
	
}
</script>
</body>

</html>
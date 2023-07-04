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
	<form:form action="./forgotId" id="forgotIdForm" method="post" modelAttribute="memberVO">
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
	                <div class="login-title mb-5">
	                    <h2 style="margin-top: 15px;">아이디 찾기</h2>
	                </div>
	
	                <!-- 원본 -->
	                <!-- <div class="login-title">
	                    <h2>아이디 찾기</h2>
	                </div> -->
	
	                <!-- 정보 입력 영역 -->
	                <!-- <div class="input">	                    
	                    <input type="text" name="name" class="is-invalid" id="name" placeholder="이름을 입력하세요">
	                    <span class="spin"></span>
	                </div> -->
					<!-- <div class="input">	                    
	                    <input type="text" name="tel" class="is-invalid" id="tel" placeholder="연락처( '-' 빼고 입력해주세요 ) ">
	                    <span class="spin"></span>
	                </div> -->
					<div class="mb-4 row">
						<div class="col-12">
							<input class="form-control" type="text" name="name" id="name" placeholder="이름">	
						</div>
					</div>

					<div class="mb-4 row">
						<div class="col-6">
							<input class="form-control" type="text" name="rrnf" id="rrnf" placeholder="주민등록번호 앞자리">
						</div>
						<div class="col-6">
							<input class="form-control" type="password" name="rrnl" id="rrnl" placeholder="주민등록번호 뒷자리">
						</div>
					</div>
	                <!-- <div class="input">	                    
	                    <input type="text" name="phoneNum" class="is-invalid" id="phoneNum" placeholder="연락처( '-' 빼고 입력해주세요 ) ">
	                    <span class="spin"></span>
	                </div> -->
	                
	                <div class="g-recaptcha d-flex justify-content-center" data-sitekey="6LfiGXwmAAAAAGV4y7cC0tEowoX-87amSkjeNVTi"></div>
	
	                <!-- 버튼 영역 -->
	                <div class="button login button-1">
	                    <button type="button" id="findBtns">
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
// 아이디 찾기
let path = "${pageContext.request.contextPath}";

$(document).ready(function() {
	let msg = "${msg}";
	if(msg != ""){
	alert(msg);    
	}
});

//확인 버튼 클릭
$('#findBtns').click(function() {
	let chkBtn = findBtn();
	//console.log("chkbtn: ",chkBtn);

	//btn이 true 일때만 ajax 실행 - form 전송
	if(chkBtn){
		//캡챠
		$.ajax({
			url: '/VerifyRecaptcha',
			type: 'post',
			data: {recaptcha: $("#g-recaptcha-response").val()},
			success: function(res) {
				const data=JSON.parse(res);
				if(data.success){                       
				$("#forgotIdForm").submit();
				//console.log('ajax 성공');
				}else{
					alert("자동 방지 봇을 확인한 후 진행해주세요.");       
					return false;                        
				}               
			}
		});
	}

}); 


function findBtn() {

	let email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	let tel_rule = /^\d{2,3}\d{3,4}\d{4}$/;

	//숫자 정규식
	let chkRrnf = $('#rrnf').val().replace(/[^\d]/g, "");
	let chkRrnl = $('#rrnl').val().replace(/[^\d]/g, "");

	//정규화된 숫자를 val에 넣어주기
	$('#rrnf').val(chkRrnf);
	$('#Rrnl').val(chkRrnl);
	
	if ($("#name").val() == null || $("#name").val() == "") {
	alert("이름을 입력해주세요.");
	$("#name").focus();
	
	return false;
	}

	if ($("#rrnf").val() == null || $("#rrnf").val() == "") {
	alert("생년월일을 입력해주세요.");
	$("#rrnf").focus();
	
	return false;
	}

	if ($("#rrnl").val() == null || $("#rrnl").val() == "") {
	alert("주민등록번호 뒷자리를 입력해주세요.");
	$("#rrnl").focus();
	
	return false;
	}
    //자리수 체크
    let rrnfLength = chkRrnf.length;
	let rrnlLength = chkRrnl.length;

    if(rrnfLength != 6) {
        $('#rrnf').val('');
    	alert('생년월일은 6자리로 입력해주세요');
		return false;
    }else if(rrnlLength != 7){
        $('#rrnl').val('');
		alert('주민등록번호 뒷자리는 7자리로 입력해주세요');
		return false;
    }

	return true;
}
</script>
</body>

</html>
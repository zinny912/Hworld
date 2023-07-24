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
    <title>비밀번호 찾기</title>
</head>

<body class="theme-color2 light ltr">
	<form:form action="./forgotResultPw" id="forgotPwForm" method="post" modelAttribute="memberVO">
	
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
	                    <h2 style="margin-top: 15px;">비밀번호 찾기</h2>
	                </div>
	
	                <!-- <div class="login-title">
	                    <h2>비밀번호 찾기</h2>
	                </div> -->
	                
	                <!-- 정보 입력 영역 -->
	                <div class="input">	                    
	                    <input type="text" name="name" class="is-invalid" id="name" placeholder="이름을 입력하세요">
	                    <span class="spin"></span>
	                </div>
	                <div class="input">	                    
	                    <input type="text" name="email" class="is-invalid" id="email" placeholder="사용자 계정(이메일)을 입력하세요">
	                    <span class="spin"></span>
	                </div>
	                
	                <div class="g-recaptcha" data-sitekey="6LfiGXwmAAAAAGV4y7cC0tEowoX-87amSkjeNVTi" style="margin-left: 50px; padding-top: 210px;"></div>
	
	                <!-- 버튼 영역 -->
	                <div class="button login button-1">
	                    <button type="button" id="findBtns" onclick="findBtn(); return false;">
	                        <span>찾기</span>
	                        <i class="fa fa-check"></i>
	                    </button>
	                </div>
	                <div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
	            </div>
	        </div>
	    </div>
    <!-- Sign Up Section End -->
    </form:form>    

<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
var path = "${pageContext.request.contextPath }";

$(document).ready(function() {
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);    
	}
});
	 
	 
function findBtn() {
	 
	var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	 
	if ($("#name").val() == null || $("#name").val() == "") {
		alert("이름을 입력해주세요.");
		$("#name").focus();
		 
		return false;
	}
	
	if ($("#email").val() == null || $("#email").val() == "") {
		alert("계정(이메일)을 입력해주세요.");
		$("#email").focus();
		 
		return false;
	}
	 
	/* if (confirm("비밀번호를 찾으시겠습니까?")) {
	 
		$("#forgotPwForm").submit();
	 
		return false;
	} */
}

/* $("#findBtns").click(function () {
    let name = $("#name").val();
    let email = $("#email").val();

    $.ajax({
        type: "GET",
        url: "/member/forgotResultPw",
        data: {
            "name": name,
            "email": email
        },
        success: function (res) {
            if (res['check']) {
                swal("발송 완료!", "입력하신 이메일로 임시비밀번호가 발송되었습니다.", "success").then((OK) = > {
                    if(OK) {
                        $.ajax({
                            type: "POST",
                            url: "/member/forgotResultPw/sendEmail",
                            data: {
                                "name": name,
                                "email": email
                            }
                        })
                        window.location = "/member/login";
                    }


                }
            )
                $('#checkMsg').html('<p style="color:darkblue"></p>');
            } else {
                $('#checkMsg').html('<p style="color:red">일치하는 정보가 없습니다.</p>');
            }
        }
    })
}) */

$(function() {
    $('#findBtns').click(function() {                      
        $.ajax({
            url: '/VerifyRecaptcha',
            type: 'post',
            data: {recaptcha: $("#g-recaptcha-response").val()},
            success: function(res) {
                const data=JSON.parse(res);
                if(data.success){                       
		$("#forgotPwForm").submit();
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
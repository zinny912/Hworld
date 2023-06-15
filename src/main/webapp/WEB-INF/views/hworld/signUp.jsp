<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
	<c:import url="../temp/style.jsp"></c:import>    
</head>

<body class="signup-page theme-color2">
    <!-- testValue -->
    ${state}
    <form:form action="./signUp" id="signUpForm" method="post" modelAttribute="memberVO">
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
                    <div class="login-title mb-5">
                        <h2 style="margin-top: 15px;">회원 가입</h2>
                    </div>

                    <!-- 선택 데이터 영역 -->

                    <div class="mb-4 row">
                        <div class="col-9">	                		
                            <input class="form-control" type="email" name="email" id="email" placeholder="사용자 계정(이메일)">		                    			                    
                        </div>			                    
                        <button class="col-3 row btn btn-solid-default btn-sm fw-bold" name="sendBtn" id="sendBtn" type="button" onclick="sendNumber()">
                            인증번호 전송
                        </button>
                    </div> 
                                                                                        
                    <div class="mb-4 row" id="emailNumber" name="emailNumber" style="display: none;">
                        <div class="col-9">
                            <input class="form-control" type="text" name="emailCheck" id="emailCheck" placeholder="인증번호 입력">		                    			                    
                        </div>                    
                        <button class="col-3 row btn btn-solid-default btn-sm fw-bold" name="confirmBtn" id="confirmBtn" type="button" onclick="confirmNumber()">
                            확인
                        </button>
                    </div>
                    <input type="text" id="Confirm" name="Confirm" style="display: none" value="">

                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control" type="password" name="pw" id="pw" placeholder="비밀번호">
                        </div>
                    </div>		                			                    		                                                                
                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control" type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 확인">                            
                        </div>                            
                    </div>
                            
                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control" type="text" name="name" id="name" placeholder="이름">				                   
                        </div>                   		                    
                    </div>	                		
                    
                    <div class="mb-4 row">
                        <div class="col-6" style="padding-right: 6px">		                                                   
                            <input class="form-control" type="text" name="rrnf" id="rrnf" placeholder="주민등록번호 앞자리">		                            
                        </div>

                        <div class="col-6" style="padding-left: 6px">
                            <input class="form-control" type="password" name="rrnl" id="rrnl" placeholder="주민등록번호 뒷자리">		                            
                        </div>
                    </div>

                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control" type="tel" name="tel" id="tel" placeholder="연락처">
                        </div>
                        <div id="validPN">
                        </div>
                    </div>

                    <div class="mb-4 row">
                        <div class="col-9">
                            <input class="form-control address_input_1" name="address1" readonly="readonly" placeholder="우편번호">
                        </div>
                        
                        <button class="col-3 row btn btn-solid-default btn-sm fw-bold" type="button" onclick="execution_daum_address()">
                            <span>주소 찾기</span>
                        </button>
                    </div>

                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control address_input_2" name="address2" readonly="readonly" placeholder="도로명 주소">
                        </div>
                    </div>

                    <div class="mb-4 row">
                        <div class="col-12">
                            <input class="form-control address_input_3" name="address3" readonly="readonly" placeholder="상세 주소">						
                        </div>
                    </div>														               

                    <div class="button login" >
                        <button type="submit">
                            <span>가입하기</span>
                            <i class="fa fa-check"></i>
                        </button>
                    </div>
                    
                    <p><a href="/member/login" class="theme-color">이미 계정이 있으신가요?</a></p>
                </div>
            </div>
        </div>
        <!-- Sign Up Section End -->
        <div class="bg-overlay"></div>
    </form:form>

    <div class="bg-overlay"></div>

<script src="/assets/js/signUp.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
/* var timer = null;
var isRunning = false;

$(".email_btn").on("click", function() {
  var display = $(".time");
  // 유효시간 설정
  var leftSec = 5;

  // 버튼 클릭 시 시간 연장
  if (isRunning){
    clearInterval(timer);
    display.html("");
    startTimer(leftSec, display);
  }else{
  	startTimer(leftSec, display);
  }
});
    
function startTimer(count, display) {  
  var minutes, seconds;
  timer = setInterval(function () {
    minutes = parseInt(count / 60, 10);
    seconds = parseInt(count % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    display.html(minutes + ":" + seconds);

    // 타이머 끝
    if (--count < 0) {
    clearInterval(timer);
    alert("시간초과");
    display.html("시간초과");
//      $("button").attr("disabled", true);
    isRunning = false;
}
}, 1000);
isRunning = true;
}
 */

</script>
</body>

</html>
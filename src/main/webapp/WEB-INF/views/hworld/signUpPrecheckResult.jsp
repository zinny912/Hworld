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
    <style>
        .icon{
            font-size: 5em;
            animation: motion 0.6s /* 속도 */
                    linear 0s   /* 처음부터 끝까지 일정 속도로 진행 */
                    infinite alternate; /* 무한 반복 */
        }
        @keyframes motion {
            0% {margin-top: 0px;} /* 처음 위치 */
            100% {margin-top: 10px;} /* 마지막 위치 */
        }

        .floating {
            animation-name: floating;
            animation-duration: 3s;
            animation-iteration-count: infinite;
            animation-timing-function: ease-in-out;
        }
        @keyframes floating {
            from { transform: translate(0,  0px); }
            65%  { transform: translate(0, 15px); }
            to   { transform: translate(0, -0px); }
        } 
		</style>

</head>

<body class="theme-color2 light ltr">
	<form:form action="" id="precheckForm" method="get">
		<input type="hidden" name="opt1" value="${result.state}">
		<input type="hidden" name="opt2" value="${result.account.memberNum}">
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
						<h2 style="margin-top: 15px;">조회 결과</h2>
					</div>

					<!-- 선택 데이터 영역 -->
					<c:choose>
						<c:when test="${result.state eq 1}">
							<div class="image d-flex justify-content-center my-5">
								<img class="icon floating" src="/assets/images/exclamation.png" alt="" style="width: 40%;">
							</div>
							<div class="search-result my-2" style="text-align: center;">
								<h3>회선 가입 정보가 없습니다. 회원가입을 해주세요</h3>
							</div>
							<div class="button login button-3">
								<button type="button" id="state1">
									<span>회원 가입</span>
									<i class="fa fa-check"></i>
								</button>
							</div>
						</c:when>

						<c:when test="${result.state eq 2}">
							<div class="image d-flex justify-content-center my-5">
								<img class="icon floating" src="/assets/images/exclamation.png" alt="" style="width: 40%;">
							</div>
							<div class="search-result my-2" style="text-align: center;">
								<h3>일치하는 회원정보가 없습니다.</h3>
								<h3>(주민번호일치, 이름 불일치)</h3>
								<p>실제로는 없는 상황이거나, 비정상적 접근.</p>
							</div>
						</c:when>

						<c:when test="${result.state eq 3}">
							<div class="success-icon" style="background-color: white;">
								<div class="main-container">
									<div class="check-container">
										<div class="check-background">
											<svg viewBox="0 0 65 51" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M7 25L27.3077 44L58.5 7" stroke="white" stroke-width="13"
													stroke-linecap="round" stroke-linejoin="round"/>
											</svg>
										</div>
										<div class="check-shadow"></div>
									</div>
								</div>
							</div>
							<div class="search-result my-2" style="text-align: center;">
								<h3>회선 가입 정보가 있습니다. 회원가입을 해주세요</h3>
							</div>
							<div class="button login button-3">
								<button type="button" id="state3">
									<span>회원 가입</span>
									<i class="fa fa-check"></i>
								</button>
							</div>
						</c:when>

						<c:when test="${result.state eq 4}">
							<div class="image d-flex justify-content-center my-5">
								<img class="icon floating" src="/assets/images/exclamation.png" alt="" style="width: 40%;">
							</div>
							<div class="search-result my-2" style="text-align: center;">
								<h3>회원 가입 정보가 존재합니다. 로그인을 해주세요</h3>
							</div>
							<div class="button login button-3">
								<button type="button" id="state4">
									<span>로그인</span>
									<i class="fa fa-check"></i>
								</button>
							</div>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
		<!-- Sign Up Section End -->
		<div class="bg-overlay"></div>
	</form:form>
	
<script>                                                                                                                 
//const path = "${pageContext.request.contextPath}";

//가입버튼 눌렀을 때
$('#state1').click(function(){
	console.log('회원 가입 버튼');
	$('#precheckForm').attr('action', './signUp');
	$('#precheckForm').submit();
})

$('#state3').click(function(){
	console.log('회원 가입 버튼');
	$('#precheckForm').attr('action', './signUp');
	$('#precheckForm').submit();
})

$('#state4').click(function(){
	console.log('로그인 버튼');
	$('#precheckForm').attr('action', './login');
	$('#precheckForm').submit();
})
</script>

</body>

</html>
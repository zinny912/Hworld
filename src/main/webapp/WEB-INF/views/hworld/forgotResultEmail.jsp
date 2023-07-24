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
    <title>검색 결과</title>
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
	<form:form action="./forgotResultEmail" id="forgotResultEmailForm" method="post" modelAttribute="memberVO">
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
	
	                <!-- <div class="login-title mb-3">
	                    <h2>조회 결과</h2>
	                </div> -->
					
					<c:choose>                                                                          
			            <c:when test="${empty memberVO}">
			                <!-- 검색 결과 표시 영역 -->
			                <!-- ID/PW 검색 실패시 -->
			                <!-- 하얀색 경고표시 + 애니메이션은 icon, floating까지 -->
			                <div class="image d-flex justify-content-center my-5">
			                    <img class="icon floating" src="/assets/images/exclamation.png" alt="" style="width: 40%;">
			                </div>
			                <div class="search-result my-2" style="text-align: center;">
			                    <h3>일치하는 사용자가 없습니다.</h3>
			                </div>
		            	</c:when>                                                           
		            	<c:otherwise>
			                <!-- ID/PW 검색 성공시 -->
			                <!-- 초록색 체크무늬 아이콘 -->
			                <div class="success-icon" style="background-color: white;">
			                    <div class="main-container">
			                        <div class="check-container">
			                            <div class="check-background">
			                                <svg viewBox="0 0 65 51" fill="none" xmlns="http://www.w3.org/2000/svg">
			                                    <path d="M7 25L27.3077 44L58.5 7" stroke="white" stroke-width="13"
			                                        stroke-linecap="round" stroke-linejoin="round" />
			                                </svg>
			                            </div>
			                            <div class="check-shadow"></div>
			                        </div>
			                    </div>
			                </div>
		                </c:otherwise>
		            </c:choose>
	
	                <div class="search-result my-2" style="text-align: center;">
	                    <c:choose>                                                                          
				            <c:when test="${empty memberVO}">                                                 
				                <h3>조회된 계정이 없습니다.</h3>                                        
				            </c:when>                                                           
				            <c:otherwise>                                                                     
				                <h3>사용자 계정은 ${memberVO.email}입니다.</h3>                                              
				            </c:otherwise>                                              
				        </c:choose>                    
	                </div>
	
	                <!-- 버튼 영역 -->
	                <c:choose>                                                                          
			            <c:when test="${empty memberVO}">
			                <div class="button login button-1">
			                    <button type="button" onclick="location.href = 'forgotId';">
			                        <span>돌아가기</span>
			                        <i class="fa fa-check"></i>
			                    </button>
			                </div>
	                	</c:when>
	                	<c:otherwise>
			                <div class="button login button-2">
			                    <button type="button" onclick="location.href = 'login';">
			                        <span>로그인 화면으로</span>
			                        <i class="fa fa-check"></i>
			                    </button>
			                </div>
	                	</c:otherwise>                                              
			        </c:choose>
	            </div>
	        </div>
	    </div>
	    <!-- Sign Up Section End -->
	    <div class="bg-overlay"></div>
    </form:form>
<script>                                                                                                                 
var path = "${pageContext.request.contextPath }";                                                                           
                                                                                            
$(document).ready(function() {                                                                                            
                                                                                            
});                                                                                                                       
                                                                                            
</script>
</body>

</html>
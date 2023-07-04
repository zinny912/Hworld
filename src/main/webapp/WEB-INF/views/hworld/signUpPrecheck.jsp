<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>
</head>

<body class="signup-page theme-color2">
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
                    <h2 style="margin-top: 15px;">회원 확인</h2>
                </div>

                <!-- 정보 입력 영역 -->
                <form action="./precheck" method="post">
                <div class="mt-5">
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
                </div>
                

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button type="submit">
                        <span>확인(회선O)</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>

                <!-- 나중에 지울 버튼 -->
                <!-- <div class="button login">
                    <button onclick="location.href = '/etc/findShop';">
                        <span>대리점 위치안내</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div> -->
                </form>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->
    <div class="bg-overlay"></div> 

</body>

</html>
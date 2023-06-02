<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>번호이동</title>
	<style>
	.flex-container {
	        display: flex;
	        align-items: center;
	        width: 100%;
	        overflow-x: hidden;
	        overflow-y: hidden;
	    }
	
	    .flex-container > * {
	        margin-right: 0px;
	        width: 100%;
	    }
	</style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    <!-- Breadcrumb section start -->
    <section class="breadcrumb-section section-b-space">
        <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3>번호이동</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">기존 H world를 이용하고 계셨던 고객</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Contact Section Start -->
    <section class="contact-section">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="materialContainer">
                            <div class="material-details">
                                <div class="title title1 title-effect mb-1 title-left">
                                    <h2>5G 프리미어 (번호이동)</h2>
                                    <p class="fs-3 w-100 text-center">000 고객님, <strong class="fs-2 theme-color">H world</strong>에 오신것을 환영합니다! <br> 선택하신 <strong class="fs-2 theme-color">요금상품</strong>으로 <strong class="fs-2 theme-color">번호이동</strong>이 완료되었습니다.</p>
                                </div>
                            </div>
                            <div class="">
                                <div class="row mb-5 justify-content-center">
                                    <div class="col-lg-5 text-center">
                                        <div class="contact-details rounded-3 mt-3 mb-3 ">
                                            <div class="container">
                                                <button class="btn rounded-pill m-1 default-theme mb-3"> <h6>선택한 요금상품</h6></button>
                                                <h2 class="fw-bolder">5G 프리미어</h2>
                                                <div class="container">
                                                    <h2 class="font-light" >010-0000-0000 </h2>
                                                </div>
                                                <div class="contact-box justify-content-center" style="border-bottom:2px solid; border-color:#fff; padding-bottom:20px;">
                                                    <div class="mx-6 ">
                                                        <img class="mb-4"src="/assets/images/zinny/mobile-phone1.png">
                                                        <h3 class="mb-2 ">통신사 : H world </h3>
                                                        <h3>개통날짜 : 2023년 00월 00일</h3>
                                                    </div>   
                                                </div>
                                                <div class="contact-box justify-content-center">
                                                    <div class="contact-title">
                                                        <span class="fs-6 mb-0">휴대폰을 재부팅하시면 <br> H world 통신사로 변경이 완료됩니다.</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
            </div>                
    </section>

    <div class="container mb-4">
        <div class="col-12 col-md-3 mb-3 container justify-content-center">
        <button onclick="location.href = 'zyogeumje2.html';" type="button" class="btn rounded-3 btn-solid-default">부가서비스 보러가기</button>
        <button onclick="location.href = 'mypaget.html';" type="button" class="btn rounded-3 btn-secondary">마이페이지</button>
        </div>
    </div>
<!-- Contact Section End -->    
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
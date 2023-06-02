<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>부가서비스 신청</title>
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
                    <h3>부가서비스 신청</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">요금제&부가서비스 > V 컬러링</li>
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
                                <h2>V 컬러링</h2>
                                <p class="fs-3 w-100 text-center">000 고객님, 선택하신 <strong class="fs-2 theme-color">부가서비스</strong>를 <strong class="fs-2 theme-color">확인</strong> 하세요.</p>
                            </div>
                        </div>
                    <div class="">
                    <div class="row mb-5 justify-content-center">
                        <div class="col-lg-5 text-center">
                            <div class="contact-details rounded-3 mt-3 mb-3 ">
                                <div class="container">
                                    <button class="btn rounded-pill m-1 btn-outline-secondary mb-3"> <h6>선택한 부가서비스</h6></button>
                                    <h2 class="fw-bolder">V 컬러링</h2>
                                    <div class="container">
                                        <h2 class="font-light" >010-0000-0000 </h2>
                                    </div>
                                  
        
                                    <div class="contact-box justify-content-center">
                                        <div class="contact-title">
                                        <span class="fs-4 mb-0 fw-bolder theme-color">월 3,300원</span>
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
                </div>
            </div>
        </div>                  
    </section>
    <div class="container mb-4">
        <div class="col-12 mb-3 container text-center">
                <label class="form-check-label fw-bolder fs-5" for="flexCheckDefault1">선택하신 부가서비스를 신청 하시겠습니까?</label>
        </div>
        <div class="container col-12" style="width: 17.66667%">   
        <button onclick="location.href = 'zsuccess_modify.html';" type="button" class="btn rounded-3 btn-solid-default">신청하기</button>
        <button onclick="location.href = '#';" type="button" class="btn rounded-3 btn-secondary">취소</button>
        </div>  
        </div>
    </div>
    <!-- Contact Section End -->    
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
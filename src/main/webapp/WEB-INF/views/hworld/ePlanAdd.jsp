<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>요금 추가 페이지</title>
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
                    <h3>부가서비스 등록</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">부가서비스</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Shop Section start -->
    <section class="section-b-space">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-6" >
                    <h3 class="mb-3 fw-bold">부가서비스</h3>
                    <form action="./ePlanAdd" method="POST" class="planAdd">
                        <div class="row g-4">
                            <!-- 부가서비스 정보 -->
                            <div class="col-md-6">
                                <label for="fname" class="form-label">이름</label>
                                <input type="text" class="form-control" id="fname" placeholder="부가서비스명">
                            </div>
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="fname" class="form-label">이름2</label>
                                <input type="text" class="form-control" id="fname" placeholder="부가서비스 간략설명" >
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">월 요금</label>
                                <input type="text" class="form-control" id="fname" placeholder="월 사용료">
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">한줄설명 테이블</label>
                                <input type="text" class="form-control" id="fname" placeholder="간략소개">
                            </div>
                            <!-- 한 줄 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 설명</label>
                                <input type="text" class="form-control" id="fnum" >
                            </div>
                            <!-- 한 줄 유의사항 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 유의사항</label>
                                <input type="text" class="form-control" id="fnum" >
                            </div>
                            <!-- 상세정보 서머노트하자 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">상세정보</label>
                                <textarea class="form-control col-md-12" name="" id="" cols="100" rows="10" readonly> 서머노트로 상세정보 입력할예정</textarea>
                            </div>
                            <!-- 확인버튼 -->
                            <div class="col-12 d-flex justify-content-center">
                                <button class="btn btn-solid-default mx-auto" id="btn2">등록하기</button>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </section> 
    <!-- Shop Section end -->
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
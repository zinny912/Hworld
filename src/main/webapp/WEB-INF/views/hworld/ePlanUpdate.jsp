<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>부가서비스 수정 페이지</title>
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
                    <h3>부가서비스 수정 페이지</h3>
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
                    <form class="needs-validation">
                        <div class="row g-4">
                            <!-- 부가서비스 정보 -->
                            <div class="col-md-6">
                                <label for="fname" class="form-label">이름</label>
                                <input type="text" class="form-control" id="fname" value="V 컬러링">
                            </div>
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="fname" class="form-label">이름2</label>
                                <input type="text" class="form-control" id="fname" placeholder="(보이는 컬러링)" >
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">월 요금</label>
                                <input type="text" class="form-control" id="fname" placeholder="3,300원">
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">한줄설명 테이블</label>
                                <input type="text" class="form-control" id="fname" placeholder="전화를 걸면 거는 사람에게 영상이 보이는 컬러링">
                            </div>
                            <!-- 한 줄 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 설명</label>
                                <input type="text" class="form-control" id="fnum" value="이제는 눈으로 컬러링을 들어보세요">
                            </div>

                            <!-- 한 줄 유의사항 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 유의사항</label>
                                <input type="text" class="form-control" id="fnum" value="부가서비스는 청구금액에 포함되어 계산됩니다.">
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
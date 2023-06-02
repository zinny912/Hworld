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
                    <h3>요금제 수정 페이지</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">5G</li>
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
                    <h3 class="mb-3 fw-bold">요금제</h3>
                    <form class="needs-validation">
                        <div class="row g-4">
                            <!-- 요금제 정보 -->
                            <div class="col-md-6">
                                <label for="validationCustom04" class="form-label" >종류</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="5G 요금제">5G 요금제</option>
                                        <option>시니어 요금제</option>
                                        <option>청소년 요금제</option>
                                        <option>ZEM 요금제</option>
                                        <option>군인 요금제</option>
                                        <option>복지 요금제</option>
                                    </select>
                                </div>
                            </div>
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="fname" class="form-label">월 가격</label>
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" value="88,000원">
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">이름</label>
                                <input type="text" class="form-control" id="fname" value="5G 프리미어">
                            </div>
                            <div class="col-md-6">
                                <label for="fname" class="form-label">이름2</label>
                                <input type="text" class="form-control" id="fname" value="(데이터 + 문자 + 통화 무제한)">
                            </div>
                            <!-- 한 줄 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 설명</label>
                                <input type="text" class="form-control" id="fnum" value="속도제한 없이 진짜 무제한" >
                            </div>
                            <!-- 데이터량 -->
                            
                            <div class="col-md-4">
                                <label for="lnum" class="form-label">데이터량</label>
                                <input type="text" class="form-control" id="fnum" value="무제한">
                            </div>
                            <div class="col-md-4">
                                <label for="lnum" class="form-label">통화량</label>
                                <input type="text" class="form-control disabled" id="fnum" value="기본제공" >
                            </div>
                            <div class="col-md-4">
                                <label for="lnum" class="form-label">문자량</label>
                                <input type="text" class="form-control" id="fnum" value="기본제공">
                            </div>
                            
                           
                            <!-- 한 줄 유의사항 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">한 줄 유의사항</label>
                                <input type="text" class="form-control" id="fnum" value="기존 이용고객분들은 위약금 발생에 유의해주세요.">
                            </div>
                            <!-- 상세정보 서머노트하자 -->
                            <div class="col-md-12">
                                <label for="fnum" class="form-label">상세정보</label>
                                <textarea class="form-control col-md-12" name="" id="" cols="100" rows="10" value="" >국내에서 속도 제한 없이 데이터 무제한 이용 가능합니다.</textarea>
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
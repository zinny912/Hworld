<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>대리점 찾기</title>
    <style>
        .tracker-table .table tbody tr td input[type="checkbox"] {
            width: 20px; 
            margin-right: 8px; 
            accent-color: #e22454; }
        .tracker-table .table tbody tr td {
            vertical-align: middle;
            color: #777777;
            border-top: 0;
            border-bottom: 1px solid #eff2f7 !important;
            text-align: left;
            padding: calc(0px + (16 - 0) * ((100vw - 320px) / (1920 - 320))) calc(6px + (16 - 6) * ((100vw - 320px) / (1920 - 320)));
            min-width: 0px; }
            
        .select-featured {
            border: 1px solid #ced4da;
            color: #8f8397;
            margin-left: auto;
            border-radius: 0; }
        .select-featured:focus {
            border-color: #eff2f7;
            -webkit-box-shadow: 0 0 0 0.25rem transparent;
                    box-shadow: 0 0 0 0.25rem transparent; }
        .select-featured .dropdown-toggle {
            border: 1px solid #ced4da;
            color: #8f8397;
            margin-left: auto;
            border-radius: 0;
            font-weight: 400;
            padding: 0.375rem 2.25rem 0.375rem 0.75rem;
            position: relative; }
        .select-featured .dropdown-toggle::after {
            display: none; }
        .select-featured .dropdown-toggle::before {
            content: "\f107";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            top: 50%;
            -webkit-transform: translateY(-50%);
                    transform: translateY(-50%);
            right: 14px; }
        .select-featured .dropdown-menu {
            min-width: 100%; }
        .select-featured .dropdown-menu li {
            width: 100%; }
    </style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    <!-- mobile fix menu start -->
    <div class="mobile-menu d-sm-none">
        <ul>
            <li>
                <a href="index.html">
                    <i data-feather="home"></i>
                    <span>Home</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)" class="toggle-category">
                    <i data-feather="align-justify"></i>
                    <span>Category</span>
                </a>
            </li>
            <li>
                <a href="cart.html">
                    <i data-feather="shopping-bag"></i>
                    <span>Cart</span>
                </a>
            </li>
            <li>
                <a href="wishlist.html">
                    <i data-feather="heart"></i>
                    <span>Wishlist</span>
                </a>
            </li>
            <li>
                <a href="user-dashboard.html">
                    <i data-feather="user"></i>
                    <span>Account</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- mobile fix menu end -->

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
                    <h3>대리점 찾기</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="search-shop.html">대리점 찾기</a></li>
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
            <div class="d-flex">
                <div class="material-details col-4 mb-2">
                    <!-- 제목 + 밑줄 디자인 -->
                    <div class="title title1 title-effect mb-1 title-left">
                        <h2>대리점 찾기</h2>
                        <p class="ms-0 w-100">가까운 매장을 찾아보세요</p>
                    </div>
                </div>

                <div class="d-flex justify-content-end col-8 my-2 align-items-start">

                    <!-- 검색옵션+검색창+돋보기버튼 -->
                    <div class="filter-options justify-content-end" style="margin-top: 30px;">
                        <div class="select-options">
                            <div class="page-view-filter">
                                <div class="dropdown select-featured" style="border-radius: 0.3rem;">
                                    <div class="input-group">
                                        <!-- 드롭다운 -->
                                        <button class="btn dropdown-toggle border-0" type="button" data-bs-toggle="dropdown" id="dropdownMenuButton1" aria-expanded="false">
                                            검색옵션
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a class="dropdown-item" href="javascript:void(0)">매장명</a></li>
                                            <li><a class="dropdown-item" href="javascript:void(0)">전화번호</a></li>
                                            <li><a class="dropdown-item" href="javascript:void(0)">주소</a></li>
                                            <!-- <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="javascript:void(0)">Separated link</a></li> -->
                                        </ul>
                                        <!— 검색창 —>
                                        <div class="search-section ">
                                            <div class="col-md-3">
                                            </div>
                                            <div class="input-group search-bar ">
                                                <input type="search" class="form-control search-input border-0" placeholder="Search">
                                                <!— 검색버튼 —>
                                                <button class="input-group-text search-button" type="button" id="button-addon2">
                                                    <i class="fas fa-search text-color"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- 검색 옵션 영역 -->
                    <!-- <div class="filter-options justify-content-end col-1" style="margin-right: 1rem; margin-top: 35px;">
                        <div class="select-options">
                            <div class="page-view-filter">
                                <div class="dropdown select-featured">
                                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        검색옵션
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션1</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션2</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션3</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> -->

                    <!-- 검색 영역 -->
                    <!-- <div class="search-section col-5">
                        <div class="col-md-3" style="border: 2px;">
                        </div>
                        <div class="input-group search-bar col-md-9">
                            <input type="search" class="form-control search-input" placeholder="Search" style="height:35px; margin-top: 35px; padding-left: 100px;">
                            <button class="input-group-text search-button" id="basic-addon3" style="padding: 0 15px; margin-top: 35px;">
                                <i class="fas fa-search text-color"></i>
                            </button>
                        </div>
                    </div> -->

                    <!-- 원본 -->
                    <!-- <div class="filter-options justify-content-end col-1" style="margin-right: 1rem; margin-top: -10px;">
                        <div class="select-options">
                            <div class="page-view-filter">
                                <div class="dropdown select-featured">
                                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        이거 어디까지 올라가는거에요?
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션1</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션2</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)">
                                                옵션3</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="search-section col-5">
                        <div class="input-group search-bar">
                            <input type="search" class="form-control search-input" placeholder="Search" style="height:35px; margin-top: -10px;" >
                            <button class="input-group-text search-button" id="basic-addon3" style="padding: 0 15px; margin-top: -10px;">
                                <i class="fas fa-search text-color"></i>
                            </button>
                        </div>
                    </div> -->
                </div>
            </div>
            
            <div class="row g-4">
                <div class="col-lg-6">
                    <div class="materialContainer">
                        <!-- 지도 표시 영역 -->
                        <section class="contact-section">
                            <div class="container-fluid">
                                <div class="row gy-4">
                                    <div class="col-12 p-0" style="margin-top: 5px; height: 22.5rem">
                                        <div class="location-map" style="height: 22.5rem">
                                            <iframe
                                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7227.225249699896!2d55.17263937326456!3d25.081115462415855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f43496ad9c645%3A0xbde66e5084295162!2sDubai%20-%20United%20Arab%20Emirates!5e0!3m2!1sen!2sin!4v1632538854272!5m2!1sen!2sin"
                                                loading="lazy"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section> 
                    </div>
                </div>

                <!-- 대리점 리스트 + 추가/수정/삭제 버튼 -->
                <div class="col-lg-6 overflow-visible">
                    <!-- 추가/수정/삭제 버튼 -->
                    <div class="d-flex justify-content-end mb-1" style="height: 49px;">
                        <!-- 버튼 ㅇ -->
                        <c:choose>
                        	<c:when test="${memberVO.adminCheck eq 0}">
		                        <div class="product-buttons">
		                            <a href="javascript:void(0)" data-bs-toggle="modal"
		                                data-bs-target="#shop-add" class="btn btn-solid-default btn-sm fw-bold">
		                                <span>등록</span> 
		                            </a>
		                            <a href="javascript:void(0)" data-bs-toggle="modal"
		                                data-bs-target="#shop-update" class="btn btn-solid-default btn-sm fw-bold ms-1">
		                                <span>수정</span> 
		                            </a>
		                            <a href="javascript:void(0)" data-bs-toggle="modal"
		                                data-bs-target="#shop-delete" class="btn btn-solid-default btn-sm fw-bold ms-1">
		                                <span>삭제</span> 
		                            </a>
		                        </div>
                        	</c:when>
                        	<c:otherwise>
                        	</c:otherwise>
                        </c:choose>
                    </div>
                    
                    <!-- 대리점 리스트(5개씩) -->
                    <div class="tracker-table" style="padding-top: 0px;">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="table-head">
                                        <th></th>
                                        <th scope="col" style="text-align: left;">매장명</th>
                                        <th scope="col" style="text-align: left;">전화번호</th>
                                        <th scope="col" style="text-align: left;">주소</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <!-- <div class="container">
                                            <ul class="checkbox-details">
                                                <li class="checkbox-list mt-3">
                                                    <div class="form-check user-checkbox ps-0">
                                                        <input class="checkbox_animated check-it" type="checkbox" value=""
                                                            id="flexCheckDefault1">
                                                        <label class="form-check-label fw-bolder" for="flexCheckDefault1">위 안내사항을 확인하였습니다.</label>
                                                    </div>
                                                </li>  
                                            </ul>  
                                        </div>  -->
                                        
                                        <td>
	                                        <c:choose>
	                        					<c:when test="${memberVO.adminCheck eq 0}">
	                                            <input type="checkbox" class="checkbox_animated check-it" name="" id="">
	                                            </c:when>
					                        	<c:otherwise>
					                        	</c:otherwise>
					                        </c:choose>
                                        </td>
                                        <td>
                                            <p>H World 가산점</p>
                                        </td>
                                        <td>
                                            <p>010-1234-5678</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold">가산동 225-11 10층</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <c:choose>
	                        					<c:when test="${memberVO.adminCheck eq 0}">
	                                            <input type="checkbox" class="checkbox_animated check-it" name="" id="">
	                                            </c:when>
					                        	<c:otherwise>
					                        	</c:otherwise>
					                        </c:choose>
                                        </td>
                                        <td>
                                            <p>H World 금천구청점</p>
                                        </td>
                                        <td>
                                            <p>010-1233-4566</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold">시흥대로 223-17</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <c:choose>
	                        					<c:when test="${memberVO.adminCheck eq 0}">
	                                            <input type="checkbox" class="checkbox_animated check-it" name="" id="">
	                                            </c:when>
					                        	<c:otherwise>
					                        	</c:otherwise>
					                        </c:choose>
                                        </td>
                                        <td>
                                            <p>H World 계양점</p>
                                        </td>
                                        <td>
                                            <p>010-1123-6654</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold">벚꽃로 123-55</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <c:choose>
	                        					<c:when test="${memberVO.adminCheck eq 0}">
	                                            <input type="checkbox" class="checkbox_animated check-it" name="" id="">
	                                            </c:when>
					                        	<c:otherwise>
					                        	</c:otherwise>
					                        </c:choose>
                                        </td>
                                        <td>
                                            <p>H World 부평구청점</p>
                                        </td>
                                        <td>
                                            <p>010-5555-8876</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold">파란로 1123-55</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <c:choose>
	                        					<c:when test="${memberVO.adminCheck eq 0}">
	                                            <input type="checkbox" class="checkbox_animated check-it" name="" id="">
	                                            </c:when>
					                        	<c:otherwise>
					                        	</c:otherwise>
					                        </c:choose>
                                        </td>
                                        <td>
                                            <p>H World 독산점</p>
                                        </td>
                                        <td>
                                            <p>010-7272-5552</p>
                                        </td>
                                        <td>
                                            <p class="fw-bold">시흥대로 187-15</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- 페이지 처리 섹션 -->
                    <nav class="page-section my-3">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                    <span aria-hidden="true">
                                        <i class="fas fa-chevron-left"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="javascript:void(0)">1</a>
                            </li>
                            <!-- <li class="page-item">
                                <a class="page-link" href="javascript:void(0)">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0)">3</a>
                            </li> -->
                            <li class="page-item">
                                <a class="page-link" aria-label="Next">
                                    <span aria-hidden="true">
                                        <i class="fas fa-chevron-right"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <!-- 페이지 처리 끝 -->
                </div>
                
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- 모달 - 대리점 등록 영역 -->
    <div class="modal fade quick-view-modal" id="shop-add">
        <div class="modal-dialog modal-lg modal-dialog-centered col-12">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-12">
                            <div class="product-right">
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">대리점 정보 등록</h2>
                                    <!-- 전체 덮개 -->
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>매장명</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" placeholder="매장 이름 입력" required="">
                                        </div>
                                    </div>
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>전화번호</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" placeholder="연락가능한 번호 '-'없이  숫자만 입력" required="">
                                        </div>
                                    </div>
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>주소</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" placeholder="주소 입력" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="product-btns d-flex justify-content-center">
                                    <button type="button" class="btn btn-solid default-theme btn-sm mx-1"
                                        data-bs-dismiss="modal">등록</button>
                                    <button type="button" class="btn btn-secondary btn-sm mx-1"
                                        data-bs-dismiss="modal">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 모달 - 대리점 등록 영역 -->

    <!-- 모달 - 대리점 수정 영역 -->
    <div class="modal fade quick-view-modal" id="shop-update">
        <div class="modal-dialog modal-lg modal-dialog-centered col-12">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-12">
                            <div class="product-right">
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">대리점 정보 수정</h2>
                                    <!-- 전체 덮개 -->
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>매장명</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" value="" required="">
                                        </div>
                                    </div>
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>전화번호</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" value="" required="">
                                        </div>
                                    </div>
                                    <div class="row my-3">
                                        <div class="col-md-2 my-auto">
                                            <h3>주소</h3>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control my-auto" id="first" value="" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="product-btns d-flex justify-content-center">
                                    <!-- class="btn btn-solid-default btn-sm mx-1" -->
                                    <button type="button" class="btn btn-solid default-theme btn-sm mx-1"
                                        data-bs-dismiss="modal">수정</button>
                                    <button type="button" class="btn btn-secondary btn-sm mx-1"
                                        data-bs-dismiss="modal">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 모달 - 대리점 수정 영역 -->

    <!-- 모달 - 대리점 삭제 영역 -->
    <div class="modal fade quick-view-modal" id="shop-delete">
        <div class="modal-dialog modal-lg modal-dialog-centered col-12">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-12">
                            <div class="product-right">
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">대리점 정보 삭제</h2>
                                    <!-- 전체 덮개 -->
                                    <div class="row my-3">
                                        <h3>선택된 대리점 정보를 삭제하시겠습니까?</h3><br>
                                    </div>
                                </div>
                                <div class="product-btns d-flex justify-content-center">
                                    <button type="button" class="btn btn-solid default-theme btn-sm mx-1"
                                        data-bs-dismiss="modal">삭제</button>
                                    <button type="button" class="btn btn-secondary btn-sm mx-1"
                                        data-bs-dismiss="modal">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 모달 - 대리점 삭제 영역 -->


    <!-- 원본 모달 -->
    <!-- <div class="modal fade quick-view-modal" id="quick-view2">
        <div class="modal-dialog modal-lg modal-dialog-centered col-12">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-12">
                            <div class="product-right">
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">이전 통신사 정보</h2>
                                    <ul class="">
                                        <li class="selected">SKT</li>
                                        <li>KT</li>
                                        <li>LGU+</li>
                                    </ul>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control mb-3" id="first" placeholder="휴대폰 번호 '-'없이 숫자만 입력" required="">
                                </div>
                                <div class="size-detail">
                                    <h2 class="mb-3 fw-bolder">가입자 정보</h2>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control mb-3" id="first" placeholder="연락가능한 번호 '-'없이  숫자만 입력" required="">
                                    </div>
                                    <div class="col-md-12">
                                        <input type="email" class="form-control mb-3" id="first" placeholder="이메일 아이디" required="">
                                    </div>
                                    <div class="col-md-12">
                                        <div class=" d-flex">
                                        <input type="text" class="form-control mb-3" id="first" placeholder="주소입력" required=""> 
                                        <button type="button" class="btn btn-solid-default btn-sm" style="height:50%; text-align:center;">주소찾기</button>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control mb-3" id="first" placeholder="상세주소입력" required="">
                                    </div>
                                </div>
                                <div class="product-btns">
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">Add to cart</button>
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">View details</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->


    <!-- --------------------------------------------------------------------------------------------------------->

    <!-- Quick view modal start -->
    <div class="modal fade quick-view-modal" id="quick-view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row gy-4">
                        <div class="col-lg-6">
                            <div class="quick-view-image">
                                <div class="quick-view-slider">
                                    <div>
                                        <img src="/assets/images/electronics/product/1.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/9.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                                <div class="quick-nav">
                                    <div>
                                        <img src="/assets/images/electronics/product/1.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/9.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                    <div>
                                        <img src="/assets/images/electronics/product/8.jpg"
                                            class="img-fluid blur-up lazyload" alt="product">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-right">
                                <h2 class="mb-2">Smart Watch ERT2</h2>
                                <h6 class="font-light mb-1">Model LR274</h6>
                                <ul class="rating">
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star theme-color"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star"></i>
                                    </li>
                                    <li>
                                        <i class="fas fa-star"></i>
                                    </li>
                                </ul>
                                <div class="price mt-3">
                                    <h3>$20.00</h3>
                                </div>
                                <div class="color-types">
                                    <h4>colors</h4>
                                    <ul class="color-variant mb-0">
                                        <li class="bg-half-light selected"></li>
                                        <li class="bg-light1"></li>
                                        <li class="bg-blue1"></li>
                                        <li class="bg-black1"></li>
                                    </ul>
                                </div>
                                <div class="product-details">
                                    <h4>product details</h4>
                                    <ul>
                                        <li>
                                            <span class="font-light">Display type :</span> Analog
                                        </li>
                                        <li>
                                            <span class="font-light">Mechanism:</span> Quartz
                                        </li>
                                        <li>
                                            <span class="font-light">Warranty:</span> 1 year
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-btns">
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">Add to cart</button>
                                    <button type="button" class="btn btn-solid-default btn-sm"
                                        data-bs-dismiss="modal">View details</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
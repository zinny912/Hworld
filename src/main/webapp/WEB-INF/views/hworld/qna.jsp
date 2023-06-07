<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>

    <style>
        .tracker-table .table tbody tr td p {
            line-height: 0.7;
            margin: 5px 0px;
        }

        .tab-content .tab-pane {
            padding-top: 10px;
        }

        .tab-content .tab-pane .tracker-table .table .table-head td{
            text-align: left; 
            padding-left: 60px;
        }

        .tab-content .tab-pane .tracker-table .table .fa-star{
            color: var(--theme-color); 
            font-size: 1%; 
            line-height: 1.3;
        }

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
                    <h3>고객지원</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Contact us</li>
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
                <div class="col-lg-11 mx-auto">
                    <div class="materialContainer">
                        <div class="material-details">
                            <div class="title title1 title-effect mb-1 title-left">
                                <h2>1:1 문의</h2>
                                <p class="ms-0 w-100">궁금하신 점 또는 필요하신 내용을 선택하시면 좀 더 상세한 안내를 도와드립니다.</p>
                            </div>
                        </div>



                         <!-- Category tab Section Start -->
                                    <div class="col-12 mt-2">
                                        <div class="cloth-review">
                                            <nav>
                                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                    <button class="nav-link button active" id="nav-account-tab" data-bs-toggle="tab"
                                                        data-bs-target="#account" type="button">계정 문의</button>

                                                    <button class="nav-link" id="nav-fee-tab" data-bs-toggle="tab"
                                                        data-bs-target="#fee" type="button">요금조회/납부</button>

                                                    <button class="nav-link button" id="nav-plan-tab" data-bs-toggle="tab"
                                                        data-bs-target="#plan" type="button">요금제 문의</button>

                                                    <button class="nav-link button" id="nav-document-tab" data-bs-toggle="tab"
                                                        data-bs-target="#document" type="button">서류 문의</button>

                                                    <button class="nav-link" id="nav-etc-tab" data-bs-toggle="tab"
                                                    data-bs-target="#etc" type="button">기타/불만 접수</button>
                                                </div>
                                            </nav>

                                            <!-- 문의 작성 테이블 Section Start -->
                                            <div class="tab-content" id="nav-tabContent">
	                                                <div class="tab-pane fade show active" id="account">
													<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname" name="title">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="contents" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile" name="file">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="submit">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
	
	                                                </form>
	                                                </div>
	                                                

			

	                                                <div class="tab-pane fade" id="fee">
                      									<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
   	                                                                            <tr class="table-head">
	                                                                                <th scope="row" rowspan="2" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">문의 번호</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5" >보유회선 ${fn:length(list)}건</td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <td colspan="5">
	                                                                                	<c:forEach items="${list}" var="vo">
		                                                                                    <div class="form-check custome-radio-box my-lg-5 ps-5 d-flex justify-content-start">
		                                                                                        <h4>
		                                                                                            <input class="form-check-input" type="radio" name="serialNum" value="${vo.serialNum}" id="credit">
		                                                                                            <label class="form-check-label" for="credit"></label>
		                                                                                        </h4>
		                                                                                        
		                                                                                            <div class="d-flex">
		                                                                                                <h3 class="mx-2"><i class="fa fa-mobile"></i></h3>
		                                                                                                <h5 class="title1 fw-bold">회선</h5>
		                                                                                                <h6 class="ms-2"> ${vo.phoneNum} 갤럭시 ${vo.phoneName}</h6>
		                                                                                            </div>
		                                                                                        
		                                                                                    </div>
	                                                                                    </c:forEach>
	                                                                                    <!-- 선택 완료 누르면 리스트에서 회선 하나만 보여줌(레퍼런스 : T World) -->
	                                                                                    <!-- <div>
	                                                                                        <button type="button" class="btn btn-solid-default btn-spacing">
	                                                                                            <span>선택 완료</span>
	                                                                                        </button>
	                                                                                    </div> -->
	                                                                                </td>
	                                                                            </tr>
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="button">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
                                                   		</form>
	                                                </div>
										
												
												
												
	                                                <div class="tab-pane fade" id="plan" >
	                                                	<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
	                                                                            <tr class="table-head">
	                                                                                <th scope="row" rowspan="2" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">문의 번호</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5" >보유회선 ${fn:length(list)}건</td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <td colspan="5">
	                                                                                	<c:forEach items="${list}" var="vo">
		                                                                                    <div class="form-check custome-radio-box my-lg-5 ps-5 d-flex justify-content-start">
		                                                                                        <h4>
		                                                                                            <input class="form-check-input" type="radio" name="serialNum" value="${vo.serialNum}" id="credit">
		                                                                                            <label class="form-check-label" for="credit"></label>
		                                                                                        </h4>
		                                                                                        
		                                                                                            <div class="d-flex">
		                                                                                                <h3 class="mx-2"><i class="fa fa-mobile"></i></h3>
		                                                                                                <h5 class="title1 fw-bold">회선</h5>
		                                                                                                <h6 class="ms-2"> ${vo.phoneNum} 갤럭시 ${vo.phoneName}</h6>
		                                                                                            </div>
		                                                                                        
		                                                                                    </div>
	                                                                                    </c:forEach>
	                                                                                    <!-- 선택 완료 누르면 리스트에서 회선 하나만 보여줌(레퍼런스 : T World) -->
	                                                                                    <!-- <div>
	                                                                                        <button type="button" class="btn btn-solid-default btn-spacing">
	                                                                                            <span>선택 완료</span>
	                                                                                        </button>
	                                                                                    </div> -->
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="button">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
			                                            </form>
	                                                </div>

	                                                <div class="tab-pane fade" id="question" >
														<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
	                                                                            <tr class="table-head">
	                                                                                <th scope="row" rowspan="2" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">문의 번호</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5" >보유회선 ${fn:length(list)}건</td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <td colspan="5">
	                                                                                	<c:forEach items="${list}" var="vo">
		                                                                                    <div class="form-check custome-radio-box my-lg-5 ps-5 d-flex justify-content-start">
		                                                                                        <h4>
		                                                                                            <input class="form-check-input" type="radio" name="serialNum" value="${vo.serialNum}" id="credit">
		                                                                                            <label class="form-check-label" for="credit"></label>
		                                                                                        </h4>
		                                                                                        
		                                                                                            <div class="d-flex">
		                                                                                                <h3 class="mx-2"><i class="fa fa-mobile"></i></h3>
		                                                                                                <h5 class="title1 fw-bold">회선</h5>
		                                                                                                <h6 class="ms-2"> ${vo.phoneNum} 갤럭시 ${vo.phoneName}</h6>
		                                                                                            </div>
		                                                                                        
		                                                                                    </div>
	                                                                                    </c:forEach>
	                                                                                    <!-- 선택 완료 누르면 리스트에서 회선 하나만 보여줌(레퍼런스 : T World) -->
	                                                                                    <!-- <div>
	                                                                                        <button type="button" class="btn btn-solid-default btn-spacing">
	                                                                                            <span>선택 완료</span>
	                                                                                        </button>
	                                                                                    </div> -->
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="button">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
		                                            </form>    
	                                                </div>

	                                                <div class="tab-pane fade" id="document" >
													<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
	                                                                           <tr class="table-head">
	                                                                                <th scope="row" rowspan="2" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">문의 번호</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5" >보유회선 ${fn:length(list)}건</td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <td colspan="5">
	                                                                                	<c:forEach items="${list}" var="vo">
		                                                                                    <div class="form-check custome-radio-box my-lg-5 ps-5 d-flex justify-content-start">
		                                                                                        <h4>
		                                                                                            <input class="form-check-input" type="radio" name="serialNum" value="${vo.serialNum}" id="credit">
		                                                                                            <label class="form-check-label" for="credit"></label>
		                                                                                        </h4>
		                                                                                        
		                                                                                            <div class="d-flex">
		                                                                                                <h3 class="mx-2"><i class="fa fa-mobile"></i></h3>
		                                                                                                <h5 class="title1 fw-bold">회선</h5>
		                                                                                                <h6 class="ms-2"> ${vo.phoneNum} 갤럭시 ${vo.phoneName}</h6>
		                                                                                            </div>
		                                                                                        
		                                                                                    </div>
	                                                                                    </c:forEach>
	                                                                                    <!-- 선택 완료 누르면 리스트에서 회선 하나만 보여줌(레퍼런스 : T World) -->
	                                                                                    <!-- <div>
	                                                                                        <button type="button" class="btn btn-solid-default btn-spacing">
	                                                                                            <span>선택 완료</span>
	                                                                                        </button>
	                                                                                    </div> -->
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="button">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
	                                                </form>
	                                                </div>
                                                
	                                                <div class="tab-pane fade" id="etc">
													<form action="./qna" method="post" >
	                                                    <div class="row g-4">
	                                                        <div class="col-12 overflow-visible">
	                                                            <div class="tracker-table pt-0" >  
	                                                                <div class="table-responsive">
	                                                                    <table class="table">
	                                                                        <tbody>
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">제목</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <input type="text" class="form-control" id="fname">
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">내용</h6>
	                                                                                        <i class="fa fa-star" ></i>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="col-md-12">
	                                                                                        <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
	                                                                                    </div>
	                                                                                    <div class="col-md-12">
	                                                                                        <p style="text-align: right;">0 자 입력 / 최대 12,000 자</p>
	                                                                                    </div>
	                                                                                    <div style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 2018년 10월 18일(목) 산업안전보건법 고객응대근로자 보호조치가 시행되었습니다.</p>
	                                                                                        <p style="line-height: 0.7;">고객 응대 근로자에게 폭언, 폭행, 성희롱 등을 하지 말아 주세요.  </p>
	                                                                                        <p style="line-height: 2;">* 문의 접수 시 내용에 폭언, 욕설, 비속어 등이 포함된 경우, 답변을 받으실 수 없습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                                <th scope="row" rowspan="5" class="text-center align-middle h-100" >
	                                                                                    <div class="d-flex">
	                                                                                        <h6 class="mx-2 fw-bold">파일 첨부</h6>
	                                                                                    </div>
	                                                                                </th>
	                                                                                <td colspan="5">
	                                                                                    <div class="mb-3">
	                                                                                        <input class="form-control" type="file" id="formFile">
	                                                                                    </div>
	                                                                                    <div class="mt-lg-5" style="text-align: start;">
	                                                                                        <p style="line-height: 0.7;">* 첨부 파일 용량은 파일당 3MB를 초과하실 수 없으며, 최대 5개까지 등록하실 수 있습니다.</p>
	                                                                                        <p style="line-height: 0.7;">* 이미지(jpg, jpeg, gif, png)파일을 첨부하실 수 있습니다.</p>
	                                                                                    </div>
	                                                                                </td>
	                                                                            </tr>
	                                        
	                                                                            <tr>
	                                                                            </tr>
	                                                                        </tbody>
	                                                                    </table>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                        <div class="col-md-12 d-flex justify-content-center me-5 my-lg-5">
	                                                            <button class="btn btn-solid-default mx-2 " type="button">작성 완료</button>
	                                                            <button class="btn btn-solid-default " type="button">취소</button>
	                                                        </div>
	                                                    </div>
	                                                </form>
	                                                </div>
                                            </div>
                                        </div>
                                    </div>

                        <!-- Category Tab Section end -->
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->


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
<script type="text/javascript">
	$('.tab-pane').click(function(){
	    $('.tab-pane').removeClass('show active');
	    $(this).addClass('show active');
	})
</script>
</body>

</html>
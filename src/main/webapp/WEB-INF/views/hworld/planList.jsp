<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>요금제&부가서비스 리스트</title>
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
                    <h3>요금제 & 부가서비스</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">요금제 & 부가서비스</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->
    
    <!-- Shop Section start -->
    <section>
        
        <div class="container ">
            <div class="row gx-4 gy-5">  
                <div class="col-12">
                    <div class="cloth-review">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active fs-2" id="nav-home-tab" data-bs-toggle="tab"
                                    data-bs-target="#desc" type="button">요금제</button>

                                <button class="nav-link fs-2" id="nav-speci-tab" data-bs-toggle="tab" data-bs-target="#speci"
                                    type="button">부가서비스</button>   
                            </div>
                        </nav>
                        
 <!-- 요금제리스트 -->
 
<div class="tab-content" id="nav-tabContent" style="margin-top:-100px;">
    <div class="tab-pane fade show active" id="desc">
        <div class="shipping-chart">
            <div class="part">                        
            <section>
                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                    <a href="zyougeumje_add.html">추가</a>
                </div>
                <div class="container">
                    <div class="category-option">
                        <div class="accordion category-name" id="accordionExample">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree">
                                        <h3 class="fs-4 fw-bolder">5G 요금제</h3> <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px" >세상 빠른 속도의 H world의 5G </span>
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse show"
                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body ">
                                        <ul class="category-list">
                                            <li>
                                        <table class="table cart-table">
                                        <thead>
                                            <tr class="table-head ">
                                                <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <tr>
                                                <td> <a href="zyougeumje_detail.html">
                                                        <strong class="text-left fs-4 m-0 ">5G 프리미어</strong></a></td>
                                                <td> <p class="fs-5 m-0">무제한</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td> <p class="fs-5 m-0">무제한</p></td>
                                                <td><strong class="fs-4 m-0 theme-color">88,000</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            <tr>
                                                <td> <a href="#">
                                                        <strong class="fs-4 m-0 ">5G 베이직</strong></a></td>
                                                <td><p class="fs-5 m-0">50GB</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><strong class="fs-4 m-0 theme-color">77,000</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            <tr>
                                                <td> <a href="#">
                                                        <strong class="fs-4 m-0">5G 심플</strong></a></td>
                                                <td><p class="fs-5 m-0">30GB</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><strong class="fs-4 m-0 theme-color">66,000</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            <tr>
                                                <td> <a href="#">
                                                        <strong class="fs-4 m-0">5G 슬림</strong></a></td>
                                                <td><p class="fs-5 m-0">8GB</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><p class="fs-5 m-0">무제한</p></td>
                                                <td><strong class="fs-4 m-0 theme-color">55,000</strong><span class="fs-6">원</span></td>
                                            </tr>
                                        </tbody>
                                            </table>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="accordion category-name"  id="accordionExample1">
                            <div class="accordion-item category-rating">
                                <h2 class="accordion-header" id="headingThree1">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree1">
                                        <h3 class="fs-4 fw-bolder">시니어 요금제</h3> <span style="color:#7E7E7E; margin-left:5%; font-weight:400; font-size:16px;" >65세 이상 중장년을 위한 H world의 5G 요금제</span>
                                    </button>
                                </h2>
                                <div id="collapseThree1" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample1">
                                    <div class="accordion-body">
                                        <ul class="category-list">
                                            <li>
                                                <table class="table cart-table">
                                                <thead>
                                                    <tr class="table-head ">
                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody> 
                                                        <tr>
                                                            <td> <a href="zyougeumje_detail.html">
                                                                    <strong class="text-left fs-4 m-0 ">시니어A형</strong></a>
                                                                    
                                                            </td>
                                                            <td> <p class="fs-5 m-0">10GB</p></td>
                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                            <td><strong class="fs-4 m-0 theme-color">55,000</strong><span class="fs-6">원</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td> <a href="#">
                                                                    <strong class="fs-4 m-0 ">시니어B형</strong></a>
                                                                    <p>70세이상만 신청가능</p>
                                                                </td>
                                                            <td><p class="fs-5 m-0">9GB</p></td>
                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                            <td><strong class="fs-4 m-0 theme-color">44,000</strong><span class="fs-6">원</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td> <a href="#">
                                                                    <strong class="fs-4 m-0">시니어C형</strong></a>
                                                                    <p>80세이상만 신청가능</p>
                                                                </td>
                                                            <td><p class="fs-5 m-0">8GB</p></td>
                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                            <td><strong class="fs-4 m-0 theme-color">33,000</strong><span class="fs-6">원</span></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                         <div class="accordion category-name"  id="accordionExample2">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header" id="headingThree2">
                                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree2">
                                                        <h3 class="fs-4 fw-bolder">청소년 요금제</h3> <span style="color:#7E7E7E; margin-left:5%; font-weight:400; font-size:16px;" >18세 이하 어린이를 위한 H world의 5G 요금제</span>
                                                    </button>
                                                </h2>
                                                <div id="collapseThree2" class="accordion-collapse collapse"
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample2">
                                                    <div class="accordion-body category-scroll">
                                                        <ul class="category-list">
                                                            <li>
                                                                <table class="table cart-table">
                                                                <thead>
                                                                    <tr class="table-head ">
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody> 
                                                                        <tr>
                                                                            <td> <a href="yougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">***H틴***</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">4GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">33,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                       
                                                                        </tbody>
                                                                    </table>
                                                                </li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="accordion category-name"  id="accordionExample3">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header" id="headingThree3">
                                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree3">
                                                        <h3 class="fs-4 fw-bolder">ZEM 요금제</h3> <span style="color:#7E7E7E; margin-left:5%; font-weight:400; font-size:16px;" >12세 이하 어린이를 위한 H world의 5G 요금제</span>
                                                    </button>
                                                </h2>
                                                <div id="collapseThree3" class="accordion-collapse collapse "
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample3">
                                                    <div class="accordion-body ">
                                                        <ul class="category-list">
                                                            <li>
                                                                <table class="table cart-table">
                                                                <thead>
                                                                    <tr class="table-head ">
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody> 
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">ZEM 베이직</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">4GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">33,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">ZEM 슬림</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">2GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">22,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
    
                                         <div class="accordion category-name"  id="accordionExample4">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header" id="headingThree4">
                                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree4">
                                                        <h3 class="fs-4 fw-bolder">복지 요금제</h3> <span style="color:#7E7E7E; margin-left:5%; font-weight:400; font-size:16px;" >복지혜택을 받는 분들을 위한 H world의 5G 요금제</span>
                                                    </button>
                                                </h2>
                                                <div id="collapseThree4" class="accordion-collapse collapse "
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample4">
                                                    <div class="accordion-body ">
                                                        <ul class="category-list">
                                                            <li>
                                                                <table class="table cart-table">
                                                                <thead>
                                                                    <tr class="table-head ">
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody> 
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">베이직 복지</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">55,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">심플 복지</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">100GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">44,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">슬림 복지</strong></a>      
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">15GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">33,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                    
                                         <div class="accordion category-name"  id="accordionExample5">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header" id="headingThree5">
                                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree5">
                                                        <h3 class="fs-4 fw-bolder">군인 요금제</h3> <span style="color:#7E7E7E; margin-left:5%; font-weight:400; font-size:16px;" >충성! 나라 지키는 Hero를 위한 H world의 5G 요금제</span>
                                                    </button>
                                                </h2>
                                                <div id="collapseThree5" class="accordion-collapse collapse "
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample5">
                                                    <div class="accordion-body ">
                                                        <ul class="category-list">
                                                            <li>
                                                                <table class="table cart-table">
                                                                <thead>
                                                                    <tr class="table-head ">
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">요금제</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">데이터</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">문자</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">통화</strong></th>
                                                                        <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody> 
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">Hero 55</strong></a>
                                                                                    <p>현역 일반병사만 가입가능</p>   
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">100GB</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">55,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> <a href="zyougeumje_detail.html">
                                                                                    <strong class="text-left fs-4 m-0 ">Hero 33</strong></a>  
                                                                                    <p>현역 일반병사만 가입가능</p>    
                                                                            </td>
                                                                            <td> <p class="fs-5 m-0">2GB/일</p></td>
                                                                            <td><p class="fs-5 m-0">무제한</p></td>
                                                                            <td> <p class="fs-5 m-0">무제한</p></td>
                                                                            <td><strong class="fs-4 m-0 theme-color">33,000</strong><span class="fs-6">원</span></td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                    </section>
                            </div>
                        </div>
                    </div>  
<!-- 요금제리스트 end -->

<!-- 부가서비스 리스트 -->                 
                     <div class="tab-pane fade" id="speci">
                        <div class="shipping-chart">
                            <div class="part">                        
                            <section>
                                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                                    <a href="zyougeumje2_add.html">추가</a>
                                </div>
                                <div class="container">
                                    <div class="category-option">
                                        <div class="accordion category-name" id="accordionExample">
                                            <div class="accordion-item category-rating">
                                                <h2 class="accordion-header"  id="headingThree">
                                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#collapseThree">
                                                        <h3 class="fs-4 fw-bolder">부가서비스</h3> <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px" >H world의 부가서비스와 함께 더욱 행복해지세요 </span>
                                                    </button>
                                                </h2>
                                                <div id="collapseThree" class="accordion-collapse collapse"
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body ">
                                                        <ul class="category-list">
                                                            <li>
                                                        <table class="table cart-table">
                                                            <thead>
                                                                <tr class="table-head ">
                                                                    <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">부가서비스명</strong></th>
                                                                    <th scope="col" style="color:#7E7E7E;"><strong class="fs-5"> </strong></th>
                                                                    <th scope="col" style="color:#7E7E7E;"><strong class="fs-5"> </strong></th>
                                                                    <th scope="col" style="color:#7E7E7E;"><strong class="fs-5"> </strong></th>
                                                                    <th scope="col" style="color:#7E7E7E;"><strong class="fs-5">월정액</strong></th>
                                                                </tr>
                                                                </thead>
                                                        <tbody> 
                                                            <tr>
                                                                <td> <a href="zplusservice_detail.html">
                                                                        <strong class="text-left fs-4 m-0 ">V컬러링</strong></a></td>
                                                                <td> <p class="fs-5 m-0"> </p></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td> <p class="fs-5 m-0"> </p></td>
                                                                <td><strong class="fs-4 m-0 theme-color">3,300</strong><span class="fs-6">원</span></td>
                                                            </tr>
                                                            <tr>
                                                                <td> <a href="#">
                                                                        <strong class="fs-4 m-0 ">매너콜</strong></a></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><strong class="fs-4 m-0 theme-color">1,100</strong><span class="fs-6">원</span></td>
                                                            </tr>
                                                            <tr>
                                                                <td> <a href="#">
                                                                        <strong class="fs-4 m-0">스마트 피싱보호</strong></a></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><p class="fs-5 m-0"> </p></td>
                                                                <td><strong class="fs-4 m-0 theme-color">1,650</strong><span class="fs-6">원</span></td>
                                                            </tr>
                                                            
                                                        </tbody>
                                                            </table>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="pro mb-4">
                                    <p class="font-light">The Model is wearing a white blouse from our stylist's
                                        collection, see the image for a mock-up of what the actual blouse would look
                                        like.it has text written on it in a black cursive language which looks great
                                        on a white color.</p>
                                    <div class="table-responsive">
                                        <table class="table table-part">
                                            <tr>
                                                <th>Product Dimensions</th>
                                                <td>15 x 15 x 3 cm; 250 Grams</td>
                                            </tr>
                                            <tr>
                                                <th>Date First Available</th>
                                                <td>5 April 2021</td>
                                            </tr>
                                            <tr>
                                                <th>Manufacturer‏</th>
                                                <td>Aditya Birla Fashion and Retail Limited</td>
                                            </tr>
                                            <tr>
                                                <th>ASIN</th>
                                                <td>B06Y28LCDN</td>
                                            </tr>
                                            <tr>
                                                <th>Item model number</th>
                                                <td>AMKP317G04244</td>
                                            </tr>
                                            <tr>
                                                <th>Department</th>
                                                <td>Men</td>
                                            </tr>
                                            <tr>
                                                <th>Item Weight</th>
                                                <td>250 G</td>
                                            </tr>
                                            <tr>
                                                <th>Item Dimensions LxWxH</th>
                                                <td>15 x 15 x 3 Centimeters</td>
                                            </tr>
                                            <tr>
                                                <th>Net Quantity</th>
                                                <td>1 U</td>
                                            </tr>
                                            <tr>
                                                <th>Included Components‏</th>
                                                <td>1-T-shirt</td>
                                            </tr>
                                            <tr>
                                                <th>Generic Name</th>
                                                <td>T-shirt</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div> -->
                            </div>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
<style>


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
            <c:if test="${memberVO.adminCheck == 0 }">
                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                    <a href="./planAdd">추가</a>
                </div>
             </c:if>
             <c:if test="${memberVO.adminCheck == 1 }">
              <div class="d-flex justify-content-start mt-3 mb-1 mx-4 " >
                    <br>
                </div>
             </c:if>
                <div class="container">
                    <div class="category-option">
                    <!-- 5G 요금제 리스트 generalList -->
                        <div class="accordion category-name" id="accordionExample">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '5G 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">세상 빠른 속도의 H world의 5G</span>
										</c:if>
										</c:forEach>
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
                                       	 	
                                        	 <c:forEach items="${gList}"  var="plan">
                                        	 	<c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==0}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>
                	<!-- 5G요금제 리스트 끝  -->
                	<!-- 시니어 요금제 리스트 시작 -->
                        <div class="accordion category-name" id="accordionExample2">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree2">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree2">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '시니어 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">65세 이상의 중장년을 위한 H world의 요금제</span>
										</c:if>
										</c:forEach>
                                     </button>
                                </h2>
                                <div id="collapseThree2" class="accordion-collapse collapse "
                                    aria-labelledby="headingThree2" data-bs-parent="#accordionExample2">
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
                                        	 <c:forEach items="${sList}"  var="plan">
                                        	 <c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==1}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>
	                	
                	<!-- 시니어 요금제 리스트 끝  -->
                  <!-- 청소년 요금제 -->
                     <div class="accordion category-name" id="accordionExample3">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree3">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree3">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '청소년 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">실속있게! 청소년을 위한 H world의 요금제</span>
										</c:if>
										</c:forEach>
                                     </button>
                                </h2>
                                <div id="collapseThree3" class="accordion-collapse collapse "
                                    aria-labelledby="headingThree3" data-bs-parent="#accordionExample3">
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
                                        	 <c:forEach items="${tList}" var="plan">
                                        	 
    											<c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==1}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>                	
	                	<!-- 청소년 요금제 리스트 끝  -->
                	<!-- 어린이 요금제 리스트 시작 -->
                    <div class="accordion category-name" id="accordionExample4">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree4">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree4">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '어린이 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">꿈과 희망이 가득찬 어린이를 위한 H world의 요금제</span>
										</c:if>
										</c:forEach>
                                     </button>
                                </h2>
                                <div id="collapseThree4" class="accordion-collapse collapse "
                                    aria-labelledby="headingThree4" data-bs-parent="#accordionExample4">
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
                                        	 <c:forEach items="${zList}" var="plan">
                                        	<c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==1}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                          
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>                	
             <!-- 어린이 요금제 리스트 end -->               
             <!-- 군인 요금제 리스트 start -->
                      <div class="accordion category-name" id="accordionExample5">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree5">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree5">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '군인 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">충!성! 우리의 히어로 현역병사를 위한 H world의 요금제</span>
										</c:if>
										</c:forEach>
                                     </button>
                                </h2>
                                <div id="collapseThree5" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree5" data-bs-parent="#accordionExample5">
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
                                        	 <c:forEach items="${hList}" var="plan">
                                        	 <c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==1}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>                	
                	<!-- 군인 요금제 리스트 끝  -->
                	<!-- 복지 요금제 리스트 시작 -->
                    <div class="accordion category-name" id="accordionExample6">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree6">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree6">
                                        <c:forEach items="${planList}" var="plan">
						             <c:if test="${plan.note eq '복지 요금제'}">
										    <h3 class="fs-4 fw-bolder col-2">${plan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">복지혜택을 받으시는 분들을 위한 요금제</span>
										</c:if>
										</c:forEach>
                                     </button>
                                </h2>
                                <div id="collapseThree6" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree5" data-bs-parent="#accordionExample6">
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
                                        	 <c:forEach items="${wList}" var="plan">
                                        	  <c:choose>
    												<c:when test="${plan.disabled == 0 && memberVO.adminCheck == 1}">
		                                        	 <input type="hidden" name="disabled" value="${plan.disabled}">
		                                               <tr style="display:none;">
		                                                <td> <a href="./planDetail?planNum=${plan.planNum}" class="plan-link">
		                                                        <strong class="text-left fs-4 m-0 " >${plan.planName }</strong></a></td>
		                                                <td> 
		                                                	<p class="fs-5 m-0">
		                                                	<c:choose>
														      <c:when test="${plan.dataCapacity eq '무제한'}">
														        무제한
														      </c:when>
														      <c:otherwise>
														        ${plan.dataCapacity} GB
														      </c:otherwise>
														    </c:choose></td>
		                                                <td><p class="fs-5 m-0">기본제공</p></td>
		                                                <td> <p class="fs-5 m-0">기본제공</p></td>
		                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
		                                            </tr>
		                                            </c:when>
                                            	<c:otherwise>
                                            		<input type="hidden" name="disabled" value="${plan.disabled}">
                                            		
                                               <c:if test="${plan.disabled == 0 && memberVO.adminCheck==1}">
                                               <tr class="text-center">
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 " style="color:lightgray;">${plan.planName }</strong></a>
                                                </td>
                                               
                                                <td colspan="3"> 
                                                	<span class="fs-6" style="color:gray;">가입이 중지된 상품입니다.</span>
                                                </td>
                                               
                                                <td><span class="fs-4 m-0 fw-bold" style="color:ligtgray;" id="commaPrice${plan.planNum}">${plan.planPrice}</span><span class="fs-6">원</span></td>
                                          	 </tr>
                                          	 </c:if>
                                            <c:if test="${plan.disabled != 0}">
                                          	 <tr>
                                                <td> <a href="./planDetail?planNum=${plan.planNum}">
                                                        <strong class="text-left fs-4 m-0 ">${plan.planName }</strong></a></td>
                                                <td> 
                                                	<p class="fs-5 m-0">
                                                	<c:choose>
												      <c:when test="${plan.dataCapacity eq '무제한'}">
												        무제한
												      </c:when>
												      <c:otherwise>
												        ${plan.dataCapacity} GB
												      </c:otherwise>
												    </c:choose></td>
                                                <td><p class="fs-5 m-0">기본제공</p></td>
                                                <td> <p class="fs-5 m-0">기본제공</p></td>
                                                <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong><span class="fs-6">원</span></td>
                                            </tr>
                                            </c:if>
                                            		</c:otherwise>
                                            	</c:choose>
                                            </c:forEach>
                                            
                                        	</tbody>
                                           </table>
	                                   	</li>
	                                	</ul>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div> 
	                </div>
	              </div> 
	              
	               <!-- 복지요금제 끝 -->     
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
                             <c:if test="${memberVO.adminCheck == 0 }">
                                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                                    <a href="./ePlanAdd">추가</a>
                                </div>
                                </c:if>
                                <c:if test="${memberVO.adminCheck == 1 }">
                                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                                    <a href=""><br></a>
                                </div>
                                </c:if>
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
                                                <div id="collapseThree" class="accordion-collapse collapse show"
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
                                                      <c:forEach items="${ePlan}" var="i">
                                                        <c:choose>
					                                     <c:when test="${i.disabled == 0 && memberVO.adminCheck == 1}">
					                                      <input type="hidden" name="disabled" value="${i.disabled}">
		                                               <tr style="display:none;">                   
					                                      <td> <a href="./ePlanDetail?extraPlanNum=${i.extraPlanNum}">
					                                              <strong class="text-left fs-4 m-0 ">${i.extraPlanName}</strong></a></td>
					                                      <td> <p class="fs-5 m-0"> </p></td>
					                                      <td><p class="fs-5 m-0"> </p></td>
					                                      <td> <p class="fs-5 m-0"> </p></td>
					                                      <td><strong class="fs-4 m-0 theme-color" id="commaPrice${i.extraPlanNum}">${i.extraPrice}</strong><span class="fs-6">원</span></td>
					                                  </tr>
					                                   </c:when>
					                                   <c:otherwise>
					                                   <input type="hidden" name="disabled" value="${i.disabled}">
					                                   <tr>
					                                   <c:if test = "${i.disabled ==0 && memberVO.adminCheck == 0 }">
					                                      <td > <a href="./ePlanDetail?extraPlanNum=${i.extraPlanNum}" >
					                                              <strong class="text-left fs-4 m-0 "style="color:lightgray;">${i.extraPlanName}</strong></a></td>
					                                      <td> <p class="fs-6 m-0" style="color:gray;"> 가입이 중지된 상품입니다. </p></td>
					                                      <td><p class="fs-5 m-0"> </p></td>
					                                      <td> <p class="fs-5 m-0"> </p></td>
					                                      <td><strong class="fs-4 m-0 theme-color" id="commaPrice${i.extraPlanNum}">${i.extraPrice}</strong><span class="fs-6">원</span></td>
					                                 </c:if>
					                                  <tr>
					                                   <c:if test = "${i.disabled !=0 }">
					                                      <td > <a href="./ePlanDetail?extraPlanNum=${i.extraPlanNum}" >
					                                              <strong class="text-left fs-4 m-0 ">${i.extraPlanName}</strong></a></td>
					                                      <td> <p class="fs-5 m-0"> </p></td>
					                                      <td><p class="fs-5 m-0"> </p></td>
					                                      <td> <p class="fs-5 m-0"> </p></td>
					                                      <td><strong class="fs-4 m-0 theme-color" id="commaPrice${i.extraPlanNum}">${i.extraPrice}</strong><span class="fs-6">원</span></td>
					                                 </c:if>
					                                  </tr>
					                                  </c:otherwise>
                                            	</c:choose>
                              							</c:forEach>
                                                        </tbody>
                                                            </table>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
 	
                                    </div>
                                </div>
                              </div>
                          </div>
                       </section>
                    </div>
                 </div>
              </div>
		</div>
	</div>
	</div>
	</div>
	</div>    
</section>

            
    <!-- Shop Section end -->    
 
<c:import url="../temp/footer.jsp"></c:import>

      <script>
$(document).ready(function() {
    const prices = document.querySelectorAll('[id^="commaPrice"]');
    for (var i = 0; i < prices.length; i++) {
        const price = parseInt(prices[i].innerHTML);
        const commaPrice = price.toLocaleString();
        prices[i].innerHTML =commaPrice ;
       	
    }
   
});
</script> 
  
</body>

</html>
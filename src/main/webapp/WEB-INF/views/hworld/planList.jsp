<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>

    
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
                    <a href="./planAdd">추가</a>
                </div>
                <div class="container">
                    <div class="category-option">
                    <!-- 5G 요금제 리스트 generalList -->
                        <div class="accordion category-name" id="accordionExample">
                            <div class="accordion-item category-rating show">
                                <h2 class="accordion-header"  id="headingThree">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree">
						            <c:choose>
							            <c:when test="${not empty planList && planList[0].type == 'G'}">
							                <h3 class="fs-4 fw-bolder">${planList[0].note}</h3>
							                <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">세상 빠른 속도의 H world의 5G</span>
							            </c:when>
						        	</c:choose>
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
                                        	<c:forEach items="${planList}"  var="plan">
                                        	<c:if test="${plan.type == 'G'}">
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
                    <div class="accordion category-name"  id="accordionExample1">
                            <div class="accordion-item category-rating">
                                <h2 class="accordion-header" id="headingThree1">
                                    <button class="accordion-button" style="background-color:#fff;" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree1">
                                       <c:if test="${not empty planList}">
										    <c:set var="sPlan" value="${null}" />
										    <c:forEach items="${planList}" var="plan">
										        <c:if test="${plan.type == 'S'}">
										            <c:set var="sPlan" value="${plan}" />
										        </c:if>
										    </c:forEach>
										    <c:if test="${not empty sPlan}">
										        <h3 class="fs-4 fw-bolder">${sPlan.note}</h3>
										        <span style="color:#7E7E7E; margin-left:10%; font-weight: 400; font-size:16px">65세 이상의 중장년을 위한 H world의 요금제</span>
										    </c:if>
										</c:if>
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
                                                    <c:forEach items="${planList}"  var="plan">
                                                    <c:if test="${plan.type == 'S'}">
                                                        <tr>
                                                            <td> <a href="./plan">
                                                                    <strong class="text-left fs-4 m-0 ">${plan.planName}</strong></a>   
                                                            </td>
                                                            <td> <p class="fs-5 m-0">
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
                                                            <td><strong class="fs-4 m-0 theme-color" id="commaPrice${plan.planNum}">${plan.planPrice}</strong>
                                                        </tr>
                                                        </c:if>
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
<!-- 요금제리스트 end -->

<!-- 부가서비스 리스트 -->                 
                     <div class="tab-pane fade" id="speci">
                        <div class="shipping-chart">
                            <div class="part">                        
                            <section>
                                <div class="d-flex justify-content-start mt-3 mb-1 mx-4">
                                    <a href="./ePlanAdd">추가</a>
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
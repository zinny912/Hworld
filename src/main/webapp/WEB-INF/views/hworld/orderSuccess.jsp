<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>
    <title>Order Success</title>
    <style>
        .table-order h6 {
            color: #7e7e7e;
            margin-top: 7px;
        }
        .table-order th{
            width:100px;
            
        }
        .table-order h5 {
            color: #212529;
        }

        .order-details-table .cart-table tbody {
            border-bottom: none;
        }
    </style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    <!-- Order Success Section Start -->
    <section class="pt-0">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 p-0">
                    <div class="success-icon">
                        <div class="main-container">
                            <div class="check-container">
                                <div class="check-background">
                                    <svg viewBox="0 0 65 51" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7 25L27.3077 44L58.5 7" stroke="white" stroke-width="13"
                                            stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </div>
                                <div class="check-shadow"></div>
                            </div>
                        </div>

                        <div class="success-contain ">
                            <h4 class="fw-bold">주문이 완료되었습니다.</h4>
                            <h5 class="font-light">H World샵을 이용해주셔서 감사드립니다.</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Order Success Section End -->

    <!-- Oder Details Section Start -->
    <section class="section-b-space cart-section order-details-table">
        <div class="container" style="padding: 0px 85px;" >
            <div class="title title1 title-effect mb-1 title-left">
                <h2 class="mb-4">주문 완료</h2>
            </div>
            <div class="row g-4" style="border-bottom: 1px solid #ddd;">
                <div class="col-md-6">
                    <div class="col-sm-12 table-responsive">
                        <table class="table cart-table table-borderless">
                            <tbody>
                                <tr class="table-order">
                                    <th> 
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">주문 번호</h5>
                                        </div>
                                    </th>
                                    <th colspan="3">
                                        <div class="align-middle">
                                            <h5>${orderVO.orderNum}</h5>
                                        </div>
                                    </th>
                                  	</tr>
                              <%--  <tr class="table-order">
                                    <th> 
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">주문 날짜</h5>
                                        </div>
                                    </th>
                                    <th colspan="3">
                                        <div class="align-middle">
                                            <h5>
                                            	<fmt:formatDate value="${payVO.payDate}" pattern="yyyy년 MM월 dd일 a hh:mm" />
                                            </h5>
                                        </div>
                                    </th>
                                </tr> --%>
                                <tr class="table-order">
                                    <th> 
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">받는이</h5>
                                        </div>
                                    </th>
                                    <th colspan="3">
                                        <div class="align-middle">
                                            <h5>${orderVO.orderReceiver}</h5>
                                        </div>
                                    </th>
                                </tr>
                                <tr class="table-order">
                                    <th> 
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">배송지</h5>
                                        </div>
                                    </th>
                                    <th colspan="3">
                                        <div class="align-middle">
                                            <h5>${orderVO.orderAddress1} ${orderVO.orderAddress2} ${orderVO.orderAddress3}</h5>
                                        </div>
                                    </th>
                                </tr>
 							<c:if test="${ar.directCode.startsWith('P01')}">
                                 <tr class="table-order">
                                    <th>
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">월 납부금액</h5>
                                        </div>
                                    </th>
                                    <th colspan="3">
                                        <div class="align-middle">
                                            <h5>153,160원</h5>
                                        </div>
                                        <div class="row mt-2">
                                            <h6>· 휴대폰 월 할부금(24개월) * 월 통신요금</h6>
                                            <h6>· 할부수수료 5.9% 포함</h6>
                                            <a class="mt-3"  href="#">주문 내역 보기</a>
                                        </div>
                                    </th>
                                </tr>
                                </c:if>
                       </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-sm-12 table-responsive">
                        <table class="table cart-table table-borderless">
                            <tbody>
                                <tr class="table-order">
                                    <th>
                                        <div class="row">
                                            <h5 class="fw-bold" style="color: #7e7e7e;">상품 정보</h5>
                                        </div>
                                    </th>
                                    
                                    <th colspan="3">
                                 <c:forEach items="${orderList}" var="ol" >
                                        <div class="align-middle" >
                                            <h5>${ol.directVO.directName}</h5>
                                            <h6>
                                             <c:choose>
											    <c:when test="${ol.directVO.colorCode eq 'B'}">
											      블랙
											    </c:when>
											    <c:when test="${ol.directVO.colorCode eq 'W'}">
											      화이트
											    </c:when>
											    <c:when test="${ol.directVO.colorCode eq 'G'}">
											      그레이
											    </c:when>
											  </c:choose>
											  / ${ol.directVO.directCode}
                                            </h6>
                                        </div>
                                        <div class="row my-3" style="border-bottom: 1px solid #ddd;">
                                        <h5 class=" mb-3">
 											<fmt:formatNumber value="${ol.calPrice}" pattern="#,### 원"/>
                                        </h5>
                                        </div>
                                        
                              	</c:forEach>
                              	<c:set var="orderFinalPrice" value="0" />
									<c:forEach items="${orderList}" var="ol">
									  <c:set var="orderFinalPrice" value="${orderFinalPrice + ol.calPrice}" />
									  <input type="hidden" name="orderFinalPrice" value="${orderFinalPrice + ol.calPrice}">
									</c:forEach>
                                        <h2 class="my-4">
                                     <fmt:formatNumber value="${orderFinalPrice}" pattern="#,### 원"/>
                                        </h2>
                                    </th>
                                    
                                </tr>
                            </tbody>    
                        </table>
                    </div>
                </div>
            </div>
            <div class="mt-5 d-flex justify-content-center">
                <a href="/"><button class="btn btn-solid-default">홈으로 </button></a>
            </div>
        </div>
    </section>
    <!-- Order Details Section End -->
<c:import url="../temp/footer.jsp"></c:import>
</body>

</html>
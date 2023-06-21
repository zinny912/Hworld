<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../temp/style.jsp"></c:import>
<style>
	 /* 요금제 변경 모달 버튼 */
	.product-right .size-detail {
	padding: 10px 0;
	border-top: 1px dashed #ced4da;
	}

	@media (max-width: 575px) {
	.product-right .size-detail {
	padding: 5px 0;
	}}

	.product-right .size-detail ul {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	}

	.product-right .size-detail ul li {
	width: 115px;
	height: 40px;
	text-align: center;
	border: 1px solid #ced4da;
	cursor: pointer;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
		-ms-flex-align: center;
				align-items: center;
	-webkit-box-pack: center;
		-ms-flex-pack: center;
				justify-content: center;
	}

	/* .product-right .size-detail ul li .selected {
	-webkit-box-shadow: 0 2px 7px rgba(0, 0, 0, 0.2);
			box-shadow: 0 2px 7px rgba(0, 0, 0, 0.2);
	} */

	.product-right .size-detail ul li + li {
	margin-left: 10px;
	}

	.zcustom-box {
	width: 100%;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	border-bottom:0px solid lightgray;
	padding:20px;
	background-color: fff;
	}
	
	.zcustom-box2 {
	margin:auto;    
	width: 95%;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	border-bottom:0px solid lightgray;
	padding:20px;
	background-color: #eff2f7;
	}

	.ellipsis {
	width: 50%;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;  /* 말줄임 적용 */
	}
</style>
</head>

<body class="theme-color2 light ltr">

    <!-- Cart Section Start -->
    <section class="section-b-space">
    	<div class="container my-4" style="padding: 0px 130px;">
    		<h2 class="mb-3 fw-bold text-center">가입 신청서</h2>
    	</div>
        <!-- 전체 컨테이너 -->
        <div class="container" style="padding: 0px 130px;">
            <div class="row g-4">
                <!-- 좌측영역 -->
                <div class="col-lg-7">
                    <form:form class="needs-validation" id="appForm" modelAttribute="applicationVO" action="./application" method="POST">
                        <div class="row g-4">
                            <!-- 가입자 정보 시작 -->
                            <div class="zcustom-box">
                                <h5 class="mb-3 fw-bold">가입자 정보 입력</h5>
                                <div class="col-md-12">
                                    <label for="name" class="form-label">가입자 이름</label>
                                    <form:input path="name" cssClass="form-control" id="name"/>
                                    <form:errors path="name"></form:errors>
                                    <!-- <input type="text" class="form-control" id="name" name="name"> -->
                                </div>

                                <!-- 주민등록번호 -->
                                <div class="row mt-2">
                                    <div class="col">
                                        <label for="rrnf" class="form-label">주민등록번호</label>
                                        <form:input path="rrnf" cssClass="form-control" id="rrnf"/>
                                        <form:errors path="rrnf"></form:errors>
                                        <!-- <input type="text" class="form-control" id="rrnf" name="rrnf"> -->
                                    </div>
                                    <div class="col-md-1 mt-4 pt-3">
                                        <h2 class="text-center">-</h2>
                                    </div>
                                    <div class="col">
                                        <label for="rrnl" class="form-label">&nbsp;</label>
                                        <form:password path="rrnl" cssClass="form-control" id="rrnl"/>
                                        <!-- <input type="password" class="form-control" id="rrnl" name="rrnl"> -->
                                    </div>
                                </div>
                                <!-- 가입자 주소  -->
                                <div class="row mt-2">
                                    <!-- 1. 우편번호  -->
                                    <div class="col-md-9">
                                        <label for="address1" class="form-label">가입자 주소</label>
                                        <form:input path="address1" cssClass="form-control" id="address1"/>
                                        <!-- <input type="text" class="form-control" id="address1" name="address1"> -->
                                    </div>

                                    <div class="col-md-3" style="padding-left: 0px;">
                                        <label for="findAddress" class="form-label">&nbsp;&nbsp;&nbsp;</label>
                                        <button class="btn btn-solid-default btn-full" onclick="execution_daum_address()" id="findAddress" type="button" style="padding-left: 4px; padding-right: 4px; height: 61%; font-size: calc(12px + (13 - 12) * ((100vw - 320px) / (1920 - 320)));">주소 찾기</button>
                                    </div>

                                    <!-- 2. 도로명주소/지번  -->
                                    <div class="col-md-12 mt-3">
                                    	<form:input path="address2" cssClass="form-control" id="address2"/>
                                        <!-- <input type="text" class="form-control" id="address2" name="address2"> -->
                                    </div>

                                    <!-- 3. 상세주소   -->
                                    <div class="col-md-12 mt-3">
                                    	<form:input path="address3" cssClass="form-control" id="address3"/>
                                        <!-- <input type="text" class="form-control" id="address3" name="address3"> -->
                                    </div>
                                </div>
                            </div>
                            <!-- 가입자 정보 끝 -->

                            <!-- 회선정보 입력 -->
                            <div class="zcustom-box">
                                <h5 class="mb-3 fw-bold">회선 정보 입력</h5>
                                <div class="product-right">
                                    <div class="size-detail">
                                        <h6 class="mb-3 fw-bolder">가입유형</h6>
                                        <ul class="nav border-0" style="color:black;">
                                            <li class="nav-item" id="joinType1">
                                            <a class="nav-link active" style="color:black;">신규가입</a>
                                            </li>
                                            <li class="nav-item" id="joinType2">
                                            <a class="nav-link" style="color:black;">번호이동</a>
                                            </li>
                                            <li class="nav-item" id="joinType3">
                                            <a class="nav-link" style="color:black;">기기변경</a>
                                            </li>
                                        </ul>
                                    </div>                        
                                    
                                <!-- 신규가입 폰 번호 -->
                                    <div class="col-md-12 mt-3 mb-3">
                                        <label for="phoneNum" class="form-label">휴대폰 번호</label>
                                        <form:input path="phoneNum" cssClass="form-control" id="phoneNum" placeholder="숫자만 입력"/>
                                        <form:errors path="phoneNum"></form:errors>
									</div>
									<div class="col-md-12 mt-3 mb-3" id="duplicateResult">
									</div>


									<!-- 셀렉트 박스 -->
									<div class="d-flex col-md-12">
										<input type="hidden" name="directName" id="directName">
										<!-- 제품명 영역 -->
										<div class="col-md-6 mt-3 mb-3 me-1">
											<label for="slicedCode" class="form-label">제품명</label>
											<select name="slicedCode" class="form-control" id="slicedCode">
												<option value="0" selected>제품명 선택</option>
												<c:if test="${not empty directList}">
													<c:forEach items="${directList}" var="i">
														<option value="${i.slicedCode}">${i.directName}</option>
													</c:forEach>
												</c:if>
											</select>			
										</div>
										<!-- 제품코드 영역 ajax -->
										<div class="col-md-6 mt-3 mb-3">
											<label for="directCode" class="form-label">제품코드</label>
											<select name="directCode" class="form-control" id="directCode">
												<!-- <option value="0" selected>제품코드 선택</option> -->
											</select>
										</div>
									</div>
                                </div>    
                                
                        

                                <!-- 요금제 선택 -->
                                <div>
                                    <div class="row gy-4">
                                        <div class="col-12">
                                            <div class="product-right">
                                                <div class="size-detail">
                                                    <h6 class="mb-3 fw-bolder">요금제 선택</h6>
                                                    <!-- 요금제 유형 영역, 주석처리한거 써도 되기는한데 순서가 안맞을 수 있어서 아래처럼 처리함 -->
                                                    <ul class="nav border-0" style="color:black;">
                                                    <c:forEach items="${existList}" var="i">
                                                    	<c:if test="${i.note eq '5G 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-1">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    	<c:if test="${i.note eq '시니어 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-2">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    	<c:if test="${i.note eq '청소년 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-3">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    	<c:if test="${i.note eq '어린이 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-4">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    	<c:if test="${i.note eq '복지 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-5">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    	<c:if test="${i.note eq '군인 요금제'}">
                                                    		<li class="nav-item">
	                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-6">${i.note}</a>
	                                                    	</li>
                                                    	</c:if>
                                                    </c:forEach>
                                                    <%-- <c:forEach items="${existList}" var="i" varStatus="status">
                                                    	<li class="nav-item">
                                                    		<a class="nav-link" style="color:black;" data-bs-toggle="tab" href="#tab-${status.count}">${i.note}</a>
                                                    	</li>
                                                    </c:forEach> --%>
                                                    </ul>
                                                    
                                                    <!-- 요금제 상세 영역 -->
                                                    <div class="tab-content" id="planArea">
	                                                   	<!-- 상세 리스트 -->
	                                                   	<!-- 5G -->
                                             			<c:if test="${not empty gList}">
	                                                   	<div class="tab-pane fade show active" id="tab-1">
                                                   			<div class="row col-md-12 mt-3 mx-3 mb-3">
		                                                   	<c:forEach items="${gList}" var="i" varStatus="status">
			                                                   	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
	                                                   	<!-- 시니어 -->
														<c:if test="${not empty sList}">
														<div class="tab-pane fade" id="tab-2">
                                                   			<div class="row col-md-12 mt-3 mx-3">
		                                                   	<c:forEach items="${sList}" var="i" varStatus="status">
			                                                   	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
														<!-- 청소년 -->
														<c:if test="${not empty tList}">
														<div class="tab-pane fade" id="tab-3">
                                                   			<div class="row col-md-12 mt-3 mx-3">
		                                                   	<c:forEach items="${tList}" var="i" varStatus="status">
			                                                   	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
														<!-- 어린이 -->
														<c:if test="${not empty zList}">
														<div class="tab-pane fade" id="tab-4">
                                                   			<div class="row col-md-12 mt-3 mx-3">
		                                                   	<c:forEach items="${zList}" var="i" varStatus="status">
			                                                   <div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
														<!-- 복지 -->
														<c:if test="${not empty wList}">
														<div class="tab-pane fade" id="tab-5">
                                                   			<div class="row col-md-12 mt-3 mx-3">
		                                                   	<c:forEach items="${wList}" var="i" varStatus="status">
			                                                   	<div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
														<!-- 군인 -->
														<c:if test="${not empty hList}">
														<div class="tab-pane fade" id="tab-6">
                                                   			<div class="row col-md-12 mt-3 mx-3">
		                                                   	<c:forEach items="${hList}" var="i" varStatus="status">
			                                                   <div class="mt-1" style="border-box:0px; box-shadow:1px 1px 2px 0px gray;  width:97%;">
                                           				<div class="form-check custome-radio-box mt-1 ">
                                         				<form:radiobutton path="planNum" cssclass="form-check-input my-2" id="${i.planNum}" value="${i.planNum}" data-plan-price="${i.planPrice}" data-dp="${i.disPercent}"/>
                                         				<label class="form-check-label" style="font-size:17px;"for="${i.planNum}">${i.planName}</label>
                                                  </div>
                                                  <div class="d-flex justify-content-between mb-1">
                                                  	<label class="form-check-label ellipsis mx-4" style="color:gray; font-size:14px;">
                                                  		${i.planExplainS}
                                                  	</label>
                                                  	<label class="form-check-label me-3 "> <span style="font-size:14px;">데이터 </span>
                                                  	
                                                  	<span class="fw-bold" style="font-size:14px;">
                                                  	<c:choose>
                                                  		<c:when test="${i.dataCapacity eq '무제한'}">
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}"></c:set>
                                                  		</c:when>
                                                  		<c:otherwise>
                                                  			<c:set var="modiCapacity" value="${i.dataCapacity}GB"></c:set>
                                                  		</c:otherwise>
                                                  	</c:choose>
                                                  	
                                                  	${modiCapacity}</span>, <span class="theme-color fw-bold" style="font-size:14px;"><fmt:formatNumber value="${i.planPrice}" pattern="#,###"/></span><span style="font-size:14px;">원</span>/월</label>
                                                  </div>                                       
                                                 </div>
                                          	</c:forEach>
                                        			</div>
                                        		</div>
                                         	</c:if>
	                                                   	<!-- 한번에 다 가져오는건 리스트 구조 변경 후에 도전! -->
                                                    </div>
                                                    
                                                    <!-- 할인 유형 안내 -->
                                                    <div class="size-detail">
                                                        <h6 class="mb-3 fw-bolder">할인유형</h6>
                                                        <div class="zcustom-box2">
                                                                <h6>선택하신 요금제는 무약정 요금제로 공시지원금(휴대폰 가격 할인),
                                                                    선택약정할인(통신료 25% 할인)이 제공되지 않습니다.</h6>
                                                        </div>
                                                    </div>        
                                                    <!-- 0: 공시지원금, 1: 선택약정 12개월, 2: 선택약정 24개월 -->
                                                    <!-- 나중에 span 부분에 요금 할인되는거 계산해서 넣기 -->
                                                    <div id="discountArea">
                                                        <div class="mx-auto" style="height: 100%; width: 95%; border-radius: 5px; border:1px solid lightgray">
                                                            <div class="nav-link" style="color:black; ">
                                                                <h6 class="text-start mb-2">공시지원금</h6>
                                                                <h3 class="text-end mb-3">휴대폰 가격 1회 할인</h3>
                                                            </div>
                                                            <div class="row">
                                                                <div class="form-check custome-radio-box">
                                                                    <!-- <input class="form-check-input mx-2" type="radio" name="disKind" id="discount0" value="0"> -->
                                                                    <form:radiobutton path="disKind" cssClass="form-check-input mx-2" id="discount0" value="0"/>
                                                                    <label class="form-check-label d-flex justify-content-between" for="paypal"> 공시지원금 
                                                                        <span class="justify-content-end" style="margin-left:100px;">총</span> <span class="fs-4" id="dis0" style="margin-top:-10px;"> </span> <span>원</span> </label>
                                                                </div>
                                                            </div> 
                                                        </div>

                                                        <div class="mx-auto" style="height: 100%; width: 95%; border-radius: 5px; border:1px solid lightgray">
                                                            <div class="nav-link" style="color:black; ">
                                                                <h6 class="text-start mb-2">선택약정할인</h6>
                                                                <h3 class="text-end mb-3">통신요금 25% 할인</h3>
                                                            </div>    
                                                            <div class="row">
                                                                <div class="form-check custome-radio-box">
                                                                    <!-- <input class="form-check-input mx-2" type="radio" name="disKind" id="discount1" value="1"> -->
                                                                    <form:radiobutton path="disKind" cssClass="form-check-input mx-2" id="discount1" value="1"/>
                                                                    <label class="form-check-label d-flex justify-content-between" for="paypal">12개월 할인 
                                                                        <span class="justify-content-end " style="margin-left:103px;">총</span> <span class="fs-4" id="dis1" style="margin-top:-10px; "> </span> <span>원</span> </label>
                                                                </div> 
                                                                <div class="form-check custome-radio-box">
                                                                    <!-- <input class="form-check-input mx-2" type="radio" name="disKind" id="discount2" value="2"> -->
                                                                    <form:radiobutton path="disKind" cssClass="form-check-input mx-2" id="discount2" value="2"/>
                                                                    <label class="form-check-label d-flex justify-content-between" for="paypal">24개월 할인  
                                                                        <span class="justify-content-end" style="margin-left:100px;">총</span> <span class="fs-4" id="dis2" style="margin-top:-10px;"> </span> <span>원</span> </label>
                                                                </div> 
                                                            </div>   
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 요금제 선택 끝 -->

                                <!-- 절차 끝 구분선 -->
                                <hr class="mb-4">

                                <!-- 약관동의 및 가입버튼 -->
                                <div class="col-md-12 m-0" >
                                    <div>
                                        <jsp:include page="./applicationTextArea.jsp"></jsp:include>
                                    </div>
                                    <div class="mt-3 mb-4 d-flex justify-content-center">
                                            <!-- <input class="checkbox_animated check-it mt-1" type="checkbox" id="checkTerms"> -->
                                            <form:checkbox path="checkTerms" cssClass="checkbox_animated check-it mt-1" id="checkTerms"/>
                                            <label class="form-check-label checkout-label" for="checkTerms" style="font-weight: bolder;">약관에 동의했습니다.</label>
                                    </div>
                                    <div class="mx-auto col-6 row">
                                        <button class="btn btn-solid-default w-75 mx-auto" id="completeForm" type="button" style="padding-left: 4px; padding-right: 4px; height: 61%; font-size: calc(12px + (13 - 12) * ((100vw - 320px) / (1920 - 320)));">            
                                            가입하기
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!-- 회선정보 입력 끝 -->
                        </div>
                    </form:form>
                </div>
                <!-- 좌측영역 끝 -->

                <!-- 우측영역 시작 -->
                <div class="col-lg-5" id="receipt">
                    <div class="your-cart-box">
                        <ul class="list-group mb-3">
                            <li class="list-group-item lh-condensed active " style="background-color: #4f4f4f;">
                                <h3 class="mt-3 mb-1 text-capitalize" id="billDirectName"></h3>
                                <h4 class="my-1" style="color: #fff;" id="billOptionName"></h4>
        
                                <h6 class="mt-4" style="color: #fff;" id="billJoinType"></h6>
                                <h6 class="my-1" style="color: #fff;" id="billPlan"></h6>
                                <h6 class="my-1" style="color: #fff;" id="billDisKind"></h6>
                                <!-- 나중에 필요한거 넣기 -->
                                <h6 class="mt-1 mb-4" style="color: #fff;" id=""></h6>
                            </li>
                            <li class="list-group-item lh-condensed active">
                                <div class="row">
                                    <div class="d-flex justify-content-between">
                                        <span class="fw-bold">휴대폰 월 할부금</span>
                                        <span class="d-flex">
                                            <h3 class="fw-bold" style="color: #7e7e7e;" id="out_phonePayPrice"></h3>
                                            <span class="fw-bold col-5">원</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="mt-2 d-flex justify-content-between">
                                        <span class="fw-bold" >월 통신요금</span>
                                        <span class="d-flex">
                                            <h3 class="fw-bold" style="color: #7e7e7e;" id="out_planPrice"></h3>
                                            <span class="fw-bold col-5">원</span>
                                        </span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item d-flex lh-condensed justify-content-between active" style="padding: 20px 20px 15px;">
                                <span class="fw-bold">예상 월 납부금액</span>
								<span class="d-flex">
									<h2 class="title title1" style="color: var(--theme-color); margin-bottom: 0;" id="totalPrice"></h2>
									<span class="title title1" style="color: var(--theme-color);">원</span>
								</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 우측영역 끝 -->

            </div>
        </div>
        <!-- 전체 컨테이너 끝 -->
    </section>
    <!-- Cart Section End -->
    
    <!-- tap to top Section Start -->
    <div class="tap-to-top">
        <a href="#home">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
    <!-- tap to top Section End -->

    <!-- applicationForm.jsp에서 쓸 js파일 삽입 -->
    <script src="/assets/js/applicationForm.js"></script>
    
    <!-- feather icon js-->
    <script src="/assets/js/feather/feather.min.js"></script>

    <!-- lazyload js-->
    <script src="/assets/js/lazysizes.min.js"></script>

    <!-- Slick js-->
    <script src="/assets/js/slick/slick.js"></script>
    <script src="/assets/js/slick/slick-animation.min.js"></script>
    <script src="/assets/js/slick/custom_slick.js"></script>

    <!-- newsletter js -->
    <script src="/assets/js/newsletter.js"></script>

    <!-- add to cart modal resize -->
    <script src="/assets/js/cart_modal_resize.js"></script>

    <!-- Add To Home js -->
    <script src="/assets/js/pwa.js"></script>

    <!-- add to cart modal resize -->
    <script src="/assets/js/cart_modal_resize.js"></script>

    <!-- feather icon js-->
    <!-- <script src="/assets/js/timer1.js"></script> -->

    <!-- notify js -->
    <script src="/assets/js/bootstrap/bootstrap-notify.min.js"></script>

    <!-- script js -->
    <script src="/assets/js/theme-setting.js"></script>
    <script src="/assets/js/script.js"></script> 
			
	<!-- 다음 주소 찾기 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(document).ready(function(){
	    let message = "${message}";
		if(message!= ""){
		    alert(message);
		}
	})
	
	
	/* 다음 주소 연동 */
	function execution_daum_address(){
		
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            
	            	console.log(addr);
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 주소변수 문자열과 참고항목 문자열 합치기
	      			addr += extraAddr;
	            
	            } else {
	                addr += ' ';
	            }
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $('#address1').val(data.zonecode);
	            //$("[name=memberAddr1]").val(data.zonecode);	// 대체가능
	            $('#address2').val(addr);
	            //$("[name=memberAddr2]").val(addr);			// 대체가능
	            // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
	            $('#address3').attr("readonly",false);
	            $('#address3').focus(); 
	        }
	    }).open();   
	}
	</script>
</body>
</html>
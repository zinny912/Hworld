<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="multikart">
    <meta name="keywords" content="multikart">
    <meta name="author" content="multikart">
    <link rel="shortcut icon" href="/invoice/images/icon.png" type="image/x-icon">
    <title>H WORLD</title>

    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="/invoice/css/vendors/font-awesome.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="/invoice/css/vendors/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="/invoice/css/style.css">
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
</head>

<body class="theme-color2 bg-light">
	<!-- invoice 1 start -->
	<section class="theme-invoice-1 section-b-space">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 m-auto">
					<div class="invoice-wrapper">
						<!-- invoice Header Start -->
						<div class="invoice-header">
							<div class="upper-icon">
								<img src="/invoice/images/invoice.svg" class="img-fluid" alt="">
							</div>
							<div class="row header-content">
								<div class="col-md-6">
									<img src="/invoice/images/logo.png" class="img-fluid" alt="">
								</div>
								<div class="col-md-6 text-md-end">
									<h4 class="mb-3">
										<c:set var="phoneNum" value="${kingTP.PHONENUM}" />
										<c:set var="formattedPhoneNum" value="${fn:substring(phoneNum, 0, 3)}-${fn:substring(phoneNum, 3, 7)}-${fn:substring(phoneNum, 7,11)}"/>
										${kingTP.NAME}(${formattedPhoneNum}) 회원님
									</h4>
									<h2>즉시 납부</h2>
								</div>
							</div>
							<!-- <div class="detail-bottom">
								<ul>
									<li><span>청구 월</span>
										<h4>2023/04</h4>
									</li>
									<li><span>납부 날짜</span>
										<h4>2023/05/15 10:40PM</h4>
									</li>
									<li><span>납부 번호</span>
										<h4> 908452</h4>
									</li>
								</ul>
							</div> -->
						</div>
						<!-- invoice Header end -->
						
						<!-- form Start -->
						<!-- 미납금이 있는 모든 회선 갯수 구하기 -->
						<c:set var="TPCount" value="${TPList.size()}"/>
						<!-- <p> 미납금이 있는 telephoneVO 개수 : ${TPCount}</p> -->
						
						<!-- 작동 안하는 되돌리기 조건 -->
						<!-- <c:if test="${TPCount ne 0}">
							${kingTP.NAME}(${formattedPhoneNum}) 회원님의 미납 내역은 없습니다.
							<div class="invoice-footer text-end">
								<div class="text-end">
									<a href="./home" class="btn btn-solid-default rounded-2">마이페이지</a>
								</div>
							</div>
						</c:if> -->
						
						
						<c:forEach begin="0" end="${TPCount - 1}" varStatus="tpStatus">
							<!-- <p> =============== 회선 구분 ============== </p> -->
							<!-- telephoneVO의 index사용 -->
							<c:set var="telephoneVO" value="${TPList[tpStatus.index]}"/>
							
							<!-- telephoneVO 안에 있는 billVO의 갯수 파악 -->
							<c:set var="billCount" value="${telephoneVO.billVOs.size()}"/>

							<!-- 각 telephoneVO 안의 billVO 갯수만큼 반복문 돌리기 -->
							<c:forEach begin="0" end="${billCount - 1}" varStatus="billStatus">
								<!-- billVO의 index 사용 -->
								<c:set var="billVO" value="${telephoneVO.billVOs[billStatus.index]}"/>
								
								<!-- 여기서 조건 걸어서 즉시 납부에 출력할 미납 영수증만 가져오기 -->
								<c:if test="${billVO.billCheck eq 1 && billVO.paidCheck eq 0}">
									<%-- <p> 조건에 맞는 bill번호 : ${billStatus.index} </p>
									<p> 요금제 : ${telephoneVO.planVO.planName} </p>
									<p> 납부날 : ${billVO.payMonth} </p>
									<p> 부가서비스 사용료: ${billVO.EPlanPrice} </p> --%>

									<!-- invoice 1 -->
									<div class="invoice-body table-responsive-md">
										<div class="detail-bottom mb-3">
											<div class="d-flex justify-content-between">
												<c:set var="phoneNum" value="${telephoneVO.phoneNum}" />
												<c:set var="formattedPhoneNum" value="${fn:substring(phoneNum, 0, 3)}-${fn:substring(phoneNum, 3, 7)}-${fn:substring(phoneNum, 7,11)}"/>
												<h3>회선번호 ${formattedPhoneNum}</h3>
												<h3>20${billVO.payMonth}월</h3>
											</div>
										</div>
										<div class="billValue" data-bill-num="${billVO.billNum}"></div>
										<table class="table table-borderless">
											<thead>
												<tr>
													<th scope="col" class="fw-bold">분류</th>
													<th scope="col" class="fw-bold" style="padding-left: 5%">내용</th>
													<th scope="col" class="fw-bold">금액</th>
													<th scope="col" class="fw-bold">할인</th>
													<th scope="col" class="fw-bold" style="padding-left: 15%">비고</th>
												</tr>
											</thead>
											
											<tbody>
												<tr>
													<th scope="row" class="fw-bold">기기</th>
													<td>${telephoneVO.directName}</td>
													<td>
														<fmt:formatNumber value="${billVO.phonePayPrice}" pattern="#,###원"/>
													</td>
													<td>
													</td>
													<td>
														<p>단말기 분할 상환금 <fmt:formatNumber value="${billVO.phoneSplitPrice}" pattern="#,###원"/></p>
														<p>단말기 분할 상환 수수료 <fmt:formatNumber value="${billVO.phoneSplitTax}" pattern="#,###원"/></p>
													</td>
												</tr>
												<tr>
													<th scope="row" class="fw-bold">요금제</th>
													<td>${telephoneVO.planVO.planName}</td>
													<td>
														<fmt:formatNumber value="${billVO.disPlanPrice}" pattern="#,###원"/>
													</td>
													<td>
														<c:choose>
															<c:when test="${billVO.disPrice ne 0}">
																-<fmt:formatNumber value="${billVO.disPlanPrice}" pattern="#,###원"/>
															</c:when>
															<c:otherwise>
															</c:otherwise>
														</c:choose>
													</td>
													<td>
														<c:if test="${telephoneVO.disKind eq 0}">
															공시지원금
														</c:if>
														<c:if test="${telephoneVO.disKind eq 1}">
															선택약정(12개월)
														</c:if>
														<c:if test="${telephoneVO.disKind eq 2}">
															선택약정(24개월)
														</c:if>
													</td>
												</tr>
												<tr>
													<th scope="row" class="fw-bold">부가서비스</th>
													<td></td>
													<td>
														<fmt:formatNumber value="${billVO.EPlanPrice}" pattern="#,###원"/>
													</td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
											<tfoot >
												<tr>
													<td colspan="1"></td>
													<td class="font-bold text-dark" colspan="1">총 금액</td>
													<td class="font-bold text-theme" name="prices">
														<fmt:formatNumber value="${billVO.phonePayPrice + billVO.disPlanPrice + billVO.overduePrice + billVO.EPlanPrice}" pattern="#,###원"/>
													</td>
												</tr>
											</tfoot>
										</table>
									</div>
								</c:if>
							</c:forEach>
						</c:forEach>
						<!-- 인풋값 시작 -->
						<div id="hiddenValue">
							<form action="./instantPay" method="post" id="updateBill">
								<input type="hidden" id="invoiceNum">
								<input type="hidden" id="totalPrice">
								<input type="hidden" id="billNums" name="billNum">
							</form>
						</div>
						<!-- 인풋값 끝 -->
						<!-- form End -->
						<div class="invoice-footer text-end">
							<div class="text-end">
								<a href="./home" class="btn btn-solid-default rounded-2 me-2">마이페이지</a>
								<a href="javascript:void(0)" class="btn btn-solid-dark rounded-2 me-2"
								onclick="window.print();">출력</a>
								<a href="javascript:void(0)" class="btn btn-solid-default rounded-2" id="instantlyPay">즉시 납부</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- invoice 1 end -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/assets/js/invoiceInstantly.js"></script>
<script>

</script>
</body>

</html>
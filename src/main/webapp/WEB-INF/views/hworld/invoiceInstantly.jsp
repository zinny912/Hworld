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
    
    </head>
    
    <body class="theme-color2 bg-light">
    ${kingTP}
    ${TPList}
    <c:forEach items="${TPList}" var="telephoneVO">
    	${telephoneVO.phoneNum}
    </c:forEach>
    
    <!--  -->
    <!-- 미납금이 있는 모든 회선 갯수 구하기 -->
    <c:set var="TPCount" value="${TPList.size()}"/>
    <p> 미납금이 있는 telephoneVO 개수 : ${TPCount}</p>
    
    
    
    <c:forEach begin="0" end="${TPCount - 1}" varStatus="tpStatus">
    	<p> =============== 회선 구분 ============== </p>
    	<!-- telephoneVO의 index사용 -->
		<c:set var="telephoneVO" value="${TPList[tpStatus.index]}"/>
		
		<!-- telephoneVO 안에 있는 billVO의 갯수 파악 -->
		<c:set var="billCount" value="${telephoneVO.billVOs.size()}"/>
		<p> telephone${tpStatus.index}에 있는 bill의 갯수 : ${billCount}</p>
		
			<p> 회선번호 : ${telephoneVO.phoneNum}</p>
			
			
		<!-- 각 telephoneVO 안의 billVO 갯수만큼 반복문 돌리기 -->
		<c:forEach begin="0" end="${billCount - 1}" varStatus="billStatus">
			<!-- billVO의 index 사용 -->
			<c:set var="billVO" value="${telephoneVO.billVOs[billStatus.index]}"/>
			<p> billVO 번호 : ${billStatus.index} <p>
			
			
			<!-- 여기서 조건 걸어서 즉시 납부에 출력할 미납 영수증만 가져오기 -->
			<c:if test="${billVO.billCheck eq 1 && billVO.paidCheck eq 0}">
				<p> 조건에 맞는 bill번호 : ${billStatus.index} </p>
				<p> 요금제 : ${telephoneVO.planVO.planName} </p>
				<p> 납부날 : ${billVO.payMonth} </p>
				<p> 부가서비스 사용료: ${billVO.EPlanPrice} </p>
				
				
				<!-- invoice 1 -->
	            <div class="invoice-body table-responsive-md">
	                <div class="detail-bottom mb-3">
	                    <h3>${telephoneVO.phoneNum}</h3>
	                </div>
	                <table class="table table-borderless">
	                    <thead>
	                        <tr>
	                            <th scope="col">분류</th>
	                            <th scope="col">내용</th>
	                            <th scope="col">금액</th>
	                            <th scope="col">할인</th>
	                            <th scope="col">비고</th>
	                        </tr>
	                    </thead>
	                    
	                    <tbody>
	                    	<tr>
	                            <th scope="row">기기</th>
	                            <td>${telephoneVO.directName}</td>
	                            <td>${billVO.phonePayPrice}</td>
	                            <td>
	                            </td>
	                            <td>
	                            	<p>단말기 분할 상환금 ${billVO.phoneSplitPrice}</p>
	                            	<p>단말기 분할 상환 수수료 ${billVO.phoneSplitTax}</p>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th scope="row">요금제</th>
	                            <td>${telephoneVO.planVO.planName}</td>
	                            <td>${telephoneVO.planVO.planPrice}</td>
	                            <td>-${billVO.disPrice}</td>
	                            <td>
	                            	<c:if test="${telephoneVO.disKind eq 1}">
	                            		선택약정(12개월)
	                            	</c:if>
	                            	<c:if test="${telephoneVO.disKind eq 2}">
	                            		선택약정(24개월)
	                            	</c:if>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th scope="row">부가서비스</th>
	                            <td>총 금액</td>
	                            <td>${billVO.EPlanPrice}</td>
	                            <td></td>
	                            <td></td>
	                        </tr>
	                    </tbody>
	                    <tfoot >
	                        <tr>
	                            <td colspan="1"></td>
	                            <td class="font-bold text-dark" colspan="1">총 금액</td>
	                            <td class="font-bold text-theme">${billVO.phonePayPrice + billVO.disPlanPrice + billVO.overduePrice}</td>
	                        </tr>
	                    </tfoot>
	                </table>
	            </div>
				
				
				
				
				
				
				
			</c:if>
		
		
		</c:forEach>
		
		<%-- <c:set var="billVO" value="${telephoneVO.billVOs[0]}" />
		phoneNum: ${telephoneVO.phoneNum}
		billNum: ${billVO.billNum}
		payMonth: ${billVO.payMonth} --%>
	</c:forEach>
    

    <%-- <c:forEach items="${TPList}" var="telephoneVO">
        <c:forEach items="${telephoneVO.billVOs}" var="billVO">
            <c:if test="${billVO.billCheck eq 1 && billVO.paidCheck eq 0}">
            <tr>
                <td>
                    <p class="m-0" style="color: black;">20${billVO.payMonth}</p>
                    <p class="m-0" style="color: black;">20---${billVO.EPlanPrice}</p>
                </td>
                <td>
                    <p class="m-0 unpaid" style="color: #e22454;"><fmt:formatNumber value="${billVO.totalPrice}" pattern="#,### 원"/></p>
                </td>
            </tr>
            </c:if>
        </c:forEach>
    </c:forEach> --%>
    
        <!-- invoice 1 start -->
        <section class="theme-invoice-1 section-b-space">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 m-auto">
                        <div class="invoice-wrapper">
                        	<!-- invoice Header -->
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
                                <div class="detail-bottom">
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
                                </div>
                            </div>
                            
                            <!-- invoice 1 -->
                            <div class="invoice-body table-responsive-md">
                                <div class="detail-bottom mb-3">
                                    <h3>회선 : 010-3333-3333</h3>
                                </div>
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <th scope="col">분류</th>
                                            <th scope="col">내용</th>
                                            <th scope="col">금액</th>
                                            <th scope="col">할인</th>
                                            <th scope="col">비고</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <th scope="row">요금제</th>
                                            <td>5G 프리미어</td>
                                            <td>88,000원</td>
                                            <td>-22,000원</td>
                                            <td>선택약정할인 (24개월)</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">기기</th>
                                            <td>아이폰 14</td>
                                            <td>41,600원</td>
                                            <td></td>
                                            <td>할부(4/24개월)</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">부가서비스</th>
                                            <td>매너콜</td>
                                            <td>1,100원</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                    <tfoot >
                                        <tr>
                                            <td colspan="1"></td>
                                            <td class="font-bold text-dark" colspan="1">총 금액</td>
                                            <td class="font-bold text-theme">108,700원</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            
                            
                            <!-- invoice 2 -->
                            <div class="invoice-body table-responsive-md">
                                <div class="detail-bottom mb-3">
                                    <h3>회선 : 010-4444-4444</h3>
                                </div>
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <th scope="col">분류</th>
                                            <th scope="col">내용</th>
                                            <th scope="col">금액</th>
                                            <th scope="col">할인</th>
                                            <th scope="col">비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">요금제</th>
                                            <td>5G 프리미어</td>
                                            <td>88,000원</td>
                                            <td>-22,000원</td>
                                            <td>선택약정할인 (24개월)</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">기기</th>
                                            <td>아이폰 14</td>
                                            <td>41,600원</td>
                                            <td></td>
                                            <td>할부(4/24개월)</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">부가서비스</th>
                                            <td>매너콜</td>
                                            <td>1,100원</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                    <tfoot >
                                        <tr>
                                            <td colspan="1"></td>
                                            <td class="font-bold text-dark" colspan="1">총 금액</td>
                                            <td class="font-bold text-theme">108,700원</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="invoice-footer text-end">
                                
                                <div class="text-end">
                                    <a href="#" class="btn btn-solid-dark rounded-2 me-2"
                                    onclick="window.print();">출력</a>
                                    <a href="#" class="btn btn-solid-default rounded-2"
                                        >즉시 납부</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- invoice 1 end -->
    
    
        
    
    </body>
    
    </html>
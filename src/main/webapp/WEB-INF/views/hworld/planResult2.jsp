<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>번호이동</title>
	<style>
	.flex-container {
	        display: flex;
	        align-items: center;
	        width: 100%;
	        overflow-x: hidden;
	        overflow-y: hidden;
	    }
	
	    .flex-container > * {
	        margin-right: 0px;
	        width: 100%;
	    }
	    .line-through {
	     text-decoration:line-through
	     }
	</style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
 
    <!-- Contact Section Start -->
    <section class="contact-section">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="materialContainer">
                            <div class="material-details">
                                <div class="title title1 title-effect mb-1 title-left">
                                    <p class="fs-3 w-100 text-center">${memberVO.name} 님, <strong class="fs-2 theme-color">H world</strong>에 오신것을 환영합니다! <br> 선택하신 <strong class="fs-2 theme-color">요금상품</strong>으로 <strong class="fs-2 theme-color">가입</strong>이 완료되었습니다.</p>
                                </div>
                            </div>
                      
                            <div class="">
                                <div class="row mb-5 justify-content-center">
                                    <div class="col-lg-5 text-center">
                                        <div class="contact-details rounded-3 mt-3 mb-3 ">
                                            <div class="container">
                                                <button class="btn rounded-pill m-1 default-theme mb-3"> <h6>선택한 요금상품</h6></button>
                                                <h2 class="fw-bolder"><c:out value="${plan.planName}" /></h2>
                                                
                                                <h4 id="planPrice_" class="fw-bolder mb-1"></h4>

                                                 <h2 id="disKindPrice" class="fw-bolder"></h2>

                                                <input type="hidden" id="disKind" value="${plan.disKind}">
                                                <input type="hidden" id="planPrice" value="${plan.planPrice}">
                                                
                                                <div class="container">
                                                 <c:set var="phoneNum" value="${plan.phoneNum}" />
											<c:set var="formattedPhoneNum" value="${fn:substring(phoneNum, 0, 3)}-${fn:substring(phoneNum, 3, 7)}-${fn:substring(phoneNum, 7,11)}" />
                                                    <h2 class="font-light" >${formattedPhoneNum}</h2>
                                                </div>
                                                <div class="contact-box justify-content-center" style="border-bottom:2px solid; border-color:#fff; padding-bottom:20px;">
                                                    <div class="mx-6 ">
                                                        <img class="mb-4"src="/assets/images/mobile-phone.png">
                                                        <h3 >개통일 : <c:out value="${plan.contractDate}" /></h3>
                                                        <h3 id="expireDate">만료일 : <c:out value="${plan.expireDate}" /> </h3>
                                                        <h6 id="disKindText2" style="color:gray;" class="mt-1"></h6>
                                                		<h6 id="disKindText" style="color:gray;"></h6>
                                                    </div>   
                                                </div>
                                                
                                                <div class="contact-box justify-content-center">
                                                    <div class="contact-title">
                                                        <span class="fs-6 mb-0">오늘부터<br> Hworld 요금제로 휴대폰 사용이 가능합니다.</span>
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
            </div>               
    </section>

    <div class="container mb-4">
        <div class="d-flex mb-3 container justify-content-center">
        <button onclick="location.href = './planList';" type="button" class="btn rounded-3 btn-solid-default">부가서비스 보러가기</button>
        <button onclick="location.href = '../myPage/home';" type="button" class="btn rounded-3 btn-secondary mx-1">마이페이지</button>
        </div>
    </div>
<!-- Contact Section End -->    
<c:import url="../temp/footer.jsp"></c:import>

<script>
/* const currentDate = new Date();

const year = currentDate.getFullYear();
const month = currentDate.getMonth() + 1;
const day = currentDate.getDate();
const days = currentDate.getDate() + 1;

const formattedDate = new Date(year, month - 1, day);


const options = { year: "numeric", month: "long", day: "numeric" };
const formattedDateString = formattedDate.toLocaleDateString("ko-KR", options);


document.getElementById("newDate").textContent = formattedDateString;

 */
const disKind = $('#disKind').val();
const planPrice = $('#planPrice').val();
const planPrice_ = (planPrice * 1).toLocaleString();
$('#planPrice_').text("월"+planPrice_+"원");
const disKindPrice = (planPrice * 0.75).toLocaleString();
if(disKind ==2){
	$('#disKindText').text("선택약정할인 : 요금제 25% 할인");
	$('#planPrice_').addClass('line-through');
	$('#disKindPrice').text("월"+disKindPrice+"원").addClass('theme-color');
	$('#disKindText2').text("24개월 약정가입");
}else if(disKind ==1) {
	$('#disKindText').text("선택약정할인 : 요금제 25% 할인");
	$('#planPrice_').addClass('line-through');
	$('#disKindPrice').text("월"+disKindPrice+"원").addClass('theme-color');
	$('#disKindText2').text("12개월 약정가입");
}else {
	$('#disKindText').text("무약정 플랜 가입");
	$('#disKindPrice').text("월"+planPrice_+"원").addClass('theme-color');
	$('#planPrice_').hide();
	$('#expireDate').hide();
}

</script>



</body>

</html>
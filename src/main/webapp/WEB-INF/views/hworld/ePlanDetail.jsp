<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>    
    <title>부가서비스 상세페이지</title>
 <style>
  
    .login-section {
        background-color: #fff;
    }

    .box{
        border:1px solid black;  
    }
    
    .zcustom-box {
        width: 90%;
        border-radius: 10px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        border:1px solid darkgray;
        padding:30px 20px 40px 30px;
        margin:40px;
        background-color: fff;
    }
    .zcustom-box h3 {
        color:black;
        text-align:center;
       
    }
   
    .zcustom-box li{
        margin-right:10px;
       
    }
   
    .hbox {
        border-right: 2px lightgray solid;
        margin-left :20px;
        margin-right :20px;   
    }
    .hbox1 {
        border-right: 0px lightgray solid;
        margin-left :20px;  
    }

    .modal-dialog .modal-content{
        width: 70%;
        margin-left:15%;
    }
    
    .modal-dialog.modal-custom {
    max-width: 600px; /* 원하는 가로 크기 설정 */
	}

</style>
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    
    <section>
        <div class="container">
            <div class="material-details">
                <div class="title title1 title-effect title-left">
                    <h2>부가서비스</h2>
                    
                </div>
            <div class="row gx-4 gy-5">
                <div class="col-12">
                    <div class="details-items">
                        <div class="row g-4">
                            <div class="col-md-12 ">
                            <c:if test="${memberVO.adminCheck == 0}">
                                <div class="justify-content-start" style="margin-top:-20px;">
                                    <a href="./ePlanUpdate?extraPlanNum=${extraPlanVO.extraPlanNum }" class="me-3">수정</a>
                                    <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#disabledBtn">비활성화</a>
                                </div>
                              </c:if>  
                                <input type="hidden" id="extraPlanNum" name="extraPlanNum" value="${eplan.extraPlanNum}">
                                <div class="details-image-concept" >
                                    <span class="text-start" style="font-size:30px; font-weight: 700;">${eplan.extraPlanName}</span>
                                    <input type="hidden" name="extraPlanName" id="extraPlanName" value="${eplan.extraPlanName}">
                                    <span style="font-size:30px; font-weight: 500;"> </span>
                                </div>
                                <h3 class="text-start" style="color:gray;"> ${eplan.extraPlanExplainS} </h3>
									<div class="zcustom-box" style="display: flex;">
									    <ul style="width: 100%; list-style-type: none; display: flex;">
									        <li style="width: 50%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
									            <img src="/assets/images/addition.png">
									            <div style="width: 450px; display: flex; justify-content: center; align-items: center;">
									                <h3>${eplan.extraPlanExplainM}</h3>
									            </div>
									        </li>
									        <li style="width: 50%;">
									            <div style="padding-top: 35px;">
									                <h2 class="theme-color d-flex justify-content-center">월 <fmt:formatNumber value="${eplan.extraPrice}" pattern="#,###" /> 원</h2>
									                <span class="label-text d-flex justify-content-center mb-2">(부가세 포함)</span>
									            </div>
									            
									            <input type="hidden" value="${map}">
									            <input type="hidden" value="${map.EXTRAPLANNUM}" >
									            <input type="hidden" value="${bfPlan.serialNum }">
									            <input type="hidden" value="${map.SERIALNUM}">
									                    <!-- 신청 모달 버튼  start -->
									            <c:choose>
												    <c:when test="${not empty bfPlan.serialNum}">
												        <c:choose>
												            <c:when test="${map.EXTRAPLANNUM != param.extraPlanNum}">
												                <div class="product-buttons justify-content-center">
												                    <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#extraJoin">
												                        <span class="btn btn-solid rounded-3">이 부가서비스 신청하기</span>
												                    </a>
												                </div>
												            </c:when>
												            <c:when test="${map.EXTRAPLANNUM == param.extraPlanNum}">
												                <div class="product-buttons justify-content-center">
												                    <span class="btn btn-solid rounded-3 disabled">이미 사용중인 부가서비스입니다.</span>
												                </div>
												            </c:when>
												        </c:choose>
												    </c:when>
												    <c:otherwise>
                                                <c:if test="${memberVO.adminCheck ==0}"> 
                                                <div class="product-buttons justify-content-center">
                                                        <span class="btn btn-solid rounded-3 disabled">휴대폰 개통 후 신청 가능합니다.</span> 
                                                </div> 
                                               </c:if>
                                                </c:otherwise>
                                                </c:choose>
										        </li> 
										    </ul>
										</div>                        
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
            <div class="container">
                <ul class="product-count shipping-order">
                    <li>
                        <span class="lang">부가서비스는 청구금액에 포함되어 계산됩니다.</span>
                    </li>
                </ul>
                <div class="col-12">
                    <div class="cloth-review">
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                    data-bs-target="#desc" type="button">상세정보</button>
                                    
                            </div>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="desc">
                                <div class="shipping-chart">
                                    <div class="part">
                                        <h4 class="inner-title mb-2">
                                    ${eplan.extraPlanExplain}
                                    </h4>
                                   
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

<!-- 부가서비스 신청 모달창 start -->
    <div class="modal fade payment-modal" id="extraJoin">
        <div class="modal-dialog modal-dialog-centered modal-custom">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form action="./ePlanApply" method="POST" id="extraApplyForm">
                        <div class="mb-4">
                            <p class="fs-5"> 
                            <div class="category-option">
                                <div class="accordion category-name" id="accordionExample"> 
                                    <div class="accordion-item category-rating">
                                        <h4 class="accordion-header" id="headingThree">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree">
                                                유의사항
                                            </button>
                                        </h4>
                                        <div id="collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                            <div class="accordion-body category-scroll">
                                                <ul class="category-list ">
                                                    <li class="text-start">
                                                    <p>해당 부가서비스는 <br> 월 ${eplan.extraPrice} 원의 유료서비스로,<br> 신청일부터 서비스가 시작되며 요금이 부과됩니다.</p>
                                                        <p>부가서비스 신청 후 해지시 <br>요금은 일괄계산되어 청구금액에 포함됩니다.</p>
                                                        <input type="hidden" id="modalSerialNum" name="serialNum" value="${bfPlan.serialNum}">
                                                        <input type="hidden" id="modalPlanNum" name="extraPlanNum" value="${param.extraPlanNum}">
                                                        <input type="hidden" id="ePlanName" name="extraPlanName">
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="col-12 ">
                                    <li class="checkbox-list mt-3 ">
                                        <div class="form-check user-checkbox ps-0 ">
                                            <input class="checkbox_animated check-it" type="checkbox" value="1" id="extraApplyCheck">
                                            <label class="form-check-label fw-bolder" for="flexCheckDefault1">위 안내사항을 확인하였습니다.</label>
                                        </div>
                                    </li>
                                </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer pt-0 text-end d-block">
                    <!-- <a href="./extraResult"> --><button type="button" class="btn btn-solid-default rounded-1" id="extraConfirm">확인</button></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Add number Modal End -->

    <!-- 부가서비스 비활성화 모달창 start -->
    <div class="modal fade payment-modal" id="disabledBtn">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form action = "./planDisabled" method="POST" id="disabledPlan">
                    <div class="mb-4">
                     <h3 class="theme-color fw-bold">해당 요금제를 비활성화 하시겠습니까? </h3> <br> <h5>비활성화 이후에는 활성화가 불가합니다.</h5>
                     <h5>해당요금제로는 더이상 신규가입이 불가하게 됩니다.</h5>
                     <input type="text" name="extraPlanNum" id="modalExtraPlanNum" value="${extraPlanVO.extraPlanNum}">
                    </div>
                </form>
            </div>
            <div class="modal-footer pt-0 text-end d-block">
                <button type="button" id="confirmDisabled" class="btn btn-solid-default rounded-1">확인</button></a>
            </div>
        </div>
    </div>
</div>
    <!-- Add number Modal End -->


<c:import url="../temp/footer.jsp"></c:import>

<script>
// 부가서비스 신청 버튼 클릭 이벤트 처리
 $('#confirmDisabled').click(function() {
        let confirm = $('#modalExtraPlanNum').val();
      console.log(confirm);
    	   $('#disabledPlan').submit();
    	   console.log("확인")
    });
    


$('#extraApplyCheck').click(function() {
    const ep = $('#extraPlanNum').val();
    $('#modalPlanNum').val(ep);
    const epn = $('#extraPlanName').val();
    $('#ePlanName').val(epn);
});

$('#extraConfirm').click(function() {
	let check = $('#extraApplyCheck:checked').val();
   	chk = isEmpty(check);
   	
   if(chk== true){
	   $('#extraApplyForm').submit();
	   console.log("확인")
   }
});


function isEmpty(value){
    if(typeof value == "undefined" || value == null || value == '')
        return false;
    else
        return true;
}



</script>



</body>

</html>
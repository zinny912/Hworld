<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<c:import url="../temp/style.jsp"></c:import>
    <title>Checkout</title>
    <style>
        .addeffect-section .size-box ul li.active {
            background: var(--theme-color); 
        }
    </style>    
    
     <!-- 다음주소 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
</head>

<body>

       <form action="./payment" method="post" class="needs-validation" id="form"> 
       
        <input type="hidden" class="form-control" id="name" name="orderReceiver" value="${orderInfo.orderReceiver}">
        <input type="hidden" class="form-control" id="memberNum" name="memberNum" value="${memberVO.memberNum}">
        <input type="hidden" class="form-control" id="tel" name="orderTelNum" value="${orderInfo.orderTelNum}">
        
        <input type="hidden" class="form-control" id="address1" name="orderAddress1" value="${orderInfo.orderAddress1}">
        <input type="hidden" class="form-control" id="address2" name="orderAddress2" value="${orderInfo.orderAddress2}">
        <input type="hidden" class="form-control" id="address3" name="orderAddress3" value="${orderInfo.orderAddress3}">
               
               
		<c:set var="orderFinalPrice" value="0" />
		<c:forEach items="${orderList}" var="ol">
		  <c:set var="orderFinalPrice" value="${orderFinalPrice + ol.calPrice}" />
		</c:forEach>
		<input type="hidden" name="orderNum" value="${orderInfo.orderNum}">
		<input type="hidden" name="memberNum" value="${memberVO.memberNum}">
		  <input type="hidden" name="orderFinalPrice" value="${orderFinalPrice}">
		

        <c:forEach items="${orderList}" var="ol">
      	<input type="hidden" name="directCode" value="${ol.directVO.directCode}">
        <input type="hidden" name="directName" value="${ol.directVO.directName}">
		<input type="hidden" name="colorCode" value="${ol.directVO.colorCode}">
		<input type="hidden" name="orderAmount" value="${ol.orderAmount}">
		<input type="hidden" name="calPrice" value="${ol.calPrice}">		
           </c:forEach>

		
       </form>
  


<script>


	$(document).ready(function() {
	    iamport();
	});

   function iamport(){
      //가맹점 식별코드
      IMP.init('imp15251423');
      IMP.request_pay({
         pg : 'nice.nictest00m',
         pay_method : 'card',
         merchant_uid : 'merchant_' + $('input[name=orderNum]').val(),
         name : '(주)H world', //결제창에서 보여질 이름
         amount : $('input[name=orderFinalPrice]').val(), //실제 결제되는 가격
      }, function(rsp) {
         console.log(rsp);
         if ( rsp.success ) {
            let msg = '결제가 완료되었습니다.';
/*             msg += '고유ID : ' + rsp.imp_uid;
 *//*             msg += '상점 거래ID : ' + rsp.merchant_uid;
 */            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
            console.log('성공');
            alert(msg);
            $('#form').submit();
         } else {
            let msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            console.log('실패');
            alert(msg);
         }
      });
   };
</script>



</body>

</html>
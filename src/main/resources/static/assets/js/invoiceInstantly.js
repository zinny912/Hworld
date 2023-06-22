$('#instantlyPay').click(function(){
    //즉시 납부 버튼 누를때 이벤트
    console.log('확인!');

    let total = 0;

    $('td[name="prices"]').each(function() {
        let priceText = $(this).text();
        let price = parseFloat(priceText.replace(/[^0-9]/g, ''));
        total += price;
    });

    let currentDate = new Date();
    let year = currentDate.getFullYear();
    let month = String(currentDate.getMonth() + 1).padStart(2, '0');
    let day = String(currentDate.getDate()).padStart(2, '0');
    let hours = String(currentDate.getHours()).padStart(2, '0');
    let minutes = String(currentDate.getMinutes()).padStart(2, '0');
    let seconds = String(currentDate.getSeconds()).padStart(2, '0');

    let formattedDateTime = year + month + day + hours + minutes + seconds;

    console.log(formattedDateTime);

    //결제액, 결제번호 세팅
    $('#totalPrice').val(total);
    $('#invoiceNum').val(formattedDateTime);

    //결제 후 작업
    let billNums = [];

    $('.billValue').each(function() {
        let billNum = $(this).data('bill-num');
        billNums.push(billNum);
    });

    $('#billNums').val(billNums.join(','));

    //결제 진행
    let payment = iamport();
    
});



//결제 api 호출 함수
function iamport(){
    let invoiceNum = $('#invoiceNum').val();
    let totalPrice = $('#totalPrice').val();

	//가맹점 식별코드
	IMP.init('imp15251423');
	IMP.request_pay({
		pg : 'nice.nictest00m',
		pay_method : 'card',
		merchant_uid : 'merchant_' + invoiceNum,
		name : '(주)H world', //결제창에서 보여질 이름
		amount : totalPrice //실제 결제되는 가격
	}, function(response) {
		console.log(response);
		if (response.success) {
		let msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + response.imp_uid;
           /* msg += '상점 거래ID : ' + response.merchant_uid;
           msg += '결제 금액 : ' + response.paid_amount; */
		msg += '카드 승인번호 : ' + response.apply_num;
		console.log('성공');
		alert(msg);

        //업데이트를 수행할 updateBill form을 넘김
		$('#updateBill').submit();
		} else {
		let msg = '결제에 실패하였습니다.';
		msg += '에러내용 : ' + response.error_msg;
		console.log('실패');
		alert(msg);
		}
	});
};
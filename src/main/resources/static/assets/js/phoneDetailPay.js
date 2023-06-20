
//프로시저 시작 
//영수증 가격 : 계산에 필요한 값이 빈값인지 확인하는 함수
function isEmpty(value){
    if(typeof value == "undefined" || value == null || value == '')
        return false;
    else
        return true;
}
 // 모달창에서 값을 선택하고 확인 버튼을 클릭했을 때 호출되는 함수
  function onSelectConfirm() {
    // 선택한 값을 가져오기
    const selectedValue = document.querySelector('input[name="planNum"]:checked');
    const planNameLabel = document.querySelector('label[for="' + selectedValue.id + '"]');
    const planName = planNameLabel.innerText;
    const planPrice = selectedValue.getAttribute('data-plan-price');
    const dataGB = selectedValue.getAttribute('data-gb-value');
    const planNum = selectedValue.getAttribute('value');
    
    // 가져온 값을 입력하기
    setSelectedPlan(planName, planPrice, dataGB, planNum);
  }
  
//모달창에서 선택한 값을 입력하는 함수
  function setSelectedPlan(planName, planPrice, dataGB, planNum) {
    // 선택한 요금제, 가격, 데이터 정보 가져오기
    document.getElementById('selectedPlanName').textContent = planName;
    document.getElementById('planPrice').textContent = planPrice;
    document.getElementById('planNum').value = planNum;
    
    // 데이터 정보 처리
    const dataGBElement = document.getElementById('dataGB');
    if (dataGB === '무제한') {
      dataGBElement.innerText = dataGB + '& 음성통화/문자 기본제공';
    } else {
      dataGBElement.innerText = dataGB + 'GB & 음성통화/문자 기본제공';
    }
  }



//월 요금계산 준비
$('#directCode, input[name=disKind], input[name=planNum]').change(function() {
    //영수증 가격 출력
    const directCode = $('#directCode').val(); // 기기코드
    const planNum = $('input[name=planNum]:checked').val(); // 요금제번호
    const disKind = $('input[name=disKind]:checked').val(); // 할인유형
    console.log(directCode);
    console.log(planNum);
    console.log(disKind);

    directCheck = isEmpty(directCode);
    planCheck = isEmpty(planNum);
    disKindCheck = isEmpty(disKind);
    
    $('#out_phonePayPrice').text('');
    $('#out_planPrice').text('');
    $('#totalPrice').text('');

    if(directCheck == true && planCheck == true && disKindCheck == true){
        //모든 값이 다 들어왔을 때 ajax 요청
        //responseBody에 담겨져 응답 돌아옴
        $.ajax({
            type: 'GET',
            url: './calMonthlyPay',
            dataType: 'JSON',
            data: {
                directCode: directCode,
                disKind: disKind,
                planNum: planNum
            },
            success: function(response) {
				let out_phonePayPrice = response.out_phonePayPrice;
                let out_planPrice = response.out_planPrice;
                let totalPrice = (response.out_phonePayPrice*1 + response.out_planPrice*1);
                $('#out_phonePayPrice').text('');
                $('#out_planPrice').text('');
                $('#totalPrice').text('');
                $('#out_phonePayPrice').text(out_phonePayPrice.toLocaleString());
                $('#out_planPrice').text(out_planPrice.toLocaleString());
                $('#totalPrice').text(totalPrice.toLocaleString());
                
            },
            error: function(error) {
                // 에러 처리 로직 작성
                console.log(error);
            }
        });
        
    }
  });


//가입하기 버튼 눌렀을 때
$('#completeForm').click(function(){
    console.log('가입하기 버튼');
    //let $frm = $('#appForm').serialize();
    //alert($frm);

    //가입폼 전송
    $('#appForm').submit();
})
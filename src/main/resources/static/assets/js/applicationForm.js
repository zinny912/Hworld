$(function(){
    //화면 준비시 실행될 내용
	console.log('applicationForm Page');

    //나이계산
    $('input[name="rrnf"]').on('blur', function() {
        const rrnValue = $(this).val();
        let age = calculateAge(rrnValue);
        console.log('나이:', age);
    });
})


//폼 넘길때 데이터가 잘 넘어가는지 확인하고자 할 때 쓰는 것
//let $frm = $('#appForm').serialize();
//alert($frm);

//나이 계산 함수
function calculateAge(figure) {
    let birthYear = parseInt(figure.substring(0, 2), 10);
    let birthMonth = parseInt(figure.substring(2, 4), 10);
    let birthDay = parseInt(figure.substring(4, 6), 10);

    let currentDate = new Date();
    let currentYear = currentDate.getFullYear();
    let currentMonth = currentDate.getMonth() + 1;
    let currentDay = currentDate.getDate();

    let century = (birthYear >= 0 && birthYear <= 21) ? 2000 : 1900;
    let age = currentYear - (century + birthYear);
    
    if (currentMonth < birthMonth || (currentMonth === birthMonth && currentDay < birthDay)) {
        age--;
    }

    return age;
}



//가입유형 확인
//신규가입 버튼
$('#joinType1').click(function(){
    //css
    $('#joinType1').css("-webkit-box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('#joinType1').css("box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('li').not('#joinType1').css("-webkit-box-shadow", "");
    $('li').not('#joinType1').css("box-shadow", "");

    //기능
    $('#billJoinType').text('신규가입');


})

//번호이동 버튼
$('#joinType2').click(function(){
    //css
    $('#joinType2').css("-webkit-box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('#joinType2').css("box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('li').not('#joinType2').css("-webkit-box-shadow", "");
    $('li').not('#joinType2').css("box-shadow", "");

    //기능
    $('#billJoinType').text('번호이동');
})

//기기변경 버튼
$('#joinType3').click(function(){
    //css
    $('#joinType3').css("-webkit-box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('#joinType3').css("box-shadow","0 2px 7px rgba(0, 0, 0, 0.2)");
    $('li').not('#joinType3').css("-webkit-box-shadow", "");
    $('li').not('#joinType3').css("box-shadow", "");

    //기능
    $('#billJoinType').text('기기변경');
})


//제품명의 셀렉트값 변동 이벤트
$('#slicedCode').change(function(){
    let slicedCode = $(this).val();
    console.log('선택된 옵션: ' + slicedCode);

    //ajax로 select box를 만들 정보 요청
    //ajax 확인할 때는 alert창으로
    $.ajax({
        type: 'GET',
        url: './getSelectedDirectList',
        data: {
            slicedCode: slicedCode
        },
        success: function(response) {
        // 응답 처리 로직 작성
        //박스 초기화 후 for문 돌리기
        // $('#directCode').empty();
        // for(let i=0; i<response.length; i++){
		//  let directCode = response.directCode[i];
		//  $('#directCode').append('<option value=\"'+directCode+'\">'+directCode+'</option>');
		// }
        $('#directCode').empty();
        $('#directCode').html(response);
        },
        error: function(error) {
        // 에러 처리 로직 작성
        console.log(error);
        }
    });

});


//제품코드의 셀렉트값 변동 이벤트



//요금제 선택 확인
$('#planArea').on("click", function(){
    let plan = $('input[name="planNum"]:checked').val();
    let planTxt = $('input[name="planNum"]:checked').siblings('label').text();
    //영수증 표시값 변경
    $('#billPlan').text(planTxt);
    //input tag에 값 넣기

    //요금제 선택 눌렀을 때 요금제를 구분해서 경고메시지+선택해제
})


//요금제 라디오 버튼 선택값이 입력되었을 때
$('#planArea input[type="radio"]').on('change', function() {
    console.log($(this).val());
    let planCode = $(this).val();
    let rrnValue = $('input[name="rrnf"]').val();
    let age = calculateAge(rrnValue);
    let minimumAge = 0;
    let maximumAge = 0;

    if (planCode === 'S01') {
        minimumAge = 65;
    } else if (planCode === 'S02') {
        minimumAge = 70;
    } else if (planCode === 'S03') {
        minimumAge = 80;
    }
    
    if (planCode === 'T01') {
        maximumAge = 18;
    }

    // console.log("age: "+age);
    // console.log("minimumAge: "+minimumAge);
    // console.log("maximumAge: "+maximumAge);

    if (age < minimumAge && minimumAge != 0) {
        alert(minimumAge + '세 이하는 해당 요금제를 사용할 수 없습니다.');
        $('#planArea input[type="radio"][value="' + planCode + '"]').prop('checked', false);
        let planTxt = $('#planArea input[type="radio"][value="' + planCode + '"]').text();
        $('#billPlan').text(planTxt);
    }

    if (age > maximumAge && maximumAge != 0) {
        alert(maximumAge + '세 이상은 해당 요금제를 사용할 수 없습니다.');
        $('#planArea input[type="radio"][value="' + planCode + '"]').prop('checked', false);
        let planTxt = $('#planArea input[type="radio"][value="' + planCode + '"]').text();
        $('#billPlan').text(planTxt);
    }
  });


//할인 유형 선택 확인
$('#discountArea').on("click", function(){
    let disKindVal = $('input[name="disKind"]:checked').val();
    let disKindAllTxt = $('input[name="disKind"]:checked').siblings('label').text(); //전체 label text

    //span을 제외한 label text
    let disKindTxt = $('input[name="disKind"]:checked').siblings('label').clone()     // label 요소를 복제합니다
                                                        .children('span')    // span 요소를 선택합니다
                                                        .remove()            // 선택한 span 요소를 제거합니다
                                                        .end()               // 원래의 복제된 요소로 돌아갑니다
                                                        .text();             // label 요소의 텍스트를 가져옵니다
    $('#billDisKind').text(disKindTxt);

    //input tag에 값 넣기
})


//제품코드, 요금제 선택에 변동이 있을 때 확인
$('input[name="planNum"], select[name="directCode"]').change(function() {
    // 선택된 planNum의 할인율
    let disPercent = $('input[name="planNum"]:checked').attr('data-dp');
    let planPrice = $('input[name="planNum"]:checked').attr('data-plan-price');

    // 선택된 option의 data-direct-price 값 가져오기
    let directPrice = $('select[name="directCode"] option:selected').attr('data-direct-price');

    // 할인 유형 확인
    let disKind = $('input[name="disKind"]:checked').val();

    // 할인 가격 계산
    // disKind=0 : 공시지원금 / =1, 2 : 선택약정

    if(disPercent>0 && directPrice>0){
        let disPrice = (1-(disPercent*1)) * (directPrice*1);
        let disPlan12 = planPrice*0.25*12;
        let disPlan24 = planPrice*0.25*24;

        //10단위 버림
        disPrice = Math.floor(disPrice / 10) * 10;
        disPlan12 = Math.floor(disPlan12 / 10) * 10;
        disPlan24 = Math.floor(disPlan24 / 10) * 10;

        let nPrice0 = "-"+disPrice;
        let nPrice1 = "-"+disPlan12;
        let nPrice2 = "-"+disPlan24;

        //할인 가격을 표시
        $('#dis0').empty();
        $('#dis1').empty();
        $('#dis2').empty();
        $('#dis0').text(nPrice0);
        $('#dis1').text(nPrice1);
        $('#dis2').text(nPrice2);
        // $('#dis0').text(formatPrice(disPrice));
    }

});

  // 가격 포맷을 위한 함수
//   function formatPrice(price) {
//     return price.toLocaleString('en-US');
//   }


//가입하기 버튼 눌렀을 때
$('#completeForm').click(function(){
    console.log('가입하기 버튼');
    //let $frm = $('#appForm').serialize();
    //alert($frm);



    //전화번호 길이 체크
    let length = $('#phoneNum').val().length;


    //가입폼 전송
    //$('#appForm').submit();
})



//유효성 검사
//전화번호 11자리, 숫자만 입력
$('#phoneNum').on("blur", function() {
    let checkValue = $(this).val().replace(/[^\d]/g, "");
    $(this).val(checkValue);

    console.log('checkValue====>'+checkValue);
    console.log('checkValue.length=====>'+checkValue.length);
    
    let length = checkValue.length;

    if(length != 11) {
        //this.setCustomValidity("전화번호는 11자리여야 합니다.");
        alert("전화번호는 11자리여야 합니다.");
        $('#phoneNum').val("");
    }

})
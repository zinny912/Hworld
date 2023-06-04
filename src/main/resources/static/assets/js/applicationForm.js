$(function(){
    //화면 준비시 실행될 내용
	console.log('applicationForm Page');
})

//폼 넘길때 데이터가 잘 넘어가는지 확인하고자 할 때 쓰는 것
//let $frm = $('#appForm').serialize();
//alert($frm);


//가입하기 버튼 눌렀을 때
$('#completeForm').click(function(){
    console.log('가입하기 버튼');
    let $frm = $('#appForm').serialize();
    alert($frm);
    $('#appForm').submit();
})


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


//요금제 선택 확인
$('#planArea').on("click", function(){
    let planVal = $('input[name="planNum"]:checked').val();
    let planTxt = $('input[name="planNum"]:checked').siblings('label').text();
    //영수증 표시값 변경
    $('#billPlan').text(planTxt);
    //input tag에 값 넣기
})


//할인 유형 선택 확인
$('#discountArea').on("click", function(){
    let disKindVal = $('input[name="disKind"]:checked').val();
    let disKindAllTxt = $('input[name="disKind"]:checked').siblings('label').text(); //전체 label text

    //span을 제외한 label text
    let disKindTxt = $('input[name="disKind"]:checked').siblings('label')     // label 요소를 복제합니다
                                                        .children('span')    // span 요소를 선택합니다
                                                        .remove()            // 선택한 span 요소를 제거합니다
                                                        .end()               // 원래의 복제된 요소로 돌아갑니다
                                                        .text();             // label 요소의 텍스트를 가져옵니다
    $('#billDisKind').text(disKindTxt);

    //input tag에 값 넣기
})
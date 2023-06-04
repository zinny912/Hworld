$(function(){
    //화면 준비시 실행될 내용
	console.log('applicationForm Page');
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
    console.log('event 위임');
    let plan = $('input[name="flexRadioDefault"]:checked').val();
    $('#billPlan').text(plan);

})
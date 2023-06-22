$(function(){
    //화면 준비시 실행될 내용
	console.log('signUp Page');

})

//폼 넘길때 데이터가 잘 넘어가는지 확인하고자 할 때 쓰는 것
//let $frm = $('#appForm').serialize();
//alert($frm);

//전화번호 정규식 + 11자리 입력
$('#tel').on("blur", function() {
    //숫자만 입력되게 하는 정규식
    let checkValue = $(this).val().replace(/[^\d]/g, "");
    $(this).val(checkValue);
    
    let length = checkValue.length;

    if(length != 11) {
        $('#tel').val("");
        $('#validPN').empty();
        $('#validPN').append('<p class="theme-color">전화번호는 11자리여야 합니다.</p>');
        //유효성 검사에 쓸 인자 추가
    }else{
        //11자리인 경우 번호 중복체크
        //responseBody에 담겨져 응답 돌아옴
    }

})

//계산에 필요한 값이 빈값인지 확인하는 함수
function isEmpty(value){
    if(typeof value == "undefined" || value == null || value == '')
        return false;
    else
        return true;
}

//이메일 인증번호 전송 함수
function sendNumber(){
    $("#emailNumber").css("display","flex");
    $.ajax({
        url:"/mail",
        type:"post",
        dataType:"json",
        data:{"mail" : $("#email").val()},
        success: function(data){
            alert("인증번호 발송");
            $("#Confirm").attr("value",data);
        }
    });
}

//입력된 인증번호 일치여부 확인
function confirmNumber(){
    let number1 = $("#emailCheck").val();
    let number2 = $("#Confirm").val();

    if(number1 == number2){
        alert("인증되었습니다.");
    }else{
        alert("인증번호가 일치하지 않습니다.");
    }

    //나중에 쓸 것
    // //빈값인지 검증
    // let chkNum1 = isEmpty(number1);
    // let chkNum2 = isEmpty(number2);

    // if(number1 == number2 && chkNum1 == true && chkNum2 == true){
    //     alert("인증되었습니다.");
    // }else{
    //     alert("인증번호가 일치하지 않습니다.");
    // }
}

//다음 주소 연동 API
function execution_daum_address(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            let addr = ''; // 주소 변수
            let extraAddr = ''; // 참고항목 변수
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 주소변수 문자열과 참고항목 문자열 합치기
                addr += extraAddr;
            
            } else {
                addr += ' ';
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $(".address_input_1").val(data.zonecode);
            //$("[name=memberAddr1]").val(data.zonecode);	// 대체가능
            $(".address_input_2").val(addr);
            //$("[name=memberAddr2]").val(addr);			// 대체가능
            // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
            $(".address_input_3").attr("readonly",false);
            $(".address_input_3").focus();
        }
    }).open();   
}

/* 유효성 검사 통과유무 변수 */
/*var emailCheck = false;			// 이메일
var emailckCheck = false;		// 이메일 중복 검사
var pwCheck = false;			// 비번
var pwckCheck = false;			// 비번 확인
var pwckCheck2 = false;		// 비번 확인 일치 확인
// var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".login_btn").click(function(){
		
		// 입력값 변수
		var emaild = $('.email_input').val(); 		// 이메일 입력란
		var pwd = $('.pw_input').val();				// 비밀번호 입력란
		var pwckd = $('.pwck_input').val();			// 비밀번호 확인 입력란
		
		// 이메일 유효성검사
		if(emaild == ""){
			$('.final_email_ck').css('display','block');
			idCheck = false;
		}else{
			$('.final_email_ck').css('display', 'none');
			idCheck = true;
		}
		
		// 비밀번호 유효성 검사
		if(pwd == ""){
			$('.final_pw_ck').css('display','block');
			pwCheck = false;
		}else{
			$('.final_pw_ck').css('display', 'none');
			pwCheck = true;
		}
		
		// 비밀번호 확인 유효성 검사
		if(pwckd == ""){
			$('.final_pwck_ck').css('display','block');
			pwckCheck = false;
		}else{
			$('.final_pwck_ck').css('display', 'none');
			pwckCheck = true;
		}	
			
		// 최종 유효성 검사
		if(emailCheck&&emailckCheck&&pwCheck&&pwckCheck&&pwckCheck2){
			$("#signUpForm").attr("action", "/member/signUp");
			$("#signUpForm").submit();									
		}		
		
		return false;
	});
});*/
//아이디 중복검사
$('.email_input').on("propertychange change keyup paste input", function(){
	
	var email = $('.email_input').val();
	var data = {email : email}
	
	$.ajax({
		type : "post",
		url : "/member/emailCheck",
		data : data,
		success : function(result){
			if(result != 'fail'){
				$('.email_input_re_1').css("display","inline-block");
				$('.email_input_re_2').css("display", "none");	
				idckCheck = true;
			} else {
				$('.email_input_re_2').css("display","inline-block");
				$('.email_input_re_1').css("display", "none");
				idckCheck = false;
			}	
		}// success 종료
	}); // ajax 종료	
});// function 종료

/* 비밀번호 확인 일치 유효성 검사 */
$('.pwck_input').on("propertychange change keyup paste input", function(){
	
	var pwd = $('.pw_input').val();
	var pwckd = $('.pwck_input').val();
	$('.final_pwck_ck').css('display', 'none');
	
	if(pwd == pwckd){
		$('.pwck_input_re_1').css('display','block');
		$('.pwck_input_re_2').css('display','none');
		pwckCheck2 = true;
	}else{
		$('.pwck_input_re_1').css('display','none');
		$('.pwck_input_re_2').css('display','block');
		pwckCheck2 = false;
	}
	
	
});

btn.addEventListener("click", function() {
    if(!checks.includes(false)) {
        alert('회원가입 성공');
        frm.submit();
    } else {
        alert("필수 사항을 입력해주세요.");
    }
});
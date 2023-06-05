<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
	<c:import url="../temp/style.jsp"></c:import>    
    <title>회원 가입</title>
</head>

<body class="signup-page theme-color2">

    <!-- Sign Up Section Start -->
    <div class="login-section">
        <div class="materialContainer">
            <div class="box">
                <!-- 홈 버튼 -->
                <div class="d-flex justify-content-center">
                    <a href="index.html">
                        <h2><img src="/assets/images/logos/2.png"></h2>
                    </a>
                </div>
                <div class="login-title">
                    <h2 style="margin-top: 15px;">회원 가입</h2>
                </div>                
				<form:form action="./signUp" id="signUpForm" method="post" modelAttribute="memberVO">
		                <!-- 정보 입력 영역 -->
		                <div class="input">		                			                
		                    <input type="email" name="email" id="email" placeholder="사용자 계정">		                    
		                    <span class="spin"></span>
		                    <form:errors path="email"></form:errors> 
		                </div>
		
		                <div class="row gx-md-3 gy-3">
		                    <div class="col-md-6">
		                        <div class="input">                            
		                            <input type="password" name="pw" id="pw" placeholder="비밀번호">
		                            <span class="spin"></span>
		                        </div>
		                    </div>
		
		                    <div class="col-md-6">
		                        <div class="input">                            
		                            <input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 확인">
		                            <span class="spin"></span>
		                        </div>
		                    </div>
		                </div>
		
		                <div class="input">                   
		                    <input type="text" name="name" id="name" placeholder="이름">
		                    <span class="spin"></span>
		                </div>
		
		                <div class="row gx-md-3 gy-3">
		                    <div class="col-md-6">
		                        <div class="input">                            
		                            <input type="text" name="rrnf" id="rrnf" placeholder="주민등록번호 앞자리">
		                            <span class="spin"></span>
		                        </div>
		                    </div>
		
		                    <div class="col-md-6">
		                        <div class="input">                            
		                            <input type="password" name="rrnl" id="rrnl" placeholder="주민등록번호 뒷자리">
		                            <span class="spin"></span>
		                        </div>
		                    </div>
		                </div>
						
						<div class="mb-3 row">
							<label for="address1" class="col-sm-2 col-form-label"><b>주소</b></label>
							<div class="col-sm-8">
								<input class="form-control address_input_1" name="address1" readonly="readonly">
							</div>
							
							<button class="col-auto row" type="button" onclick="execution_daum_address()">
								<span>주소 찾기</span>
							</button>
						</div>
						<div class="mb-3 row justify-content-end">
							<div class="col-sm-10">
								<input class="form-control address_input_2" name="address2" readonly="readonly">
							</div>
						</div>
						<div class="mb-3 row justify-content-end">
							<div class="col-sm-10">
								<input class="form-control address_input_3" name="address3" readonly="readonly">						
							</div>
						</div>
						
						
		                <!-- <div class="input">
		                    <label for="address">주소</label>
		                    <input type="text" name="address" id="address">
		                    <span class="spin"></span>
		                </div> -->
		
		                <div class="input">
		                    <input type="tel" name="telNum" id="telNum" placeholder="연락처">
		                    <span class="spin"></span>
		                </div>
		
		                <!-- 필요없다면 지우기 -->
		                <div class="input">
		                    <p>이메일 인증(또는 전화번호)</p>
		                    <p>precheck/지금페이지 인증 어떻게? 두번은 번거로울지도..</p>
		                </div>
		
		                <div class="button login" >
		                    <button type="submit">
		                        <span>가입하기</span>
		                        <i class="fa fa-check"></i>
		                    </button>
		                </div>
		        </form:form>

                <p><a href="/member/login" class="theme-color">이미 계정이 있으신가요?</a></p>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->

    <div class="bg-overlay"></div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


/* 다음 주소 연동 */
function execution_daum_address(){
	
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
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
</script>
</body>

</html>
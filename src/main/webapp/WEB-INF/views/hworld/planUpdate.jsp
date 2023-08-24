<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
 
 <style>
    .input-container {
        position: relative;
    }
    
    .input-container::before {
        content: "원";
        position: absolute;
        top: 50%;
        right: 10px;
        transform: translateY(-50%);
        color: #999999;
    }
    
    .input-field {
        padding-right: 30px; /* '원' 글자를 고려하여 오른쪽 padding 추가 */
    }
</style>
 
 
</head>

<body class="theme-color2 light ltr">
<c:import url="../temp/header.jsp"></c:import>
    <!-- Breadcrumb section start -->
        <section class="breadcrumb-section section-b-space">
        <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3>요금제 수정</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">요금제</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb section end -->

    <!-- Shop Section start -->
    <section class="section-b-space">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-lg-6" >
                    <h3 class="mb-3 fw-bold">요금제</h3>
                    <form action="./planUpdate" method="POST" class="planUpdate">
                        <div class="row g-4">
                            <!-- 요금제 정보 -->
                            <table id="commonCodeTable" hidden>
                               <thead>
                               <tr class="table-head col-md-12">
                               <th class="col-3">Type </th>
                               <th class="col-3">Code</th> 
                               <th class="col-3">Value</th> 
                               <th class="col-3">Note</th>
                                </tr>
                               </thead>
                               <tbody>
                               
                                <c:forEach items="${commonCode}" var="common">
                                <tr class="code-row">	
                                		<td class="code-row">${common.type}</td>
                                		<td class="code-row">${common.code}</td>
                                		<td class="code-row">${common.value}</td>
                                		<td class="code-row">${common.note}</td>
                                </tr>
                                </c:forEach>
                                
                                </tbody>
                                </table> 
                                
                              	<input type="hidden" id="note" name="note" value="" placeholder="노트">
                              	<input type="hidden" id="type" name="type" value="" placeholder="타입">
                              	<input type="hidden" id="code" name="code" value="" placeholder="코드">
                              	<input type="hidden" id="value" name="value" value="" placeholder="밸류">
                              	
                            <div class="col-md-6">
                                <label for="validationCustom04" class="form-label" >종류</label>
                                
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="validationCustom04">
                                        <option selected="" value="G">5G 요금제</option>
                                        <option value="S">시니어 요금제</option>
                                        <option value="T">청소년 요금제</option>
                                        <option value="Z">ZEM 요금제</option>
                                        <option value="H">군인 요금제</option>
                                        <option value="W">복지 요금제</option>
                                    </select>
                                </div>
                               
                              <input type="hidden" id="ori_planNum" name="oldPlanNum" value="${planVO.planNum}"> 
                              <input type="hidden" id="planNum2" name="newPlanNum" > 
                              <input type="hidden" id="planNum3" name="planNum" > 
                              <input type="hidden" id="categoryCode" name="categoryCode" value="${plan.categoryCode}">
                              <input type="hidden" id="newCode" value="${plan.categoryCode}">
                              <input type="hidden" id="disCode" name="disCode" value="${plan.disCode}">
                              
                              
                              
                            </div>
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="planPrice" class="form-label">월 가격</label>
                                <input type="text" class="form-control" id="planPrice" name="planPrice" value="${plan.planPrice}">
                            </div>
                            <div class="col-md-6">
                                <label for="planName" class="form-label">이름</label>
                                <input type="text" class="form-control" id="planName" name="planName" value="${plan.planName}">
                            </div>
                            <div class="col-md-6">
                                <label for="planExplainS" class="form-label">부가설명</label>
                                <input type="text" class="form-control" id="planExplainS" name="planExplainS" value="${plan.planExplainS}">
                            </div>
                            <!-- 한 줄 -->

                            <!-- 데이터량 -->
                            
                            <div class="col-md-4">
                                <label for="dataCapacity" class="form-label">데이터량</label>
                                <input type="text" class="form-control" id="dataCapacity" name="dataCapacity" value="${plan.dataCapacity}">
                            </div>
                            <div class="col-md-4">
                                <label for="tel" class="form-label">통화량</label>
                                <input type="text" class="form-control disabled" id="tel" value="기본제공" >
                            </div>
                            <div class="col-md-4">
                                <label for="sms" class="form-label">문자량</label>
                                <input type="text" class="form-control" id="sms" value="기본제공">
                            </div>
                          
                            <!-- 상세정보 서머노트하자 -->
                            <div class="col-md-12">
                                <label for="planExplain" class="form-label">상세정보</label>
                                <textarea class="form-control col-md-12" name="planExplain" id="planExplain" cols="100" rows="10"> </textarea>
                            </div>

                            <!-- 확인버튼 -->
                            <div class="col-12 d-flex justify-content-center">
                                <button type="submit" class="btn btn-solid-default mx-auto" id="btn2">수정등록하기</button>
                            </div>     
                        </div>
                        
                        </form>
                        
                    </div>
                </div>
         </div>
        </section>


<c:import url="../temp/footer.jsp"></c:import>

<script>
$(document).ready(function() {
	const defTypes = $('#ori_planNum').val();
	const defType = defTypes.slice(0,1);
	
	$("#validationCustom04").val(defType);
	loadCommonCodes(defType);
    generatePlanNum(defType);
	
	  // 셀렉트 박스 선택 시 공통 코드 리스트 가져오기
	  $("#validationCustom04").on("change", function() {
	    var selectedType = $(this).val();
	    loadCommonCodes(selectedType);
	    generatePlanNum(selectedType);
	  });
	});

	// AJAX 호출하여 공통 코드 리스트 가져오기
	function loadCommonCodes(selectedType) {
	  $.ajax({
	    url: "./getCommonCode",
	    method: "POST",
	    data: { type: selectedType },
	    dataType: "json",
	    success: function(commonCodeList) {
	      displayCommonCode(commonCodeList);
	    },
	    error: function() {
	      console.error("Failed to get common code list.");
	    }
	  });
	}

	// 가져온 공통 코드 리스트를 동적으로 표시
function displayCommonCode(commonCodeList) {
  const tableBody = $("#commonCodeTable tbody");
  tableBody.empty();
  let lastCode = "";
  let lastNote = "";
  for (let i = 0; i < commonCodeList.length; i++) {
    const type = commonCodeList[i].type;
    const code = commonCodeList[i].code;
    console.log(code);
    const value = commonCodeList[i].value;
    const note = commonCodeList[i].note;
    const row = $("<tr>").addClass("code-row");
    $("<td>").text(type).appendTo(row);
    $("<td>").addClass("code-cell").text(code).appendTo(row); // 코드 셀에 클래스 추가
    $("<td>").text(value).appendTo(row);
    $("<td>").text(note).appendTo(row);
    row.appendTo(tableBody);
    
    // 마지막 코드 값 갱신
    lastCode = code;
    lastNote = note;
    $('#note').val(lastNote);
  }
  
  // 생성한 planNum을 hidden 필드에 설정
  generatePlanNum(lastCode);
}
	
function generatePlanNum(lastCode) {
	  let nextCode = parseInt(lastCode) + 1; // 마지막 코드 값의 다음 값 계산
	  let selectedType = $("#validationCustom04").val(); // 선택한 타입 값 가져오기
	  let planNum = selectedType + ("0" + nextCode).slice(-2); // 새로운 planNum 생성
		let zeroCode = ("0" + nextCode).slice(-2);
	  console.log(planNum)
	
	  	const newPlanInput = $('#planNum2');
		const oldPlanInput = $('#planNum3');
		newPlanInput.val(planNum); // 값을 설정
		oldPlanInput.val(planNum); // 값을 설정
	  console.log(newPlanInput.val());
	  console.log(oldPlanInput.val());
	  $('#code').val(zeroCode);
	  $('#categoryCode').val(zeroCode);
	  $('#type').val(selectedType);
	  const oriPlanNum = $('#ori_planNum').val();
	  console.log("기존 플랜넘",oriPlanNum);
	  const newCode = $('#newCode').val();
	  const getType=oriPlanNum.slice(0,1);
	  
	  console.log("sCode?",lastCode);
	  if(selectedType == getType){ 
		  newPlanInput.val(oriPlanNum);
		  oldPlanInput.val(oriPlanNum);
		  $('#code').val(newCode);
		  $('#categoryCode').val(newCode);
		  
	  }
	  $('#value').val($('#planName').val());
	}	
	
$('#planPrice').on('input', function() {
    const planPrice = Number($(this).val()); // 입력된 값에서 쉼표(,)를 제거하고 숫자로 변환
    const disCodeElement = $('input[name="disCode"]');
    
    if (planPrice >= 77000) {
      disCodeElement.val('4');
    } else if (planPrice>=55000 && planPrice <77000){
      disCodeElement.val('3');
    } else if (planPrice>=33000 && planPrice <55000){
    	disCodeElement.val('2');
    } else {
    	disCodeElement.val('1');
    }
  });


</script>
<script>
$('#planExplain').summernote('code', '${plan.planExplain}');
	//썸머노트 
	//썸머노트 
	$('#planExplain').summernote({
        tabsize: 2,
        height: 300,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
        ],
        callbacks: {
        	onImageUpload: function(files, editor, welEditable) {
        		for(var i = files.length -1; i>=0; i--) {
        			sendFile(files[i], this);
        		}
        	}
        }
 });
	
	
	// 썸머노트 에디터의 내용이 변경되었을 때 처리
	  $('#planExplain').on('summernote.blur', function() {
	    var summerContent = $(this).summernote('code');
	    console.log('변경된 썸머노트 내용: ' + summerContent);

	});

</script>



</body>

</html>
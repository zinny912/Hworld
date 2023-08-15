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
                    <h3>부가서비스 등록</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">부가서비스</li>
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
                    <h3 class="mb-3 fw-bold">부가서비스</h3>
                    <form action="./ePlanAdd" method="POST" class="ePlanAdd">
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
                               
                                <c:forEach items="${commonCode}" var="common" >
                                <tr class="code-row" >	
                                		<td class="code-row">${common.type}</td>
                                		<td class="code-row">${common.code}</td>
                                		<td class="code-row">${common.value}</td>
                                		<td class="code-row">${common.note}</td>
                                </tr>
                                </c:forEach>
                                
                                </tbody>
                                </table> 
                                
                              	<input type="hidden" id="note" name="note" value="" placeholder="노트">
                              	<input type="hidden" id="type" name="type" value="E" placeholder="타입">
                              	<input type="hidden" id="code" name="code" value="" placeholder="코드">
                              	<input type="hidden" id="value" name="value" value="" placeholder="밸류">
                              	
                          
                              <input type="hidden" id="extraPlanNum" name="extraPlanNum" value=""> 
                              <input type="hidden" id="categoryCode" name="categoryCode" value="">
                              <input type="hidden" id="disabled" name="disabled" value="1">
                              
                              
                            <div class="col-md-6">
                                <label for="extraPlanName" class="form-label">부가서비스 이름</label>
                                <input type="text" class="form-control" id="extraPlanName" name="extraPlanName" placeholder="부가서비스명">
                            </div>
                        
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="extraPrice" class="form-label">월 가격</label>
                                <input type="text" class="form-control" id="extraPrice" name="extraPrice" placeholder="월 요금">
                                <input type="hidden" name="disCode" value="">
                            </div>

                            <div class="col-md-6">
                                <label for="extraPlanExplainS" class="form-label">간략설명</label>
                                <input type="text" class="form-control" id="extraPlanExplainS" name="extraPlanExplainS" placeholder="간략소개">
                            </div>
                            <!-- 한 줄 -->
                            <div class="col-md-6">
                                <label for="extraPlanExplainM" class="form-label">박스안 설명</label>
                                <input type="text" class="form-control" id="extraPlanExplainM" name="extraPlanExplainM" placeholder="박스안 내용 입력">
                            </div>
                            
                            <div class="col-md-12">
                                <label for="extraPlanExplain" class="form-label">상세설명</label>
                                <input type="text" class="form-control" id="extraPlanExplain" name="extraPlanExplain">
                            </div>
                            
                            <!-- 확인버튼 -->
                            <div class="col-12 d-flex justify-content-center">
                                <button type="submit" class="btn btn-solid-default mx-auto" id="btn2">등록하기</button>
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
    const selectedType = "E"; // "E"로 고정

    // 초기에 공통 코드 리스트 가져오기
    loadCommonCodes(selectedType);
    generatePlanNum(selectedType);
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
    // 표시 로직 작성
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
    let selectedType = "E"; // "E"로 고정
    let planNum = selectedType + ("0" + nextCode).slice(-2); // 새로운 planNum 생성
    let zeroCode = ("0" + nextCode).slice(-2);
    $("#extraPlanNum").val(planNum); // 생성한 planNum을 hidden 필드에 설정
    $('#code').val(zeroCode);
    $('#categoryCode').val(zeroCode);
    $('#type').val(selectedType);
}

$('#extraPlanName').blur(function(){
    $('#value').val($('#extraPlanName').val());
});
</script>
<script>
	//썸머노트 
	$('#extraPlanExplain').summernote({
        placeholder: '상세 내용을 입력해주세요.',
        tabsize: 2,
        height: 300,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
        ]
      });
</script>

</body>

</html>
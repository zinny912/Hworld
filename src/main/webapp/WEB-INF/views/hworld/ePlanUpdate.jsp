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
                    <h3>부가서비스 수정</h3>
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
                    <form action="./ePlanUpdate" method="POST" class="ePlanUpdate">
                        <div class="row g-4">
                            
                                
                              	<input type="text" id="note" name="note" value="부가서비스">
                              	<input type="text" id="type" name="type" value="E" >
                              	<input type="text" id="code" name="code" value="${extraPlan.categoryCode}" >
                              	<input type="text" id="value" name="value">
                              	
                          
                              <input type="text" id="extraPlanNum" name="extraPlanNum" value="${extraPlan.extraPlanNum}"> 
                              <input type="text" id="categoryCode" name="categoryCode" value="${extraPlan.categoryCode}">
                              <input type="text" id="disabled" name="disabled" value="1">
                              
                              
                            <div class="col-md-6">
                                <label for="extraPlanName" class="form-label">부가서비스 이름</label>
                                <input type="text" class="form-control" id="extraPlanName" name="extraPlanName" value="${extraPlan.extraPlanName}">
                            </div>
                        
                             <!-- 월요금 -->
                             <div class="col-md-6">
                                <label for="extraPrice" class="form-label">월 가격</label>
                                <input type="text" class="form-control" id="extraPrice" name="extraPrice" value="${extraPlan.extraPrice}">
                            </div>

                            <div class="col-md-6">
                                <label for="extraPlanExplainS" class="form-label">간략설명</label>
                                <input type="text" class="form-control" id="extraPlanExplainS" name="extraPlanExplainS" value="${extraPlan.extraPlanExplainS}">
                            </div>
                            <!-- 한 줄 -->
                            <div class="col-md-6">
                                <label for="extraPlanExplainM" class="form-label">박스안 설명</label>
                                <input type="text" class="form-control" id="extraPlanExplainM" name="extraPlanExplainM" value="${extraPlan.extraPlanExplainM}">
                            </div>
                            
                            <div class="col-md-12">
                                <label for="extraPlanExplain" class="form-label">상세설명</label>
                                <textarea class="form-control" id="extraPlanExplain" name="extraPlanExplain"></textarea>
                                
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
	const value= $('#extraPlanName').val();
    $('#value').val(value);

$('#extraPlanName').blur(function(){
	const newValue = $('#extraPlanName').val();
    $('#value').val(newValue);   
	});
});
</script>
<script>
$('#extraPlanExplain').summernote('code', '${extraPlan.extraPlanExplain}');
	//썸머노트 
	//썸머노트 
	$('#extraPlanExplain').summernote({
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
	  $('#extraPlanExplain').on('summernote.blur', function() {
	    var summerContent = $(this).summernote('code');
	    console.log('변경된 썸머노트 내용: ' + summerContent);

	});

</script>

</body>

</html>
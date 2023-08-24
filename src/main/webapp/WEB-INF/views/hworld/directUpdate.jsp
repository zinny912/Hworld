<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>

    <title>상품 수정</title>
 <style>
    .boxone {
    width:50%;
    padding-right: 5%;
    }
    .boxtwo {   
    width:50%;
    padding-left: 5%;
    }

    .login-section {
        background-color: #fff;
    }

    .box{
        border:1px solid black;
   
    }
    
    .modal-dialog .modal-content{
        width: 70%;
        margin-left:15%;
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
                    <h3>상품수정</h3>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">상품 > 상품등록</li>
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
                <div class="col-lg-7" >
                    <h3 class="mb-3 fw-bold">상품</h3>
                    <form action="./directUpdate" method="post" enctype="multipart/form-data" class="needs-validation" onsubmit="return generateDirectCode(event)" id="form">
                        <div class="row g-4">
                            <!-- 상품 정보 -->
                            <div class="col-md-6">
                                <label for="categoryCode" class="form-label" >카테고리</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="categoryCode" name="categoryCode">
                                        <option value="01" ${list.get(0).getCategoryCode().equals("01") ? 'selected' : ''}>휴대폰</option>
                                        
                                        
                                    </select>
                                </div>
                            </div> 
                            
                            <div class="col-md-6">
                                <label for="brandCode" class="form-label" >브랜드</label>
                                <div class="col-12">
                                    <select class="form-select custome-form-select" id="brandCode" name="brandCode">
            							<option value="S" ${list.get(0).getBrandCode().equals("S") ? 'selected' : ''}>삼성</option>
								        <option value="A" ${list.get(0).getBrandCode().equals("A") ? 'selected' : ''}>애플</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="directName" class="form-label">상품명</label>
                                <input type="text" class="form-control" id="directName" placeholder="상품명" name="directName" value="${list.get(0).getDirectName()}" readonly="readonly">
                            </div>
                            <div class="col-md-6">
                                <label for="directCode" class="form-label">제품코드</label>
                                <input type="text" class="form-control" id="productCode" value="${directVO.slicedCode}" readonly="readonly">
                            </div>
                       
                           	<div class="col-md-2 mt-5 d-flex ">
                            	<button type="button" class="btn btn-outline-danger btn-sm mt-2 me-2" id="optionAdd">+옵션추가</button>    
                            	<button type="button" class="btn btn-outline-secondary btn-sm mt-2" id="optionDelete">-옵션삭제</button>                            
                            	                        
                            </div>
                            <!-- 출고가 -->
                           		 

                            
							<div class="option">
								<c:forEach items="${list}" var="directCode" varStatus="index">
									<div class="row g-2 my-2 options">
						    			<div class="col-md-3">
								            <div class="col-12">
								                <select class="form-select custome-form-select" name="colorCode">
								                	<option value="" ${directCode.colorCode == '' ? 'selected' : ''}>없음</option>
								                    <option value="W" ${directCode.colorCode == 'W' ? 'selected' : ''}>white</option>
										            <option value="G" ${directCode.colorCode == 'G' ? 'selected' : ''}>gray</option>
										            <option value="B" ${directCode.colorCode == 'B' ? 'selected' : ''}>black</option>
								                </select>
								            </div>
								        </div> 
								        <div class="col-md-3">
								            <div class="col-12">
								                <select class="form-select custome-form-select" name="saveCapacity" >
										            <option value="" ${directCode.saveCapacity == '' ? 'selected' : ''}>없음</option>
										            <option value="128" ${directCode.saveCapacity == '128' ? 'selected' : ''}>128GB</option>
										            <option value="256" ${directCode.saveCapacity == '256' ? 'selected' : ''}>256GB</option>
										            <option value="512" ${directCode.saveCapacity == '512' ? 'selected' : ''}>512GB</option>
								                </select>
								            </div>
								        </div> 
								        <div class="col-md-3">
								            <input type="text" class="form-control" name="directPrice" value="${directCode.directPrice}" placeholder="금액 숫자만 입력"> 
								        </div>
								        <div class="col-md-3">
								            <input type="text" class="form-control" name="directStock" value="${directCode.directStock}" placeholder="재고 숫자만 입력">
								        </div> 
								        <input type="hidden" id="directCode" name="directCode">
								     </div>
															
                           		 </c:forEach>
                           
                            </div>
                            
                            
                                <div class="mb-2">
                                    <label for="directThumbFilePath" class="form-label">썸네일 이미지</label>
                                    <input class="form-control" type="file" id="directThumbFilePath" name="multipartFiles">
                                </div>
                                <div class="mb-3">
                                    <label for="directFilePath" class="form-label">상품 이미지</label>
                                    <input class="form-control" type="file" id="directFilePath" name="multipartFiles">
                                </div>
            
                            <!-- 상세정보 서머노트하자 -->
                            <div class="col-md-12">
                                <label for="directContents" class="form-label">상세정보</label>
                                <textarea class="form-control col-md-12" name="directContents" id="directContents" cols="100" rows="10"></textarea>
                            </div>

                            <!-- 확인버튼 -->
                            <div class="col-12 d-flex justify-content-center">
                                <button type="submit" class="btn btn-solid-default mx-auto" id="btn2" >수정하기</button>
                            </div> 
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </section>
    <!-- Shop Section end -->       
<c:import url="../temp/footer.jsp"></c:import>

<!-- <script>
    // JavaScript 코드
    // 선택한 값이 hidden input의 value에 설정되도록 함
    let brandCodeSelect = document.getElementById("brandCode");
    let selectedBrandCodeInput = document.getElementById("selectedBrandCode"); // hidden input 요소의 ID

    brandCodeSelect.addEventListener("change", function() {
        selectedBrandCodeInput.value = brandCodeSelect.value;
    });
    
    
    // JavaScript 코드
    // 선택한 값이 hidden input의 value에 설정되도록 함
    let categoryCodeSelect = document.getElementById("categoryCode");
    let selectedCategoryCodeInput = document.getElementById("selectedCategoryCode"); // hidden input 요소의 ID

    brandCodeSelect.addEventListener("change", function() {
        selectedCategoryCodeInput.value = categoryCodeSelect.value;
    });
</script> -->


<script>	
//옵션 추가
$('#optionAdd').click(()=>{
    let child = `
    			<div class="row g-2 my-2 options">
    			<div class="col-md-3">
		            <div class="col-12">
		                <select class="form-select custome-form-select" name="colorCode" value="${option.colorCode}">
		                    <option selected="" value="">없음</option>
		                    <option value="W">white</option>
		                    <option value="G">gray</option>
		                    <option value="B">black</option>
		                </select>
		            </div>
		        </div> 
		        <div class="col-md-3">
		            <div class="col-12">
		                <select class="form-select custome-form-select" name="saveCapacity" value="${option.saveCapacity}">
		                    <option selected="" value="">없음</option>                                
		                    <option value="128">128GB</option>                                    
		                    <option value="256">256GB</option>
		                    <option value="512">512GB</option>
		                </select>
		            </div>
		        </div> 
		        <div class="col-md-3">
		            <input type="text" class="form-control" name="directPrice" value="${option.directPrice}" placeholder="금액 숫자만 입력"> 
		        </div>
		        <div class="col-md-3">
		            <input type="text" class="form-control" name="directStock" value="${option.directStock}" placeholder="재고 숫자만 입력">
		        </div> 
		        <input type="hidden" id="directCode" name="directCode">
		        </div>

		      `;
				
    $('.option').append(child);
})

	
	//옵션 삭제 
	$('#optionDelete').click(()=>{
		$('.options').last().remove();
	});
	
	//제품코드 합치기 
    function generateDirectCode(event) {
        event.preventDefault();
        
        let options = document.getElementsByName("colorCode");
        for (let i = 0; i < options.length; i++) {

            let categoryCode = document.getElementById("categoryCode").value;
            let brandCode = document.getElementById("brandCode").value;
            let colorCode = document.getElementsByName("colorCode")[i].value;
            let saveCapacity = document.getElementsByName("saveCapacity")[i].value;
            let productCode = document.getElementById("productCode").value;

            let directCode = "P" + categoryCode + "B" + brandCode + "C" + colorCode + "V" + saveCapacity + productCode;

            document.getElementsByName("directCode")[i].value = directCode;
          }

          // 폼 데이터를 서버로 전송
          document.getElementById("form").submit();
        }
	
</script>

<script>
/* 	//썸머노트 
$('#directContents').summernote({
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
    ['align', ['align']],
  ],
  callbacks: {
    onInit: function() {
      // Set the default alignment to center
      $(this).summernote('editor').body.style.paragraph = 'center';
    }
  }
}); */
$('#directContents').summernote('code', '${list.get(0).getDirectContents()}');
 
//썸머노트 
$('#directContents').summernote({
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
  $('#directContents').on('summernote.blur', function() {
    var summerContent = $(this).summernote('code');
    console.log('변경된 썸머노트 내용: ' + summerContent);

});

</script>

</body>

</html>
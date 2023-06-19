<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <c:import url="../temp/style.jsp"></c:import> -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="multikart">
    <meta name="keywords" content="multikart">
    <meta name="author" content="multikart">
    <link rel="icon" href="/assets/images/favicon/2.png" type="image/x-icon"/>
    <title>H WORLD</title>

    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/font-awesome.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">

    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- Bootstrap js-->
    <script src="/assets/js/bootstrap/bootstrap.bundle.min.js"></script>

</head>

<body class="theme-color2 bg-light">

    <!-- invoice 1 start -->
    <section class="theme-invoice-1 section-b-space">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 m-auto">
                    <div class="invoice-wrapper">
                        <div class="invoice-header">
                            <div class="upper-icon">
                                <img src="/assets/images/invoice.svg" class="img-fluid" alt="">
                            </div>
                            <div class="row header-content">
                                <div class="col-md-6">
                                    <img src="/assets/images/logo.png" class="img-fluid" alt="">
                                </div>
                                <div class="col-md-6 text-md-end">
                                    <h4 class="mb-3">
                                        장하영(010-2222-2222) 회원님
                                    </h4>
                                    <h2>납부 내역서</h2>
                                </div>
                            </div>
                            <div class="detail-bottom">
                                <ul>
                                    <li><span>청구 월</span>
                                        <h4>2023/04</h4>
                                    </li>
                                    <li><span>납부 날짜</span>
                                        <h4>2023/05/15 10:40PM</h4>
                                    </li>
                                    <li><span>납부 번호</span>
                                        <h4> 908452</h4>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="invoice-body table-responsive-md">
                            <div class="detail-bottom mb-3">
                                <h3>회선 : 010-3333-3333</h3>
                            </div>
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th scope="col">분류</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">금액</th>
                                        <th scope="col">할인</th>
                                        <th scope="col">비고</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <tr>
                                        <th scope="row">요금제</th>
                                        <td>5G 프리미어</td>
                                        <td>88,000원</td>
                                        <td>-22,000원</td>
                                        <td>선택약정할인 (24개월)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">기기</th>
                                        <td>아이폰 14</td>
                                        <td>41,600원</td>
                                        <td></td>
                                        <td>할부(4/24개월)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">부가서비스</th>
                                        <td>매너콜</td>
                                        <td>1,100원</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                                <tfoot >
                                    <tr>
                                        <td colspan="1"></td>
                                        <td class="font-bold text-dark" colspan="1">총 금액</td>
                                        <td class="font-bold text-theme">108,700원</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        
                        <div class="invoice-body table-responsive-md">
                            <div class="detail-bottom mb-3">
                                <h3>회선 : 010-4444-4444</h3>
                            </div>
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th scope="col">분류</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">금액</th>
                                        <th scope="col">할인</th>
                                        <th scope="col">비고</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">요금제</th>
                                        <td>5G 프리미어</td>
                                        <td>88,000원</td>
                                        <td>-22,000원</td>
                                        <td>선택약정할인 (24개월)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">기기</th>
                                        <td>아이폰 14</td>
                                        <td>41,600원</td>
                                        <td></td>
                                        <td>할부(4/24개월)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">부가서비스</th>
                                        <td>매너콜</td>
                                        <td>1,100원</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                                <tfoot >
                                    <tr>
                                        <td colspan="1"></td>
                                        <td class="font-bold text-dark" colspan="1">총 금액</td>
                                        <td class="font-bold text-theme">108,700원</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="invoice-footer text-end">
                            
                            <div class="buttons">
                                <a href="#" class="btn btn-solid-default rounded-2 me-2"
                                    onclick="window.print();">출력</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- invoice 1 end -->

</body>

</html>
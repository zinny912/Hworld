<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <c:import url="../temp/style.jsp"></c:import>
    <title>로그인</title>
    <style>
        .icon{
            font-size: 5em;
            animation: motion 0.6s /* 속도 */
                    linear 0s   /* 처음부터 끝까지 일정 속도로 진행 */
                    infinite alternate; /* 무한 반복 */
        }
        @keyframes motion {
            0% {margin-top: 0px;} /* 처음 위치 */
            100% {margin-top: 10px;} /* 마지막 위치 */
        }

        .floating {
            animation-name: floating;
            animation-duration: 3s;
            animation-iteration-count: infinite;
            animation-timing-function: ease-in-out;
        }
        @keyframes floating {
            from { transform: translate(0,  0px); }
            65%  { transform: translate(0, 15px); }
            to   { transform: translate(0, -0px); }
        } 
    </style>

</head>

<body class="theme-color2 light ltr">

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
                    <h2 style="margin-top: 15px;">로그인</h2>
                </div>

                <!-- <div class="login-title">
                    <h2>로그인</h2>
                </div> -->

                <!-- 내용 표시 영역 -->
                <!-- 대표 회선이 존재하지 않는 경우 -->
                <!-- <div class="image d-flex justify-content-center my-5">
                    <img src=".//assets/images/warning.png" alt="" style="width: 40%;">
                </div> -->
                <!-- 하얀색 경고표시 + 애니메이션은 icon, floating까지 -->
                <div class="image d-flex justify-content-center my-5">
                    <img class="icon floating" src=".//assets/images/exclamation.png" alt="" style="width: 40%;">
                </div>
                <div class="search-result my-2" style="text-align: center;">
                    <h3>대표 회선 정보가 없습니다.</h3>
                    <p>홈페이지 이용을 위해 대표 회선을 등록해주세요.</p>
                </div>

                <!-- 버튼 영역 -->
                <div class="button login">
                    <button onclick="location.href = 'index.html';" type="submit">
                        <span>대표 회선 등록하기</span>
                        <i class="fa fa-check"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Sign Up Section End -->

    <div class="bg-overlay"></div>
</body>

</html>
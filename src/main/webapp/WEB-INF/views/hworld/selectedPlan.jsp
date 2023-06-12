<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div>
        <h2>Plan Information</h2>
        <p>Plan Name: ${result.planName}</p>
        <p>Plan Price: ${result.planPrice}</p>
        <!-- 선택한 요금제에 대한 다른 정보들을 표시할 수 있습니다 -->
    </div>
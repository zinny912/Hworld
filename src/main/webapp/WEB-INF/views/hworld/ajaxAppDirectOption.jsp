<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty selectedList}">
	<c:forEach items="${selectedList}" var="i">
		<option value="${i.directCode}" data-direct-price="${i.directPrice}">${i.directCode}</option>
	</c:forEach>
</c:if>
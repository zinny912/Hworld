<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 리스트</h1>
				<table>
					<tbody>
                    <c:forEach items="${list}" var="directVO">
                    	<tr>
                    		<td>${directVO.directCode}</td>
                    		<td><a href="./detail?num=${directVO.directName}">${directVO.directContents}</a></td>
                    		<td>${directVO.directPrice}</td>
                    		<td>${directVO.directStock}</td>
			                <td>${directVO.categoryCode}</td> 
			                <td>${directVO.brandCode}</td> 
			                <td>${directVO.colorCode}</td> 
			                <td>${directVO.saveCapacity}</td>   	
                    	</tr>
                    
                    </c:forEach>
                    
                    </tbody>
              </table>
</body>
</html>
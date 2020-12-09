<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
</head>
<body>
 
 <c:import url="/WEB-INF/view/include/top_menu.jsp" />
	
 	<c:forEach var="list" items="${dto }">
 		<table align="center">
			<tr>
				<td>
				<a href="#"><img src="${root }image/${list.product_img}"></a>
				</td>
				<td>
				<div>${list.product_name }</div>
				</td>
				<td>
				<div>${list.product_price }원</div>
				</td>
			</tr> 		
 		
 		</table>
 		
 	</c:forEach>
 	
 <c:import url="/WEB-INF/view/include/bottom_info.jsp" />	
 
</body>
</html>
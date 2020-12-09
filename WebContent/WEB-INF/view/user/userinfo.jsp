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
<div align="center">
<div>아 이 디</div>
<div>${info.user_id }</div>
<div>이 름</div>
<div>${info.user_name }</div>
<div>주소</div>
<div>${info.user_addr }</div>
<div>생년월일</div>
<div>${info.user_birth }</div>
</div>
<c:import url="/WEB-INF/view/include/bottom_info.jsp" />	
</body>
</html>
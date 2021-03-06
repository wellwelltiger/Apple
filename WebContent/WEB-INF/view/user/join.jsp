<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<%-- <c:url var="root" value="/" /> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://use.typekit.net/uno7uop.css">
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<link rel="stylesheet" href="${root }css/join.css">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
  @import url('https://f    onts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap');
</style>
</head>
<script>
  function checkUserId(){
  	const user_id = $("#user_id").val();
  	
  	if(user_id.length == 0){
  		alert('아이디를 입력해 주세요');
  		return;
  	}
  	
  	$.ajax({
  		url : '${root}user/checkUserId/' + user_id,
  		type : 'get',
  		dataType : 'text',
  		success : function(result){
  			if(result.trim() == 'true'){
  				alert('사용할 수 있는 아이디입니다');
  				$("#checkId").val('true')
  			}else{
  				alert('사용할 수 없는 아이디입니다');
  				$("#checkId").val('false')
  			}
  		}
  	})
  }
  
  // onkeypress="resetUserId();
  // 사용자 ID 입력하는 부분에서 keyboard 를 누르면
  // path 속성값이 checkID 인 tag(element)의 value를
  // 무조건 false 로 함
  function resetUserId(){
  	$("#checkId").val("false");
  }

</script>
<body>
<c:import url="/WEB-INF/view/include/top_menu.jsp" />
  <div class="background">
    <h1>Apple ID 생성</h1>
  </div>
  <div class="nameAddress">
    <div class="explain">
      <p>하나의 Apple ID로 모든 Apple 서비스를 이용할 수 있습니다.</p>
      <p>Apple ID를 가지고 계십니까? <a href="#">찾아보기 <i class="fas fa-chevron-right"></i></a></p>
    </div>
    <form:form action="${root }user/join_proc" method="post"
			modelAttribute="userDTO">
     <div class="nameInput">
				<p>이름</p>
				<form:input path="user_name" placeholder="이름" />
				<form:errors path="user_name" style="color:red;" />
			</div>
      <div class="addressBirthday">
        <p>아이디</p>
				<form:input path="user_id" onkeypress="resetUserId();" />
				<button type="button" class="btn btn-primary"
					onclick="checkUserId();">중복확인</button>
				<form:errors path="user_id" />
        <p>비밀번호</p>
		<form:password path="user_pw" placeholder="입력"/>
		<form:errors path="user_pw" style="color:red;" />
        <p>비밀번호 확인</p>
		<form:password path="user_pw2" placeholder="비밀번호를 확인해주세요" />
		<form:errors path="user_pw2" style="color:red;" />
       <p>주소</p>
       <form:input path="user_addr" placeholder="주소를 입력하세요" />
		
        <p>생년월일</p>
        <%-- <form:date path="user_birth" value="xxx" min="yyy" max="zzz" /> --%>
		<input type="date" value="xxx" min="yyy" max="zzz" name="user_birth">
		<br>
      </div>
      <input type="reset" value="다시 작성">
      <input type="submit" value="회원가입">
    </form:form>
  </div>
  <c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>
</html>




<%--   <div class="container" style="margin-top: 100px">
    <div class="row">
      <div class="col-sm-3"></div>
      <div class="col-sm-6">
        <div class="card shadow">
          <div class="card-body">
            <form:form action="${root }user/join_proc" method="post" modelAttribute="userDTO">
              <form:hidden path="checkId" />
              <div class="form-group">
                <form:label path="user_name">이름</form:label> 
                <form:input path="user_name" class="form-control" />
                <form:errors path="user_name" style="color:red;"/>
              </div>
              <div class="form-group">
                <form:label path="user_id">아이디</form:label>
                <div class="input-group">
                  <form:input path="user_id" class="form-control" onkeypress="resetUserId();"/>
                  <div class="input-group-append">
                    <button type="button" class="btn btn-primary" onclick="checkUserId();">중복확인</button>
                  </div>
                </div>
                <form:errors path="user_id" style="color:red;"/>
              </div>
              <div class="form-group">
                <form:label path="user_pw">비밀번호</form:label> 
                <form:password path="user_pw" class="form-control" />
                <form:errors path="user_pw" style="color:red;"/>
              </div>
              <div class="form-group">
                <form:label path="user_pw2">비밀번호 확인</form:label> 
                <form:password path="user_pw2" class="form-control" />
                <form:errors path="user_pw2" style="color:red;"/>
              </div>
              <div class="form-group">
                <div class="text-right">
                  <form:button class="btn btn-primary">회원가입</form:button>
                </div>
              </div>
            </form:form>
          </div>
        </div>
      </div>
      <div class="col-sm-3"></div>
    </div>
  </div> --%>





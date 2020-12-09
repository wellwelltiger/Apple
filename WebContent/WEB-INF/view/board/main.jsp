<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<%-- <c:url var="root" value="/" />  --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Bootstrap CDN -->
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/main.css">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap');


  .menu-list {

            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 100px;
            height: 300px;
            justify-content: space-around;
        }

</style>

</head>
<body>

	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />
	
	 <div class="menu-list">
	 <c:forEach var="dto" items="${board_list }">
             
                <a href="${root }board/main2?board_info_idx=${dto.board_info_idx}" >${dto.board_info_name }</a>
              
      </c:forEach>
	</div>


	<!-- 게시글 리스트 -->


<div class="container" style="margin-top:100px">
	<div class="row">
		<c:forEach var='sub_list' items="${list }" varStatus="idx">
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">${board_list[idx.index].board_info_name }</h4>
					<table class="table table-hover" id='board_list'>
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var='obj' items='${sub_list }'>
							<tr>
								<td class="text-center">${obj.content_idx }</td>
								<th><a href='${root }board/read?board_info_idx=${board_list[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1'>${obj.content_subject }</a></th>
								<td class="text-center d-none d-xl-table-cell">${obj.content_date }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<a href="${root }board/main2?board_info_idx=${board_list[idx.index].board_info_idx}" class="btn btn-primary">더보기</a>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>


	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

	<%-- 	
		<div class="menu-list">	
		
			<c:forEach var='obj' items='${dto }'>
			<div>
				<a href="${root }board/customer?customer_info_idx=${obj.customer_info_idx}">${obj.customer_info_name }</a>
			</div>
			</c:forEach>
		
		</div> --%>
</body>
</html>







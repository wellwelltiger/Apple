<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" /> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vegetables & Fruit</title>
<!-- Bootstrap CDN -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href=" css/main.css">
<link rel="stylesheet" href="https://use.typekit.net/uno7uop.css">
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<script src="$js/main.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<!-- <script type="text/javascript">
      $(document).ready(function(){
         $("#headers").load("topNav.html #nav")
         $("#footers").load("footer.html .footer")
      });
</script>  --> 
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap');
 .item1{
  background-image: url(image/1.png);
  }
  .item3{
  background-image: url(image/3.png);
  }
  .item4{
  background-image: url(image/4.png);
  }
  .item5{
  background-image: url(image/5.png);
  }
  .item6{
  background-image: url(image/6.png);
  }
  .item7{
  background-image: url(image/7.png);
  }
  .item8{
  background-image: url(image/8.png);
  }
  .item9{
  background-image: url(image/9.png);
  } 
</style>
</head>
<body>
  <!-- 상단 메뉴 -->
<c:import url="/WEB-INF/view/include/top_menu.jsp" />


<!-- 게시판 미리보기 부분 -->
<div class="container" style="margin-top:100px">
	 <div class="topNotice">
      <p>제 때 받을 수 있도록, 연말연시 선물들도&nbsp<button class="pBlue">온라인으로 미리미리.</button>&nbsp스페셜리스트에게 도움도 받고, 무료 배송 혜택 등도 누리세요.</p>
    </div>
    <div class="item1">
    
      <div class="item1Content">
        <p>iPhone 12 Pro Max</p>
        <h1>큼직하게.</h1>
        <p>iPhone 12 Pro Max를</p>
        <p>오늘 바로 사전 주문하세요.</p>
        <div class="itemBtn1">
          <div><a href="${root }menu/list_do" class="itemMore1">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
          <div><a href="${root} board/main" class="itemBuy1">사전 주문하기 </a><i class="fas fa-chevron-right"></i></div>
        </div>  
      </div>
    </div>
    <div class="item2">
    	<a href="#"><img src="image/2.png"></a>
      </div>
    </div>
    <div class="item3">
      <div class="item3Content">
        <p><i class="fas fa-apple-alt"></i></p>
        <h1>특별한 시즌, 빛나는 선물</h1>
        <div class="itemBtn1">
         <div><a href="${root} board/main" class="itemBuy1">사전 주문하기 </a><i class="fas fa-chevron-right"></i></div>
          </div>
        </div>  
      </div>
    </div>
    <div class="itemBox">
      <div class="item4">
        <div class="item4Content">
          <h1>MacBook Air</h1>
          <h2>Air의 흐름을 바꾸다.</h2>
          <p>출시일은 추후 공개됩니다.</p>
          <div class="itemBtn2">
            <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">가격보기 </a><i class="fas fa-chevron-right"></i></div>
          </div>  
        </div>
      </div>
      <div class="item5">
        <div class="item5Content">
          <h3>13형 모델</h3>
          <h1>MacBook Pro</h1>
          <h2>프로 중의 프로.</h2>
          <p>M1 칩 탑재 모델의 출시일은 추후 공개됩니다.</p>
          <div class="itemBtn2">
            <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">구입하기 </a><i class="fas fa-chevron-right"></i></div>
          </div>  
        </div>
      </div>
      <div class="item6">
        <div class="item6Content">
          <h1>Mac mini</h1>
          <h2>새로운 파워. 어마무시한 가능성.</h2>
          <p>M1 칩 탑재 모델의 출시일은 추후 공개됩니다.</p>
          <div class="itemBtn2">
             <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">구입하기 </a><i class="fas fa-chevron-right"></i></div>
            </div>
          </div>  
        </div>
      </div>
      <div class="item7">
        <div class="item7Content">
          <div class="item7ContentItem"><p>심전도 앱 한국 출시</p></div>
          <h1><i class="fab fa-apple"></i>WATCH</h1>
          <p>S E R I E S 6</p>
          <h2>건강의 미래, 이미 손목 위에.</h2>
          <div class="itemBtn2">
           <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">가격보기 </a><i class="fas fa-chevron-right"></i></div>
            </div>
          </div>  
        </div>
      </div>
      <div class="item8">
        <div class="item8Content">
          <h1><i class="fab fa-apple"></i>WATCH</h1>
          <p>SE</p>
          <h2>손색없다. 부담없다.</h2>
          <div class="itemBtn2">
            <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">구입하기 </a><i class="fas fa-chevron-right"></i></div>
            </div>
          </div>  
        </div>
      </div>
      <div class="item9">
        <div class="item9Content">
          <h1>iPad Air</h1>
          <h2>강력하다.다채롭다.경이롭다.</h2>
          <div class="itemBtn2">
             <div><a href="${root} board/main" class="itemMore2">더 알아보기 </a><i class="fas fa-chevron-right"></i></div>
            <div><a href="${root} board/main" class="itemBuy2">구입하기 </a><i class="fas fa-chevron-right"></i></div>
            </div>
          </div>  
        </div>
      </div>
    </div>
</div>
	
<!-- 하단 정보 -->  
<c:import url="/WEB-INF/view/include/bottom_info.jsp" />


</body>
</html>




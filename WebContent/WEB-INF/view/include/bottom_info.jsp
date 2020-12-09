<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="root" value="${pageContext.request.contextPath }/" />   
<link rel="stylesheet" href="${root }css/footer.css">

 <div class="footer">
    <div class="footerNav">
      <div class="footerContentBox">
        <div class="footerContent1">
          <div class="footerTitle">쇼핑 및 알아보기</div>
          <div class="footerContent">
            <c:forEach var="dto" items="${topMenuList }">
            <ul class=footerContentList>
              <li>
                <a href="${root }board/main?board_info_idx=${dto.top_info_idx}" class="footerContentList">${dto.top_info_name }</a>
              </li>
              </ul>
            </c:forEach>
           <!--  <ul class="footerContentList">
              <li>Mac</li>
              <li>iPad</li>
              <li>iPhone</li>
              <li>Watch</li>
              <li>Music</li>
              <li>AirPods</li>
              <li>iPod touch</li>
              <li>액세서리</li>
            </ul> -->
          </div>
        </div>
        <div class="footerContent2">
          <div class="footerTitle">서비스</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>Apple Music</li>
              <li>Apple Arcade</li>
              <li>iCloud</li>
              <li>Apple Books</li>
              <li>App Store</li>
            </ul>
          </div>
          <div class="footerTitle">계정</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>Apple ID 관리</li>
              <li>Apple Store 계정</li>
              <li>iCloud.com</li>
            </ul>
          </div>
        </div>
        <div class="footerContent3">
          <div class="footerTitle">Apple Store</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>매장 찾기</li>
              <li>온라인에서 쇼핑하기</li>
              <li>Genius Bar</li>
              <li>Today at Apple</li>
              <li>Apple 캠프</li>
              <li>Apple Store 앱</li>
              <li>리퍼 및 특가 제품</li>
              <li>금융 혜택</li>
              <li>Apple Trade In</li>
              <li>주문 상태</li>
              <li>쇼핑 도움말</li>
            </ul>
          </div>
        </div>
        <div class="footerContent4">
          <div class="footerTitle">비즈니스</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>Apple과 비즈니스</li>
              <li>비즈니스를 위한 제품 쇼핑하기</li>
            </ul>
          </div>
          <div class="footerTitle">교육</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>Apple과 교육</li>
              <li>초중고용 제품 쇼핑하기</li>
              <li>대학 생활을 위한 제품 쇼핑하기</li>
            </ul>
          </div>
        </div>  
        <div class="footerContent5">
          <div class="footerTitle">Apple의 가치관</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>손쉬운 사용</li>
              <li>환경</li>
              <li>개인정보 보호</li>
              <li>협력업체에 대한 책임</li>
            </ul>
          </div>
          <div class="footerTitle">Apple 정보</div>
          <div class="footerContent">
            <ul class="footerContentList">
              <li>Newsroom</li>
              <li>Apple 리더십</li>
              <li>채용 안내</li>
              <li>이벤트</li>
              <li>일자리 창출</li>
              <li>Apple 연락처</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="footerNC">
      <div class="footerNotice"><p>다양한 쇼핑 방법:&nbsp<button class="pBlue">Apple Store를 방문</button>&nbsp하거나,&nbsp<button class="pBlue">리셀러</button>를 찾아보거나, 080-330-8877번으로 전화하세요.</p></div>
      <div class="footerCopyright">
        <div class="footerCopyright1">
          <p>Copyright<i class="far fa-copyright"></i>2020 Apple Inc. 모든 권리 보유. <button class="copyrightBtn1">개인정보 처리방침</button><button class="copyrightBtn2">웹 사이트 이용 약관</button><button class="copyrightBtn3">판매 및 환불</button><button class="copyrightBtn4">법적 고지</button><button class="copyrightBtn5">사이트 맵</button></p><span>대한민국</span>
        </div>
        <div class="footerCopyright2">
          <p>사업자등록번호 : 120-81-84429 | 통신판매입신고번호 : 제 2011-서울강남-00810호 | 대표이사 : PETER DENWOOD | 주소 : 서울 특별시 강남구 영동대로 517 | 대표전화 : 02-6712-6700 | 팩스 : 02-6928-0000</p>
        </div>
      </div>
    </div>
  </div>
</div>
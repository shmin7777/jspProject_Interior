<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.menu a {
	cursor: pointer;
}

.menu .more {
	display: none;
}

.more li {
	list-style: none;
}

.more a {
	font-size: 0.75em;
	border-bottom: none;
}
</style>
</head>
<body>
	<ul class="links">
		<li><a href="/test01/app/main/index.jsp">Home</a></li>
		<li class="menu"><a>상담</a>
			<ul class="more">
				<li><a href="${pageContext.request.contextPath}/app/consult/consultMain.jsp">상담</a></li>
				<li><a href="${pageContext.request.contextPath}/cc/ccList.cc">시공사례</a></li>
			</ul></li>
		<li class="menu"><a>스토어</a>
			<ul class="more">
				<li><a href="${pageContext.request.contextPath}/store/Props.st">소품</a></li>
				<li><a href="${pageContext.request.contextPath}/store/furniture.st">가구</a></li>
				<li><a href="${pageContext.request.contextPath}/store/Best.st">베스트 상품</a></li>
			</ul></li>
		<li class="menu"><a>커뮤니티</a>
			<ul class="more">
				<li><a href="${pageContext.request.contextPath}/event/EventList.ev">이벤트</a></li>
				<li><a href="${pageContext.request.contextPath}/Brag/Brag_BoardList.br">자랑하기</a></li>
			</ul></li>
		<li class="menu"><a>고객센터</a>
			<ul class="more">
				<li><a href="${pageContext.request.contextPath}/notice/NoticeList.no">공지사항</a></li>
				<li><a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo">문의하기</a></li>
			</ul></li>
	</ul>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	
	
	// html dom이 다 로딩된 후 실행
	$(document).ready(function() {

		// menu 클래스 바로 하위에 있는 a태그를 클릭했을 때

		$(".menu>a").click(function() {
			var submenu = $(this).next("ul");

			//submenu가 화면상에 보일때는 위로 접고 아니면 아래로 펼치기
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
				setTimeout(function(){
					submenu.slideUp();
				}, 3000);
				
			}
		});
	});
	
	
	
	
</script>
</html>
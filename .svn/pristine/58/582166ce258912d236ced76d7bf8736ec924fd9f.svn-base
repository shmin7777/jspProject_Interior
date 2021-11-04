<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>마이페이지 | 장바구니</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
#inqSelect {
	width: auto;
	font-size: 12px;
}
</style>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<c:choose>
				<c:when test="${session_id==null }">
					<jsp:include page="/fixed/header.jsp"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="/fixed/header_login.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<jsp:include page="/fixed/menu.jsp"></jsp:include>
		</nav>



		<!-- Wrapper 시작 -->
		<div id="wrapper">
			<h3 style="text-align: center; border-bottom: none;">My Page</h3>
			<!-- inquiry_container 시작 -->
			<div id="inquiry_container" style="height: auto;">
				<!-- inquiry_menu 시작 -->
				<div id="inquiry_menu">
					<a href="${pageContext.request.contextPath}/user/UserProfileOk.me">회원정보</a>
					<a
						href="${pageContext.request.contextPath}/myPage/MyPagePurchaseListOk.mp">구매내역</a>
					<a
						href="${pageContext.request.contextPath}/myPage/MyPageCartListOk.mp">장바구니</a>
					<a
						href="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp">게시물
						관리</a>
					<!-- inquiry_menu 끝 -->
				</div>
				<!-- div_table 시작 -->
				<section id="main" class="main" style="text-align: center;">
					<a
						href="${pageContext.request.contextPath}/store/Props.st"><img
						id="cat" alt="cat"
						src="${pageContext.request.contextPath}/images/cat.png"></a>
				</section>
				<!-- search_container 끝 -->
			</div>
			<!-- inquiry_container 끝 -->
		</div>
		<!-- Wrapper 끝 -->




		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>

	</div>
	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>
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
<title>마이페이지 | 회원정보 수정</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
#email {
    width: 120%;
}

#email_select {
	width: 125%;
}

#changeInfo {
	margin-left: 70%;
	/* color: #ccc; */
	font-size: 14px !important;
}
#revise {
	/* font-weight: bold; */
	margin-left: 4%;
	font-size: 14px !important;
}

fieldset div {
	margin: 4%;
	font-weight: 300;
}

fieldset {
	font-size: 10px !important;
	border: solid 2px #eaeaea !important;
	border-radius:9%;
	margin: auto !important;
	width: 55% !important;
}

.col-12 {
	display: flex;
	align-items: center;
	font-size: 16px !important;
}

.col-12-small {
	float: left;
	padding-left: 5%;
	text-align: left;
}

.col-12 .col-12-small {
	width: 15%;
	margin: 0;
}

.info {
	width: 10%;
	font-weight: 400 !important;
}

.col-6 {
	margin: 0;
	width: 37.1%;
}

ul {
	margin: 0 !important;
}

.user_info{
	width: 500%;
}
.info{
	font-size: 14px !important;
}
</style>
<body class="is-preload">
	<c:set var="viewProfile" value="${viewProfile}"/>
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
					<a href="${pageContext.request.contextPath}/myPage/MyPagePurchaseListOk.mp">구매내역</a>
					<a href="${pageContext.request.contextPath}/myPage/MyPageCartListOk.mp">장바구니</a>
					<a href="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp">게시물 관리</a>
					<hr style="border: white;">
						<fieldset>
							<div class="col-12" style="align-items: baseline;">
								<h3 id="revise" style="font-size: 18px;">my profile</h3>
								<p id="changeInfo" style="margin-left: 53%;">
									<a href="${pageContext.request.contextPath}/app/myPage/updateProfile.jsp" style="font-size: 10px;">수정하기</a>
								</p>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">email</div>
								<div class="col-6 col-12-small">
									<p id="email" class="user_info" style="font-size: 10px;">${viewProfile.getUser_email()}</p>
								</div>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">phone number</div>
									<div class="col-6 col-12-small">
									<p id="user_phone_no" class="user_info" style="font-size: 10px;">${viewProfile.getUser_phone_no()}</p>								
									</div>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">zipcode</div>
									<div class="col-6 col-12-small">
									<p id="user_zipcode" class="user_info" style="font-size: 10px;">${viewProfile.getUser_zipcode()}</p>								
									</div>
							</div>
						<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
							<div class="info">address</div>
								<div class="col-6 col-12-small">
									<p id="user_address" class="user_info" style="font-size: 10px;">${viewProfile.getUser_address()}</p>								
									</div>
						</div>
						<div class="col-12" style="margin-bottom: 0; margin-top: 0;">	
						<div class="info">address detail</div>
							<div class="col-6 col-12-small">
									<p id="user_address_detail" class="user_info" style="font-size: 10px;">${viewProfile.getUser_address_detail()}</p>								
									</div>
						</div>
						<div class="col-12" style="margin-bottom: 4%; margin-top: 0;">
						<div class="info">address etc</div>
							<div class="col-6 col-12-small">
									<p id="user_address_etc" class="user_info" style="font-size: 10px;">${viewProfile.getUser_address_etc()}</p>			
								</div>
						</div>
						</fieldset>

					<!-- inquiry_menu 끝 -->
				</div>
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
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>
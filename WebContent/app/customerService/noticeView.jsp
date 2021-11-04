<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>

<title>문의하기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
img {
	width: 240px;
	border-radius: 0.5em;
}

.name {
	font-weight: 600;
}

.box {
	border: none !important;
	margin-top: -2% !important;
}

.top {
	margin-left: 6% !important;
	margin-right: 6% !important;
}

form textarea{
	border-radius:0; 
	resize:none;
	color:black !important;
}
	
form div#cs_reply{
	display:flex;
	margin-bottom:3%;
}
	
input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
	
ul.actions li {
    padding: 0 0 0 0.2em;
}
	
p.content{
	width:63%;
}
	
p.writer{
	width:20%;
	font-weight:bold;
}

</style>
<body class="is-preload">

<c:set var="list" value="${notice}" />

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
			<section id="main" class="main">
				<div class="inner">
					<header class="major">
						<h3>Notice</h3>
					</header>
					<div class="top">
					<%-- <input type="hidden" name="user_no">${list.getUser_no()} --%>
						<h3 style="font-size: 14px;"><strong>제목 ${list.getNotice_title()}</strong></h3>
						<div class="name" style="font-size: 14px; line-height: 30px;">작성자&nbsp&nbsp:&nbsp&nbsp관리자</div>
						<div style="font-size: 14px;">${list.getNotice_date()}</div>
						<ul class="actions"
							style="display: flex; justify-content: flex-end; font-size: 10px;">
							<li><input type="button" value="list" class="primary" onclick="location.href='${pageContext.request.contextPath}/notice/NoticeList.no'"></li>
						</ul>
						<hr style="margin-top: 0;">
						
					</div>
					<!-- 클래스명은 변경하면 안 됨 -->
					<div class="col-6"
						style="float: left; width: 53%; padding-left: 6%;">
						<%-- <img src="${pageContext.request.contextPath}/app/cs_upload/${files.getCs_file_name()}"> --%>
					<%-- 	${files.getCs_original_file_name()} --%>
					
					</div>
					<div class="box">
						<fieldset style="width: 43%; padding-left: 2%;">
							<h3>
								<pre>${list.getNotice_content()}</pre>
							</h3>
						</fieldset>
					</div>
				</div>
			</section>
			
			</div>
		<!-- Wrapper 끝 -->
	</div>
	<!-- Page Wrapper 끝 -->
	



	<!-- Footer -->
	<footer id="footer">
		<jsp:include page="/fixed/footer.jsp"></jsp:include>
	</footer>

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
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

 
</html>
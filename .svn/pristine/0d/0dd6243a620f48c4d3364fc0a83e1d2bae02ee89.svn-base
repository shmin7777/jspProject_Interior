<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>로그인</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
.row>.col-6 {
	width: 98%;
	margin: 0 auto;
}

.row>.col-12-small {
	text-align: right;
}

.major {
	/* margin: 0px !important; */
}

.major h1 {
	display: inline;
}

.major img {
	border: none !important;
	margin: 0px !important;
	padding: 0px !important;
}

.login-box li {
	width:33%;
	text-align: center;
	float: left;
	list-style: none;
}
</style>
</head>
<body class="is-preload">
<c:if test="${not empty param.code}">
         <script>
            alert("아이디 또는 비밀번호를 다시 확인해주세요.");
         </script>
      </c:if>
		<div id="event_popup">
				<span style="color: white;">
					5만원 이상 구매시 무료배송 ! Code: CANTSTOPMYROOM
				</span>
				<span id="close" onclick="close_popup();">&nbsp;&nbsp;✖</span>
		</div>
	
	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<jsp:include page="/fixed/header.jsp"></jsp:include>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<jsp:include page="/fixed/menu.jsp"></jsp:include>
		</nav>


		<!-- Wrapper -->
		<div id="wrapper">

			<!-- Main -->
			<section id="main" class="main">

				<div class="inner">
					<header class="major" style="margin-top: 40px;">
						<img alt="" src="${pageContext.request.contextPath}/assets/images/logo.png" style="width: 100px;">
						<h1>관리자 로그인</h1>
					</header>
					
					<div style="width: 55%;margin: auto;margin-top: 52px;">
					<form method="post" action="${pageContext.request.contextPath}/manage/ManageLoginOk.mn">
						<div class="row gtr-uniform" style="display: block;">
							<div class="col-6 col-12-xsmall">
								<input type="text" name="id" id="id" value=""
									placeholder="아이디를 입력해 주세요." />
							</div>
							<br>
							<div class="col-6 col-12-xsmall" style="padding: 0 0 0 2em;">
								<input type="password" name="pw" id="pw" value=""
									placeholder="비밀번호를 입력해 주세요." />
							</div>
							<div class="col-6 col-12-xsmall">
								<input type="submit" value="로그인 " class="button primary"
									style="width: 100%;">
							</div>
							
						</div>
					</form>
					</div>
					
				</div>

				<hr style="clear: both; margin-top: 68px;">


			</section>

		</div>

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
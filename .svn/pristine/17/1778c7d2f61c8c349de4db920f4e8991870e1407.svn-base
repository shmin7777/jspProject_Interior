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
<title>내 방은 못말려 | We make your live liveable</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
.icons {
	padding-left: 30px !important;
}

.col-12 {
	padding: inherit !important;
}

#pwDiv {
	padding-top: 3% !important;
	font-size: 14px !important;
}

#saveIdDiv {
	padding-top: 5% !important;
	font-size: 14px !important;
}

#loginDiv {
	padding-top: 5% !important;
	padding-bottom: 5% !important
}

.gtr-uniform {
	margin-left: 35% !important;
	margin-right: 35% !important;
}

.login-box li {
	float: left !important;
	list-style: none !important;
	width: 47% !important;
}

a {
	color: inherit !important;
	text-decoration: none !important;
	border-bottom: none !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
	text-transform: uppercase;
}

#idDiv input {
	font-size: 14px !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
}

#pwDiv input {
	font-size: 14px !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
}

p {
	font-size: 14px !important;
	text-align: center !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
	text-transform: uppercase;
}

#login_btn {
	width: 100% !important;
}

#saveId {
	width: 100% !important;
}

#list {
	font-size: 14px !important;
	text-align: center !important;
}

#snsLogin {
	margin: auto !important;
	width: auto !important;
}
</style>
</head>
<body class="is-preload">
	<c:if test="${not empty param.code}">
		<script>
			alert("아이디 또는 비밀번호를 다시 확인해주세요.");
		</script>
	</c:if>
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


		<!-- Wrapper -->
		<div id="wrapper">

			<!-- Main -->
			<section id="main" class="main">

				<div class="inner">
					<header class="major">
						<h3>LOGIN</h3>
					</header>

					<form method="post"
						action="${pageContext.request.contextPath }/user/UserLoginOk.me">
						<div class="row gtr-uniform">
							<div class="col-12" id="idDiv">
								<input type="text" name="id" id="id" value="" placeholder="ID" />
							</div>
							<div class="col-12" id="pwDiv">
								<input type="password" name="pw" id="pw" value=""
									placeholder="PASSWORD" />
							</div>
							<div class="col-12" id="saveIdDiv">
								<input type="checkbox" id="saveId" name="saveId" checked>
								<label for="saveId"><h3>remember id</h3></label>
							</div>
							<div class="col-12" id="loginDiv">
								<input type="submit" value="login" class="button primary"
									id="login_btn">
							</div>
							<div class="col-12" id="list">
								<ul class="login-box">
									<li><a
										href="${pageContext.request.contextPath}/app/member/signup.jsp"><h3>sign
												up</h3></a></li>
									<li><a
										href="${pageContext.request.contextPath}/app/member/findAccount.jsp"><h3>find
												id & pw</h3></a></li>
								</ul>
								<br>
							</div>

							<div class="col-12" id="snsLogin">
								<p style="padding-bottom: 10px;">log in with sns account</p>

								<ul class="icons">
									<li><a href="#" class="icon brands alt fa-twitter"><span
											class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands alt fa-facebook-f"><span
											class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands alt fa-instagram"><span
											class="label">Instagram</span></a></li>
								</ul>
							</div>
						</div>
					</form>
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
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
</head>
<style>
.snsLogin {
	text-align: center !important;
}

.col-12-small {
	width: 49% !important;
}

.col-12-xsmall {
	width: 70% !important;
}

#email_seperator {
	width: 2% !important;
	padding-left: 2% !important;
	padding-top: 16% !important;
}

.phone {
	float: left !important;
}

input {
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
}

/* a {
    color: inherit !important;
    text-decoration: none !important;
    border-bottom: none !important;
    font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
	text-transform: uppercase;
} */

p {
	text-align: center !important;
	width: -webkit-fill-available !important;
	font-size: 14px !important;
	text-align: center !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
	text-transform: uppercase;
}

label {
	font-size: 14px !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
}

#join {
	margin: auto !important;
}

.gtr-uniform {
	margin-left: 25% !important;
	margin-right: 25% !important;
}

#sns {
	font-size: 14px !important;
}

#inputEmail {
	display: flex !important;
	flex-direction: row !important;
	align-items: center !important;
}
#input_email{
	margin: auto !important;
}

fieldset {
	border: solid !important;
	border-width: 2px !important;
	width: 100% !important;
	margin-left: 7% !important;
	padding-bottom: 10px;
	color: gainsboro;
}

hr {
	width: 92% !important;
}
</style>
<!-- 이벤트 배너 시작 -->
<jsp:include page="/fixed/event_banner.jsp" />
<!-- 이벤트 배너 끝 -->
<body class="is-preload">
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
						<h3 style="font-size: 14px">SIGN UP</h3>
					</header>

					<!-- sns가입 -->
					<div class="snsLogin">
						<!-- <p id="sns">SNS계정으로 회원가입</p> -->
						<p style="padding-bottom: 10px;">
							<strong>log in with sns account</strong>
						</p>
						<ul class="icons">
							<li><a href="#" class="icon brands alt fa-twitter"><span
									class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands alt fa-facebook-f"><span
									class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands alt fa-instagram"><span
									class="label">Instagram</span></a></li>
						</ul>
					</div>

					<form method="post"
						action="${pageContext.request.contextPath }/user/JoinOk.me"
						name="signupForm">
						<div class="row gtr-uniform">
							<!-- 이름 -->
							<div class="col-12">
								<label>NAME</label> <input type="text" name="user_name"
									id="user_name" placeholder="이름">
							</div>

							<!-- 아이디 -->
							<div class="col-12">

								<label>ID<span id="idCheck_text"
									style="font-size: 0.7em;"></span>
								</label><span style="font-size: 0.7em;"></span> <input
									type="text" name="user_id" id="user_id"
									placeholder="4자 이상, 16자 이하로 입력해주세요.">
							</div>

							<!-- 이메일 -->
								<div class="col-6 col-12-small">
									<label>EMAIL</label> <input type="text" name='email'
										id="user_email" placeholder="이메일">
								</div>
								<div id="email_seperator">@</div>
								<div class="col-6 col-12-small">
									<label>&nbsp;</label> <span id="inputEmail"> <select
										id="email_select" name='email_detail'>
											<option selected disabled>선택</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="icloud.com">icloud.com</option>
											<option value="outlook.com">outlook.com</option>
											<option value="_manual">직접입력</option>
									</select>
									</span>
								</div>
							<!-- 휴대폰번호 -->
							<div class="col-6 col-12-xsmall">
								<label>PHONE NUMBER</label> <input type="text"
									name="user_phone_no" id="user_phone_no"
									placeholder="휴대폰 번호(-제외)" class="phone" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 전송"
										class="button primary" onclick=""></li>
								</ul>
								<label>VERIFICATION CODE</label> <input type="text"
									name="phone_no_check" id="phone_no_check" placeholder="인증번호 입력"
									class="phone" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 확인"
										class="button primary" onclick=""></li>
								</ul>
							</div>

							<!-- 비밀번호 -->
							<div class="col-12">
								<label>PASSWORD</label> <input type="password" name="user_pw"
									id="user_pw" placeholder="8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함" />
							</div>
							<div class="col-12">
								<label style="padding-top: 10px;">CONFIRM PASSWORD</label> <input type="password"
									name="user_pw_check" id="user_pw_check" placeholder="비밀번호 확인" />
							</dssSiv>

							<!-- 이용약관 -->
							<label style="padding-top: 40px;">TERMS AND CONDITIONS</label>
							<fieldset>
								<div class="col-12">
									<input type="checkbox" id="agreeAll" name="agreeAll"
										onclick="selectAll(this)"> <label for="agreeAll"><strong>전체
											동의하기</strong></label>
								</div>
								<hr>
								<div class="col-12">
									<input type="checkbox" id="agree" name="term" class="terms"
										onclick="checkSelectAll()"> <label for="agree"><strong>[필수]</strong><a
										href="${pageContext.request.contextPath}/app/footer/privacyPolicy.jsp"
										target="_blank">&nbsp;개인정보 수집 및 이용 동의</a></label>
								</div>
								<div class="col-12">
									<input type="checkbox" id="term" name="term" class="terms"
										onclick="checkSelectAll()"> <label for="term"><strong>[필수]</strong><a
										href="${pageContext.request.contextPath}/app/footer/term.jsp"
										target="_blank">&nbsp;이용약관</a></label>
								</div>
								<div class="col-12">
									<input type="checkbox" id="event" name="term" class="termSel"
										onclick="checkSelectAll()"> <label for="event"
										style="padding-bottom: 5%;"><strong
										style="color: #A4C2EF;">[선택]</strong>&nbsp;이벤트, 프로모션 알림 메일 및
										SMS 수신</label>
								</div>
							</fieldset>

							<!-- 완료 -->
							<div class="col-12">
								<ul class="actions">
									<li id="join"><input type="button" value="sign up"
										class="button primary large" onclick="formSubmit()" /></li>
								</ul>
							</div>
							<p>
								<a
									href="${pageContext.request.contextPath}/user/UserLogin.me"><strong>already
										have an account?</strong></a>
							</p>
						</div>
					</form>
				</div>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>

	</div>

</body>
<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
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
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/app/member/signup.js"></script>

</body>
</html>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
#email {
	width: 120%;
}

#email_select {
	width: 125%;
}

ul.actions li {
	padding: 0 0 0 0em !important;
	vertical-align: middle !important;
}

#inputEmail {
	flex-direction: row;
	align-items: center;
}

#revise {
	/* font-weight: bold; */
	margin-left: 5%;
	font-size: 18px !important;
}

form {
	padding-top: 5%;
	margin-left: 7%;
	margin-right: 7%;
}

#signout {
	margin-left: 70%;
	color: #ccc;
	font-size: 14px !important;
}

.myInfo {
	float: left;
	width: 25%;
	list-style: none !important;
}

fieldset div {
	margin: 4%;
	font-weight: 400;
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
}

.col-12-small {
	float: left;
}

.col-12 .col-12-small {
	width: 15%;
	margin: 0;
}

.info {
	width: 10%;
}

.col-6 {
	margin: 0;
	width: 37.1%;
}

#email_seperator {
	float: left;
	margin-left: 20px !important;
	margin-right: 1px !important;
	width: 4%;
	text-align: center;
	color: #ccc;
}

ul {
	margin: 0 !important;
}
.info {
	width: 10%;
	font-weight: 400 !important;
	font-size: 14px;
}
</style>
<body class="is-preload">
	<c:set var="userProfile" value="${userProfile}" />
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
					<hr style="border: white;">
					<form name="updateForm"
						action="${pageContext.request.contextPath}/user/UserUpdateProfileOk.me"
						method="post">
						<fieldset>
							<div class="col-12" style="align-items: baseline;">
								<h3 id="revise">my profile</h3>
								<p id="signout" style="margin-left: 53%;">
									<a
										href="${pageContext.request.contextPath}/app/myPage/deleteAccount.jsp"
										style="font-size: 10px;">탈퇴하기</a>
								</p>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">email</div>
								<div class="col-6 col-12-small">
									<input type="text" name="email" id="email"
										value="${userProfile.getUser_email()}" placeholder="이메일"
										style="font-size: 10px;">
								</div>
								<div id="email_seperator">@</div>
								<div class="col-6 col-12-small">
									<span id="inputEmail"> <select id="email_select"
										name='email' style="font-size: 10px;">
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
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">phone number</div>
								<input type="text" name="user_phone_no" id="user_phone_no"
									placeholder="휴대폰 번호(- 제외)" class="phone"
									style="width: 26%; font-size: 10px;" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 전송"
										class="button primary" onclick=""></li>
								</ul>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">verification code</div>
								<input type="text" name="phone_no_check" id="phone_no_check"
									placeholder="인증번호 입력" class="phone"
									style="width: 26%; font-size: 10px;" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 확인"
										class="button primary" onclick=""></li>
								</ul>
							</div>

							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">zipcode</div>
								<input type="text" name="user_zipcode" id="user_zipcode"
									class="postcodify_postcode5" value=""
									style="width: 26%; font-size: 10px;" />
								<ul class="actions">
									<li><input type="button" id="postcodify_search_button"
										class="button primary" value="search"
										style="width: 130% !important;"></li>
								</ul>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">address</div>
								<input type="text" name="user_address" id="user_address"
									class="postcodify_address"
									value="${userProfile.getUser_address()}"
									style="width: 40%; font-size: 10px;" /> <br>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">address detail</div>
								<input type="text" name="user_address_detail"
									id="user_address_detail" class="postcodify_details"
									value="${userProfile.getUser_address_detail()}"
									style="width: 40%; font-size: 10px;" /> <br>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">address etc</div>
								<input type="text" name="user_address_etc" id="user_address_etc"
									class="postcodify_extra_info"
									value="${userProfile.getUser_address_etc()}"
									style="width: 40%; font-size: 10px;" /> <br>
							</div>
							<div class="col-6"
								style="font-size: 17px; margin-left: 6%; margin-bottom: 12%; margin-top: 2%;">
								<ul class="actions" style="float: right; font-size: 12px;">
									<li><input id="" type="button" value="회원 정보 수정"
										class="primary" onclick="update()"></li>
								</ul>
							</div>
						</fieldset>
					</form>

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
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
	<script>
		$(document).ready(function() {
			$('#email_select').change(function() {
				var email = $('#email_select')
						.val(); //id선택자로 email select box값 추출하여 저장
				if (email == '_manual') { //selectbox value가 _manual이면
					//selectbox 태그를 input 태그로 변경
					$("#email_select").replaceWith(
					"<input type = 'text' id='input_email' placeholder='직접입력' style='font-size:10px;'>");
					//button태그를 #inputEmail뒤에 생성
					$("#inputEmail").append(
					"<button id='reset' type='button' onclick='check()'>✖</button>");
				}
			});
		});

		function check() {
			var i = document.getElementById('inputEmail');
			var j = document.getElementById('input_email');
			j.value = null;
			i.innerHTML = "<select id='email_select' name='email' style='font-size:10px;'>"
					+ "<option selected disabled>선택</option>"
					+ "<option value='naver.com'>naver.com</option>"
					+ "<option value='daum.net'>daum.net</option>"
					+ "<option value='gmail.com'>gmail.com</option>"
					+ "<option value='nate.com'>nate.com</option>"
					+ "<option value='hotmail.com'>hotmail.com</option>"
					+ "<option value='icloud.com'>icloud.com</option>"
					+ "<option value='outlook.com'>outlook.com</option>"
					+ "<option value='_manual'>직접입력</option></select>";
		};
	</script>

	<script>
		function update() {
			if (document.getElementById('email') == "") {
				alert("이메일을 입력해주세요.");
				return;
			}

			if (document.getElementById('user_zipcode') == "") {
				alert("우편번호를 입력해주세요.");
				return;
			}

			if (document.getElementById('user_address') == "") {
				alert("주소지를 입력해주세요.");
				return;
			}
			document.updateForm.submit();
		}
		

	</script>
</body>
</html>
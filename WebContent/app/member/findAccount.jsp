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
<title>내 방은 못말려 | We make your live liveable</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<style>

.col-12-small {
	width: 49% !important;
}

.col-12-xsmall {
	width: 70% !important;
}

#resetPw {
	font-size: 12px;
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

label {
	font-size: 12px !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: 500;
	letter-spacing: 0.25em;
}

#inputEmail{
    display: flex !important;
    flex-direction: row !important;
    align-items: center !important;
}

#input_email{
	font-size: 12px;
}
fieldset{
    color: gainsboro;
}

#one{
	font-size: 12px;
	margin: 2%;
	float: left;
    width: 46%;
    padding-right: 13%;
}

#two{
	font-size: 12px;
	margin: 2% 0;
	float: left;
    border-left: solid;
    width: 46%;
    padding-left: 13%;
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
					<header class="major" style="margin-bottom: 0px;">
						<h3 style="text-align: center; border-bottom: none;">Find ID / PW</h3>
					</header>
					
					<fieldset>
					<section id="one">
						<form method="post" action="${pageContext.request.contextPath }/user/JoinOk.me">
								<div class="col-12" style="text-align: center;">
									<h3 style="font-size: 14px">id</h3>
								</div>
							 <div class="row gtr-uniform">
								<!-- 아이디 찾기 -->
								<!-- 이름 -->
								<div class="col-12">
								<label style="margin-top: 5%;">NAME</label>
									<input type="text" name="user_name" id="user_name" placeholder="이름" style="font-size: 12px; width: 100%;">
								</div>
								
								<!-- 이메일 -->
								<div class="col-6 col-12-small">
								<label>EMAIL</label>
									<input type="text" name="user_email" id="user_email" placeholder="이메일" style="font-size: 12px; width: 100%">
								</div>
								<div id="email_seperator">@</div>
								<div class="col-6 col-12-small">
									<label>&nbsp;</label>
									<span id="inputEmail">
										<select id="email_select" name='email' style="font-size: 12px; width: 100%;">
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
								<!-- 전송 버튼 -->
								<div class="col-12">
									<ul class="actions stacked">
										<li><input type="button" value="send login link" id="sendEmail"
											class="button primary" onclick="" style="width: 100%; font-size: 12px;"></li>
									</ul>
								</div>
							</div>
						</form>
					</section>
							<!-- 비밀번호 찾기 -->
					<section id="two">
						<form method="post" action="${pageContext.request.contextPath }/user/JoinOk.me">
							<div class="row gtr-uniform">
								<div class="col-12" style="text-align: center;">
									<h3 style="font-size: 14px">password</h3>
								</div>
								<!-- 휴대폰번호 -->
								<div class="col-6 col-12-xsmall">
								<label>PHONE NUMBER</label>
									<input type="text" name="user_phone_no" id="user_phone_no"
										placeholder="휴대폰 번호(-제외)" class="phone" style="font-size: 12px; width: 230px;"/>
									<ul class="actions stacked">
										<li><input style="width: 120px;" type="button" value="send code"
											class="button primary" onclick=""></li>
									</ul>
								<label>VERIFICATION CODE</label>
									<input type="text" name="phone_no_check" id="phone_no_check"
										placeholder="인증번호 입력" class="phone" style="font-size: 12px; width: 230px;"/>
									<ul class="actions stacked">
										<li><input style="width: 120px;" type="button" value="confirm"
											class="button primary" onclick=""></li>
									</ul>
								</div>
								
								<!-- 비밀번호 -->
								<div class="col-12">
								<label>RESET PASSWORD</label>
									<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호 재설정" style="font-size: 12px; width: 350px;"/>
								</div>
								<div class="col-12">
								<label>CONFIRM PASSWORD</label>
									<input type="password" name="user_pw_check" id="user_pw_check" placeholder="비밀번호 확인" style="font-size: 12px; width: 350px;"/>
								</div>
								
								<!-- 완료 -->
								<div class="col-12">
									<ul class="actions">
										<li id="join" style="width: 100%;">
											<input type="button" value="reset password" id="resetPw" class="button primary large" onclick="" style="width: 350px;"/>
										</li>
									</ul>
								</div>
							</div>
						</form>
					</section>
					</fieldset>
					<div class="col-12" style="text-align: center;">
						<a href="${pageContext.request.contextPath }/app/member/login.jsp"><h3>back to login</h3></a>
					</div>
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
<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="signup.js"></script>
<script>
$(document).ready(function(){
	$('#email_select').change(function(){
	    var email = $('#email_select').val(); //id선택자로 email select box값 추출하여 저장
	    if(email == '_manual'){ //selectbox value가 _manual이면
	        $("#email_select").replaceWith("<input type = 'text' id='input_email' placeholder='직접입력'>");
	        //selectbox 태그를 input 태그로 변경
			$("#inputEmail").append("<button id='reset' type='button' onclick='check()'>✖</button>");
			flag = true;
	    }
	});
});
function check(){
	var i = document.getElementById('inputEmail');
	var j = document.getElementById('input_email');
	j.value=null;
	i.innerHTML = "<select id='email_select' name='email'>"+
	"<option selected disabled>선택</option>"+
	"<option value='naver.com'>naver.com</option>"+
	"<option value='daum.net'>daum.net</option>"+
	"<option value='gmail.com'>gmail.com</option>"+
	"<option value='nate.com'>nate.com</option>"+
	"<option value='hotmail.com'>hotmail.com</option>"+
	"<option value='icloud.com'>icloud.com</option>"+
	"<option value='outlook.com'>outlook.com</option>"+
	"<option value='_manual'>직접입력</option></select>";
	flag = false;
};
</script>
</body>
</html>
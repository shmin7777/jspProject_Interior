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
<title>마이페이지 | 배송지 등록</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/address.css"/>
<style>
form {
	margin-left: 15% !important;
	margin-right: 15% !important;
}
.keyword:foucs {
	outline:none !important;
}
.search_button{
	display: none !important;
}
.close_button{
	padding-left: 23% !important;
}
</style>
</head>
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


		<!-- Wrapper -->
		<div id="wrapper">

			<!-- Main -->
			<section id="main" class="main">

				<div class="inner">
					<header class="major">
						<h3>personal details</h3>
					</header>
				
					<form method="post" name="registForm" action="${pageContext.request.contextPath }/myPage/MyPageAddressRegistOk.mp">
						<h3 style="margin: 0;">location name</h3>
						<input type="text" name="location_name" id="location_name"
							class="location_name" value="" /> <br>
						<h3 style="margin: 0;">recipient</h3>
						<input type="text" name="recipient" id="recipient"
							class="recipient" value="" /> <br>
						<h3 style="margin: 0;">phone number</h3>
						<input type="text" name="user_phone_no" id="user_phone_no"
							class="user_phone_no" value="" /> <br>
						<h3 style="margin: 0;">zip code</h3>
						<div style="display: flex; justify-content: space-between;">
							<input type="text" name="user_zipcode" id="user_zipcode"
								class="postcodify_postcode5" value="" />
							<ul class="actions">
								<li><input type="button" id="postcodify_search_button"
									class="button primary" value="search">
								</li>
							</ul>
						</div>
						<h3 style="margin: 0;">address</h3>
						<input type="text" name="user_address" id="user_address"
							class="postcodify_address" value="" /> <br>
						<h3 style="margin: 0;">address detail</h3>
						<input type="text" name="user_address_detail"
							id="user_address_detail" class="postcodify_details" value="" />
						<br>
						<h3 style="margin: 0;">address etc</h3>
						<input type="text" name="user_address_etc"
							id="user_address_etc" class="postcodify_extra_info" value="" />
						<br>
						<div class="col-12" style="margin-top: 8%;">
							<ul class="actions"
								style="display: flex; justify-content: center;">
								<li><input type="button" value="add" class="primary"
									onclick="registSubmit()" /></li>
								<li><input type="button" value="cancel" class="primary"
									onclick="location.href='address.jsp'" /></li>
							</ul>
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

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp();}); </script>
	<script>
		function registSubmit(){
			var form = document.registForm;
			
			if(!form.location_name.value){
				alert("배송지 명을 입력해주세요.");
				return;
			}
			
			if(!form.recipient.value){
				alert("수령인을 입력해주세요.")
				return;
			}
			
			if(!form.user_phone_no.value){
				alert("휴대폰 번호를 입력해주세요.")
				return;
			}
			
			form.submit();
		}
	</script>
</body>
</html>
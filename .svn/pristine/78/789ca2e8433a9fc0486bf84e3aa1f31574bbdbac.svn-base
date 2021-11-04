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
<title>마이페이지 | 회원탈퇴</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="myPage.css" />
</head>
<style>
#revise {
	font-weight: bold;
	font-size: 12px !important;
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
	margin: auto !important;
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
	width: 9%;
}

.col-6 {
	margin: 0;
	width: 37.1%;
}

.delete {
	margin-left: 30% !important;
	margin-right: 30% !important;
}

.outText {
	text-align: left;
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
					<hr style="border: white;">
					<form method="post"
						action="${pageContext.request.contextPath}/user/UserDeleteAccountOk.me"
						name="deleteForm" class="delete">
						<p id="revise" style="text-align: left;">회원탈퇴 신청</p>
						<p style="text-align: left;">회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요.</p>
						<fieldset>
							<div class="outText">
								<h3>회원탈퇴 시 처리내용</h3>
								<ul>
									<li>내 방은 못말려 포인트는 소멸되며 환불되지 않습니다.</li>
									<li>내 방은 못말려 구매 정보가 삭제됩니다.</li>
									<li>소비자보호에 관한 법률 제6조에 의거,계약 또는 청약철회 등에 관한 기록은 5년, 대금결제 및
										재화등의 공급에 관한 기록은 5년, 소비자의 불만 또는 분쟁처리에 관한 기록은 3년 동안 보관됩니다. 동
										개인정보는 법률에 의한 보유 목적 외에 다른 목적으로는 이용되지 않습니다.</li>
								</ul>
								<h3>회원탈퇴 시 게시물 관리</h3>
								<p>회원탈퇴 후 내 방은 못말려 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해
									작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는
									경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다.</p>
								<br>
								<h3>회원탈퇴 후 재가입 규정</h3>
								<p>탈퇴 회원이 재가입하더라도 기존의 내 방은 못말려 포인트는 이미 소멸되었기 때문에 양도되지 않습니다.</p>
							</div>
						</fieldset>
						<div class="col-12" style="margin: 2% 0 0 4%;">
							<input type="checkbox" id="agree" name="term" class="terms"
								onclick="checkSelectAll()"> <label for="agree"><strong
								style="color: skyblue;">[필수]</strong>&nbsp;위 내용을 모두 확인하였습니다.</label>
						</div>
						<p style="text-align: left;">회원 탈퇴하려는 이유가 무엇인가요? (복수선택 가능)</p>
						<fieldset style="width: 100%;">
							<div class="col-12" style="margin: 2% 0 0 4%;">
								<input type="checkbox" id="use" name="term" class="terms"
									onclick="checkSelectAll()"> <label for="use">이용빈도
									낮음</label>
							</div>
							<div class="col-12" style="margin: 0 0 0 4%;">
								<input type="checkbox" id="item" name="term" class="terms"
									onclick="checkSelectAll()"> <label for="item">제품정보/상품
									부족</label>
							</div>
							<div class="col-12" style="margin: 0 0 0 4%;">
								<input type="checkbox" id="member" name="term" class="terms"
									onclick="checkSelectAll()"> <label for="member">회원특혜/쇼핑혜택
									부족</label>
							</div>
							<div class="col-12" style="margin: 0 0 0 4%;">
								<input type="checkbox" id="iden" name="term" class="terms"
									onclick="checkSelectAll()"> <label for="iden">개인정보보호</label>
							</div>
						</fieldset>
						<br>
						<fieldset>
							<div class="css-pxaa9m-NoticeDiv e1y2i5x62"
								style="text-align: left;">
								<h3 class="css-c01wai-NoticeTitle e1y2i5x61">개인정보보호에 대한 안내</h3>
								<p class="css-1y50flt-NoticeText e1y2i5x60">
									고객님께 개인정보보호에 대한 안내드립니다.<br>내 방은 못말려에서는 고객 여러분의 개인 정보를
									개인정보보호 방침에 따라 안전하게 관리하고 있습니다. <br>또한 <b>최근 언론을 통해 보도된
										개인정보유출 사고는 내 방은 못말려와 관련이 없음을 안내해 드리며, </b>고객님께서 안전하게 이용하실 수 있도록
									보안에 더욱 힘쓰겠습니다. 감사합니다.
								</p>
							</div>
						</fieldset>
						<div class="col-6" style="margin: 5% auto;">
							<ul class="actions">
								<li><input type="button" class="button primary"
									value="탈퇴신청" onclick="formSubmit()"></li>
								<li><a
									href="${pageContext.request.contextPath}/user/UserProfileOk.me"
									class="button">취소하기</a></li>
							</ul>
						</div>
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
	<script>
		function formSubmit() {
			var form = document.deleteForm;
			var check = false;

			if ($("#agree").is(":checked")) {
				check = true;
			}

			if (!check) {
				alert("필수 동의 항목을 체크해주세요.");
				return;
			}

			form.submit();
		}
	</script>
</body>
</html>
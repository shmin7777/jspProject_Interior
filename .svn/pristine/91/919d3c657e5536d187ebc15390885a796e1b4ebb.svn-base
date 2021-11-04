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
<title>마이페이지 | 구매내역</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>

<style>
li {
	list-style: none;
}

tr{
	text-align: left;
}
</style>
<c:set var="nowPage" value="${requestScope.nowPage}"/>
<c:set var="startPage" value="${requestScope.startPage}"/>
<c:set var="endPage" value="${requestScope.endPage }"/>
<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
<c:set var="realEndPage" value="${requestScope.realEndPage}"/>
<c:set var="list" value="${requestScope.pList}"></c:set>
<c:set var="deliveryStat" value="${deliveryStat}"></c:set>
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
			<div id="inquiry_container">
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
				<div id="div_table">
					<table>
						<caption style="text-align: left; margin-bottom: 3%;"></caption>
						<thead>
							<tr>
								<th class="th-no1">주문번호</th>
								<th class="th-title1">상품명</th>
								<th class="th-writer1">주문처리상태</th>
								<th class="th-date1">구매일자</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${list != null and fn:length(list) > 0}">
								<c:forEach var="purchase" items="${list}">
									<tr align="center" valign="middle"
										onmouseover="this.style.backgroundColor='#e0f7fa'"
										onmouseout="this.style.backgroundColor=''">
										<td height="24px">${purchase.getPay_no()}</td>
										<td>${purchase.getProduct_name()}</td>
										<td>${deliveryStat}</td>
										<td>${purchase.getPay_date()}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr height="50px" align="center">
									<td colspan="5">주문건이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					<!--  실험1끝-->

					<table>
						<tr align="center" valign="middle" style="text-align: center;">
							<td><c:if test="${nowPage > 1}">
									<a
										href="${pageContext.request.contextPath}/myPage/MyPagePurchaseListOk.mp?page=${nowPage-1}">&lt;</a>
								</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq nowPage}">
											<c:out value="[${i}]" />&nbsp;
									</c:when>
										<c:otherwise>
											<a
												href="${pageContext.request.contextPath}/myPage/MyPagePurchaseListOk.mp?page=${i}"><c:out
													value="${i}" /></a>
										</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${nowPage != realEndPage}">
									<a
										href="${pageContext.request.contextPath}/myPage/MyPagePurchaseListOk.mp?page=${nowPage+1}">&gt;</a>
								</c:if></td>
						</tr>
					</table>
				</div>
				<!-- div_table 끝 -->
				<!-- search_container 시작 -->
				<div id="search_container"
					style="margin: 0 auto; width: 400px; height: 40px;">
					<ul style="margin-left: 14%;">
						<li style="float: left;"><select id="search_date"
							name="search_date">
								<option value="week">일주일</option>
								<option value="month">한달</option>
								<option value="month3">세달</option>
								<option value="all">전체</option>
						</select></li>
						<li style="float: left;"><input id="search" name="search"
							class="inputTypeText" placeholder="" value="" type="text"></li>
						<li style="float: left;"><a href="#" class="" onclick=""><i
								class="fa fa-search" aria-hidden="true"></i></a></li>
					</ul>
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

</body>
</html>
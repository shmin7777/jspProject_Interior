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
<script>
	function okmen(cm){
		if(cm===0){
			document.write("상담대기중");
		}else if(cm===1){
			document.write("상담완료");
		}
	}
</script>
<title>마이페이지 | 상담내역</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
#inqSelect {
	width: auto;
	font-size: 12px;
}

li {
	list-style: none;
}

/* #wrapper{
		width:70%;
		margin:auto;
	} */
</style>
<body class="is-preload">
	<c:set var="nowPage" value="${requestScope.nowPage}"/>
	<c:set var="startPage" value="${requestScope.startPage}"/>
	<c:set var="endPage" value="${requestScope.endPage }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
	<c:set var="realEndPage" value="${requestScope.realEndPage}"/>
	<c:set var="list" value="${consultList}" />
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
					<select id="inqSelect" name="select"
						onchange="if(this.value) location.href=(this.value)">
						<option selected disabled>선택</option>
						<option
							value="${pageContext.request.contextPath}/myPage/MyPageInquireListOk.mp"
							id="inq">문의내역&nbsp;&nbsp;</option>
						<option
							value="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp"
							id="cos">상담내역&nbsp;&nbsp;</option>
					</select>

					<table>
						<caption style="text-align: left; margin-bottom: 3%;"></caption>
						<thead>
							<tr style="text-align: left;">
								<th class="th-writer1">작성자</th>
								<th class="th-title1">패키지유형</th>
								<th class="th-title1">평수</th>
								<th class="th-title1">방개수</th>
								<th class="th-title1">세부사항</th>
								<th class="th-no1">예상금액</th>
								<th class="th-title1">상담상태</th>
								<th class="th-date1">날짜</th>
							</tr>
						</thead>
						<tbody>

							<!-- private int cns_no;
	private String user_id;
	private String cns_total_price;
	private String cns_date;
	private String cns_roomType;
	private int cns_square;
	private int cns_roomCnt;
	private String cns_themeSelect;
	private int cns_status; -->


							<c:choose>
								<c:when test="${list != null and fn:length(list) > 0}">
									<c:forEach var="consult" items="${list}">
										<tr>
											<td>${consult.getUser_id()}</td>
											<td>${consult.getCns_roomType()}</td>
											<td>${consult.getCns_square()}</td>
											<td>${consult.getCns_roomCnt()}</td>
											<td>${consult.getCns_themeSelect()}</td>
											<td>${consult.getCns_total_price()}</td>
											<td id="status"><input value="${consult.getCns_status()}" id="cns_status" type="hidden">들어갈 내용</td>
											<td>${consult.getCns_date()}</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="7" align="center">상담내역이 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>

						</tbody>
					</table>
					<table>
						<tr align="center" valign="middle">
							<td><c:if test="${nowPage > 1}">
									<a
										href="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp?page=${nowPage-1}">&lt;</a>
								</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq nowPage}">
											<c:out value="[${i}]" />&nbsp;
									</c:when>
										<c:otherwise>
											<a
												href="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp?page=${i}"><c:out
													value="${i}" /></a>
										</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${nowPage != realEndPage}">
									<a
										href="${pageContext.request.contextPath}/myPage/MyPageConsultListOk.mp?page=${nowPage+1}">&gt;</a>
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
	<script>
	var status = document.getElementById("status");
	$(function(){
		if($("#cns_status").val() == 0){
			$("#status").html("승인 대기");
		}else if($("#cns_status").val() == 1){
			$("#status").html("승인 완료");
		}
		console.log($("#cns_status").val());
		console.log($("#stauts").html());
	});
	
	</script>
</body>
</html>
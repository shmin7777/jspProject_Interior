<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>마이페이지 | 배송지관리</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/myPage.css"/>
</head>
<style>
	#inqSelect{
		width: auto;
		font-size: 12px;
	}
</style>
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->
<body class="is-preload">
	
	<c:set var="addressList" value="${addressList}"/>
	
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
					<a href="${pageContext.request.contextPath}/user/UserProfileOk.me">회원정보</a><a href="${pageContext.request.contextPath}/myPage/purchaseHistory.jsp">구매내역</a><a href="${pageContext.request.contextPath}/myPage/cart.jsp">장바구니</a><a href="${pageContext.request.contextPath}/myPage/myInquire.jsp">게시물 관리</a><a href="javascript:void(0);">배송지 관리</a>
					<!-- inquiry_menu 끝 -->
				</div>
				<!-- div_table 시작 -->
				<div id="div_table">
				
					<table>
						<caption style="text-align: left; margin-bottom: 3%;"></caption>
						<thead>
							<tr>
								<th class="th-no1">배송지명</th>
								<th class="th-title1">수령인</th>
								<th class="th-writer1">휴대폰번호</th>
								<th class="th-date1">주소</th>
							</tr>
						</thead>
						<tbody>
						
	<!-- LOCATION_NAME VARCHAR(2000),
	RECIPIENT VARCHAR(2000),
	USER_PHONE_NO VARCHAR(2000),
	USER_ZIPCODE VARCHAR2(200),
	USER_ADDRESS VARCHAR2(1000),
  	USER_ADDRESS_DETAIL VARCHAR2(1000), -->
						
							<c:choose>
								<c:when test="${addressList != null and fn:length(addressList) > 0}">
									<c:forEach var="address" items="${addressList}">
										<tr>
											<td>${address.getLocation_name()}</td>
											<td>${address.getRecipient()}</td>
											<td>${address.getUser_phone_no()}</td>
											<td>${address.getUser_address()}</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>									
									<tr>
										<td colspan="5" align="center">등록된 배송지가 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<table style="font-size: 1.3rem">
						<tr align="center" valign="middle">
							<td></td>
						</tr>
					</table>
					<div class="insertDeleteBtn">
						<a id="write" href="${pageContext.request.contextPath}/app/myPage/addressRegister.jsp" class="button">배송지 등록</a>
						<input type="button" name="delete" id="delete" value="배송지 삭제">
					</div>
				</div>
				</div>
				<!-- div_table 끝 -->
			</div>
			<!-- inquiry_container 끝 -->
		</div>
		<!-- Wrapper 끝 -->




		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>

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
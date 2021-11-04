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
		<title>내 방은 못말려 | 이벤트 상세보기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
	<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->
	
<c:set var="event" value="${eventView}"/>
	
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
										<h3><span style="font-weight:bord;">${event.getEvent_title()}</span></h3>
										<h3>${event.getEvent_term()}</h3>
							<ul class="actions"
							style="display: flex; justify-content: flex-end; font-size: 10px;">
							<li><input type="button" value="list" class="primary" onclick="location.href='${pageContext.request.contextPath}/event/EventList.ev'"></li>
							</ul>
									</header>
									<span class="image main"><img src="${pageContext.request.contextPath}/eventimages/${event.getEvent_content()}" alt="" /></span>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	

	</body>
</html>
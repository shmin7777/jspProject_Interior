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
<title>내 방은 못말려 | 이벤트</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>

a {
	border-style: none;
}

.t1-wrapper{
	margin: auto;
	width: 60%;
	padding-bottom: 5%;
	padding-top: 1%;
}
.t1	{
	display: inline-block;
	width:40%
}
.eimage{
	width: 97%;
}

a {
	color: inherit !important;
	text-decoration: none !important;
	border-bottom: none !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: bold;
	letter-spacing: 0.25em;
	/* text-transform: uppercase; */
}

#event-title {
	font-size: 14px !important;
	text-align: center !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: bold;
	letter-spacing: 0.25em;
	/* text-transform: uppercase; */
}

#finished-event {
	font-size: 14px !important;
	text-align: center !important;
	font-weight: 500;
	line-height: 1.5;
	margin: 0 0 1em 0;
	font-weight: bold;
	letter-spacing: 0.25em;
	text-decoration-line: line-through;"
}

</style>
</head>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->
	
	<c:set var="totalCnt" value="${requestScope.totalCnt}"/>
	<c:set var="realEndPage" value="${requestScope.realEndPage}"/>
	<c:set var="startPage" value="${requestScope.startPage}"/>
	<c:set var="endPage" value="${requestScope.endPage}"/>
	<c:set var="nowPage" value="${requestScope.nowPage}"/>
	<c:set var="eventList" value="${requestScope.eventList}"/>
	
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
				<div style="text-align: center;">
					<div>
						<header>
							<h3 style="padding-bottom: 30px;">Event</h3>
							
						</header>
					</div>
					<div class="t1-wrapper">
						<div class="t1">
							<c:choose>
								<c:when test="${eventList != null and fn:length(eventList) > 0}">
									<c:forEach var="event" items="${eventList}">
										<a href="${pageContext.request.contextPath}/event/EventViewOk.ev?event_no=${event.getEvent_no()}">
											<span>
												<img class="image" src="${pageContext.request.contextPath}/eventimages/${event.getEvent_image()}" width="300" />
											</span>
										</a>
										<div style="bottom: 10px; left: 19px; font-size: 13px;">
											<p id="event-title">${event.getEvent_title()}</p>
										</div>
									</c:forEach>
								</c:when>
									<c:otherwise>
										<tr>
											<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
										</tr>
									</c:otherwise>
							</c:choose>			
						</div>
					</div>
						
		
					
					
					
				 		<table>
						<tr align="center" valign="middle">
							<td>
							<c:if test="${nowPage > 1}">
								<a href="${pageContext.request.contextPath}/event/EventList.ev?page=${nowPage-1}">&lt;</a>
							</c:if>
							
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i eq nowPage}">
										<c:out value="[${i}]"/>&nbsp;
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/event/EventList.ev?page=${i}"><c:out value="${i}"/></a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test="${nowPage != realEndPage}">
								<a href="${pageContext.request.contextPath}/event/EventList.ev?page=${nowPage+1}">&gt;</a>
							</c:if>
							</td>
						</tr>
					</table>
 				
			
			
			
			</div>
			
<!-- <section id="main" class="main">
	<div class="inner">
		<header class="major">
			<h1>Generic</h1>
		</header>
	</div>
</section> -->

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

</body>
</html>
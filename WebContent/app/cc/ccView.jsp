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
<title>상담 | 시공후기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="myPage.css"/>
</head>
<style>
img {
	width: 240px;
	border-radius: 0.5em;
}
.name{
   font-weight: 600;
}
.box {
    border: none !important;
    margin-top: -2% !important;
}
.top{
	margin-left: 6% !important;
	margin-right: 6% !important;
}
</style>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->

	<c:set var="cc" value="${cc}" />

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
			<section id="main" class="main">
                  <div class="inner">
                     <header class="major">
                        <h2>CONSTRUCTION EXAMPLE</h2>
                     </header>
                     <div class="top">
                        <h3>제목 :  ${cc.getCc_name()}</h3>
                        <div class="name" style="font-size: 14px;">비용 :  ${cc.getCc_cost()}</div>
						<div style="font-size: 14px;">시공기간 :  ${cc.getCc_term()}</div>
						<ul class="actions"
							style="display: flex; justify-content: flex-end; font-size: 10px;">
							<li><input type="button" value="list" class="primary" onclick="location.href='${pageContext.request.contextPath}/cc/ccList.cc'"></li>
						</ul>
						
					</div>
                        <!-- 클래스명은 변경하면 안 됨 -->
                        <div class="col-6" style="float: left; width: 53%; padding-left: 6%;">
                        	<img src="${pageContext.request.contextPath}/ccImages/${cc.getCc_main_image()}" style="width: 85%">
                        	<img src="${pageContext.request.contextPath}/ccImages/${cc.getCc_steel1()}" style="width: 85%; visibility: hidden;">
                        	<img src="${pageContext.request.contextPath}/ccImages/${cc.getCc_steel2()}" style="width: 85%; visibility: hidden;">
                        	<img src="${pageContext.request.contextPath}/ccImages/${cc.getCc_steel3()}" style="width: 85%">
                        	
                        </div>
                        <div class="box">
                        	<fieldset style="width: 43%; padding-left: 2%;">
	                           <p class="content" style="font-size: 13px !important;">${cc.getCc_content()}</p>
                           </fieldset>
                        </div>
                  </div>
            </section>
         </div>
     

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
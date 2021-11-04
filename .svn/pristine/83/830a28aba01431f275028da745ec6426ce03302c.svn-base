<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
	<style>
	body {
	background-image: url(${pageContext.request.contextPath}/images/receipt.png);
	}
</style>
-->
<html style="background: white;">
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<style>
	img{
		width: 250px;
	}
	span{
		color: skyblue;
	}
	#popUp{
		text-align: center;
	}
	table{
		width: 70%;
		margin: auto;
	}
	tr{
		font-size: 20px;
	}
</style>
<body class="is-preload">
<%
request.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	
	int price = Integer.parseInt(request.getParameter("price").replaceAll("\\,", ""));
	%>

<!-- Page Wrapper -->
	<div id="page-wrapper" style="padding-top: 5%;">	
		<div id="popUp">
			<div style="font-weight: 1000; font-size: 32px;">결제가 <span>완료</span>되었습니다!</div>
			<img alt="결제 완료" src="${pageContext.request.contextPath}/images/complete.png">
			<table>
				<tr>
					<th style="text-align: right; font-weight: 1000;">가격 : </th>
					<th><%=price %>원</th>
				</tr>
				<tr>
					<th style="text-align: right; font-weight: 1000;">결제수단 : </th>
					<th>핸드폰 결제</th>
				</tr>
			</table><br>
		<div>창은 3초 후에 닫힙니다!!</div>
		</div>
		<!-- Wrapper -->
		<div id="wrapper">


		</div>


	</div>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script>
		setTimeout(function(){
			opener.payment.submit();
			window.close()
		}, 3000);
	</script>
</body>
</html>
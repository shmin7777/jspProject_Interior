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
<title>스토어 | 소품</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../assets/css/main.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style>
.t2-wrapper {
	display: flex;
	margin: auto;
	text-align: center;
	width: 100%;
	margin-top: 30px;
	flex-wrap: wrap;
	padding-left: 14%;
	padding-right: 14%;
}

.t2 {
	margin: auto;
}

/* swiper */
.swiper-container {
	width: 640px;
	height: 420px;
	border: 5px solid silver;
	border-radius: 7px;
	/* box-shadow:0 0 20px #ccc inset; */
}

.swiper-slide {
	text-align: center;
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	/* box-shadow:0 0 5px #555; */
	
}

.image {
	width: 242px;
	height: 276px;
}

.menuTable {
	width: 78%;
	margin: auto;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

.navbar {
	overflow: hidden;
	background-color: white;
	font-family: Arial, Helvetica, sans-serif;
	margin-left: 19%;
	margin-top: 4%;
}

}
.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: white;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	width: 8%;
	left: 21%;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content .header {
	background: white;
	padding: 16px;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

/* Create three equal columns that floats next to each other */
.column {
	float: left;
	width: 100%;
	padding: 10px;
	background-color: #ccc;
	height: 184px;
}

.column a {
	float: none;
	color: white;
	padding: 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.column a:hover {
	background-color: white;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

.row>* {
	padding: 0 !important;
}
/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		height: auto;
	}
}

.bigger {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.1s ease-in-out; /* 서서히 확대 */
}

.bigger:hover {
	transform: scale(1.02);
	-webkit-transform: scale(1.02);
	-moz-transform: scale(1.02);
	-ms-transform: scale(1.02);
	-o-transform: scale(1.02);
}

.row {
	display: flex;
	box-sizing: border-box;
	align-items: stretch;
	flex-wrap: nowrap;
	padding: 0 !important;
}

.t2 {
	margin-bottom: 5% !important;
	margin-top: 0 !important;
}
</style>
</head>

<body class="is-preload">
	<c:set var="list" value="${boardList}"></c:set>
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




	
		<div style="border:"></div>



		<div style="text-align: left; margin-left: 15%;">
			<header>
				<h3 style="margin-top: 8%;">Construction example</h3>
				<!-- <h3 style="margin-left: 72%">
					<a>더보기</a>
				</h3> -->
			</header>
		</div>
		<div style="text-align: center;">
			<div class="t2-wrapper">
				<c:forEach var="board" items="${list}">
					<div class="t2">
						<div class="bigger">
							<a
								href="${pageContext.request.contextPath }/cc/ccViewOk.cc?cc_no=${board.getCc_no()}">
								<span><img class="image"
									src="${pageContext.request.contextPath }/ccImages/${board.getCc_main_image()}" /></span>
							</a>
							<div class="exBox" style="width: 200px; margin: auto;">
								<a
									href="${pageContext.request.contextPath }/cc/ccViewOk.cc?cc_no=${board.getCc_no()}">${board.getCc_name()}</a>
							</div>
						</div>
					</div>
				</c:forEach>
				
			</div>


		
		</div>





		<table style="font-size: 1.3rem; margin: 65px 0 0em 0">
			<tr align="center" valign="middle">
				<td><c:if test="${nowPage > 1}">
						<a
							href="${pageContext.request.contextPath}/cc/ccList.cc?page=${nowPage-1}">&lt;</a>
					</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${i eq nowPage}">
								<c:out value="[${i}]" />&nbsp;
															</c:when>
							<c:otherwise>
								<a
									href="${pageContext.request.contextPath}/cc/ccList.cc?page=${i}"><c:out
										value="${i}" /></a>
							</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${nowPage != realEndPage}">
						<a
							href="${pageContext.request.contextPath}/cc/ccList.cc?page=${nowPage+1}">&gt;</a>
					</c:if></td>
			</tr>
		</table>




	

	</div>

	<!-- Footer -->
	<footer id="footer">
		<jsp:include page="/fixed/footer.jsp"></jsp:include>
	</footer>



	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/main.js"></script>

</body>
<script>
	new Swiper('.swiper-container', {
		pagination : { // 페이징 설정
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		navigation : { // 네비게이션 설정
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});

	$(document)
			.ready(
					function() {
						var scaleCurve = mojs.easing
								.path('M0,100 L25,99.9999983 C26.2328835,75.0708847 19.7847843,0 100,0');
						var el = document.querySelector('.button'),
						// mo.js timeline obj
						timeline = new mojs.Timeline(),

						// tweens for the animation:

						// burst animation
						tween1 = new mojs.Burst({
							parent : el,
							radius : {
								0 : 100
							},
							angle : {
								0 : 45
							},
							y : -10,
							count : 10,
							radius : 100,
							children : {
								shape : 'circle',
								radius : 30,
								fill : [ 'red', 'white' ],
								strokeWidth : 15,
								duration : 500,
							}
						});

						tween2 = new mojs.Tween(
								{
									duration : 900,
									onUpdate : function(progress) {
										var scaleProgress = scaleCurve(progress);
										el.style.WebkitTransform = el.style.transform = 'scale3d('
												+ scaleProgress
												+ ','
												+ scaleProgress + ',1)';
									}
								});
						tween3 = new mojs.Burst({
							parent : el,
							radius : {
								0 : 100
							},
							angle : {
								0 : -45
							},
							y : -10,
							count : 10,
							radius : 125,
							children : {
								shape : 'circle',
								radius : 30,
								fill : [ 'white', 'red' ],
								strokeWidth : 15,
								duration : 400,
							}
						});

						// add tweens to timeline:
						timeline.add(tween1, tween2, tween3);

						// when clicking the button start the timeline/animation:
						$(".button").click(function() {
							if ($(this).hasClass('active')) {
								$(this).removeClass('active');
							} else {
								timeline.play();
								$(this).addClass('active');
							}
						});

					});
</script>
</html>
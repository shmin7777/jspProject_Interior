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
<title>스토어 | 베스트상품</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
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
	padding-left: 11%;
	padding-right: 11%;
}

.t2 {
	 margin:2%;

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
	margin-top: 4%;
}

.swiper-slide img {
	/* box-shadow:0 0 5px #555; */
	
}

.image {
	width: 210px;
    height: 244px;
}
</style>
</head>
<body class="is-preload">
	<c:set var="StoreBest" value="${StoreBest}"></c:set>
	<jsp:useBean id="s_dao" class="com.team.app.store.dao.StoreDAO"></jsp:useBean>
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

		<!-- 클래스명은 변경하면 안 됨 -->
		<div class="swiper-container" style="width: 100%; height:600px;">
			<div class="swiper-wrapper">
				
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/images/photo5.jpg"
						width="100%;">
				</div>
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/images/photo6.jpg"
						width="100%;">
				</div>
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/images/photo7.jpg"
						width="100%;">
				</div>
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath}/images/photo8.jpg"
						width="100%;">
				</div>
				

				<div class="swiper-slide" style="font-size: 50pt;">- 끝 -</div>
			</div>

			<!-- 네비게이션 버튼 -->
			<div class="swiper-button-next"></div>
			<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div>
			<!-- 이전 버튼 -->

			<!-- 페이징 -->
			<div class="swiper-pagination"></div>
		</div>

		<div style="text-align: left; margin-left: 17%;">
			<div>
				<header>
					<h3 style="margin-top: 8%;">Best Seller</h3>

				</header>
			</div>
		</div>


		<div style="text-align: center;">
				<div class="t2-wrapper">
			<c:forEach var="best" items="${StoreBest }">
					<div class="t2">
						<div class="bigger">
							<a
								href="${pageContext.request.contextPath }/store/productView.st?product_no=${s_dao.getBestforName(best.getProduct_name()).getProduct_no() }">
								<span><img class="image"
									src="${pageContext.request.contextPath }/storeImages/${s_dao.getBestforName(best.getProduct_name()).getProduct_img() }"/></span>
							</a>
						<div class="exBox" style="width: 200px; margin: auto;">
							<a
								href="${pageContext.request.contextPath }/store/productView.st?product_no=${s_dao.getBestforName(best.getProduct_name()).getProduct_no() }">${best.getProduct_name() }
							</a>
						</div>
						</div>

					</div>

			</c:forEach>
				</div>

		</div>

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
</script>
</html>
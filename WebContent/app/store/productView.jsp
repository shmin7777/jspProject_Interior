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
<title>주문/결제 | 내 방은 못말려 스토어</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
.productName {
	font-size: 1.7em;
}

.productDC {
	font-size: 1.8em;
}

.productPrice {
	font-size: 2.5em;
	font-weight: border;
}

.totalPrice {
	margin-top: 4%;
	margin-right: 13%;
	font-size: 1.0em;
	font-weight: 600;
	text-align: right;
}

.cnt1 {
	display: inline;
	flex-direction: row;
	align-items: center;
	width: 60%;
}

.cnt2 {
	/* margin-left: 50%; */
	display: inline;
	flex-direction: row;
	align-items: center;
	width: 35%;
}

.buttonFont {
	font-size: 1.3em;
	font-weight: bolder;
}

.inner2 {
	margin: 0 auto;
	max-width: calc(100% - 4em);
	width: 60em;
}

.table-wrapper {
	margin: 0 auto;
	max-width: calc(100% - 4em);
	width: 60em;
}

/* 사진 관련 스타일 */
.conEx1 {
	width: 80%;
	display: block;
	border-radius: 0.5em;
	height: 350px;
	max-width: 550px;
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.1s ease-in-out; /* 서서히 확대 */
}

.conEx2 {
	width: 90%;
	display: block;
	border-radius: 0.5em;
	height: 350px;
	max-width: 550px;
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.1s ease-in-out; /* 서서히 확대 */
}

#con {
	width: auto !important;
}

#con2 {
	width: -webkit-fill-available;
}

.swiper-slide {
	text-align: -webkit-center;
}

.conEx:hover {
	transform: scale(1.02);
	-webkit-transform: scale(1.02);
	-moz-transform: scale(1.02);
	-ms-transform: scale(1.02);
	-o-transform: scale(1.02);
}

/* 카테고리 */
.category {
	text-align: center;
	font-weight: 600;
	font-size: large;
}

/* 리뷰 */
.reviewTD {
	width: 30%;
	height: 100px;
}

.innertag {
	margin-left: 10%;
	margin-right: 10%;
}

.swiper-container {
	height: 180px;
	border: none;
	border-radius: 7px;
	box-shadow: none;
}

.swiper-slide {
	text-align: center;
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	box-shadow: 0 0 5px #555;
	max-width: 100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}
</style>
</head>
<body class="is-preload">
	<c:set var="stDetail" value="${StDetail}"></c:set>
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->
	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
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
				<form method="post" name="frm">
					<div class="inner">
						<div class="row">
							<div class="col-6 col-12-small">
								<img
									src="${pageContext.request.contextPath}/storeImages/${stDetail.getProduct_img()}"
									class="bestSeller" style="width: 95%">
							</div>


							<div class="col-6 col-12-small">
								<span class="productName">${stDetail.getProduct_name() }</span><br>
								<span class="productPrice">${stDetail.getProduct_price() }원</span>
								<br> <input type="button" value="-"
									onClick="amountMinus('${stDetail.getProduct_price() }');">
								<input type="text" name="count" id="count" value="1"
									style="display: inline; width: 30%; text-align: center;">
								<input type="button" value="+"
									onClick="amountPlus('${stDetail.getProduct_price() }');">

								<input type="hidden" value="${stDetail.getProduct_no() }" name="product_no">
								
								<div class="totalPrice">
									<span>주문금액</span> <span style="font-size: 3em;" id="price">${stDetail.getProduct_price() }원</span>
								</div>
								<br> <input type="button" class="button"
									style="width: 43.5%; height: 16%; padding: 2%;font-size: 23px;" value="장바구니" onclick="inCart();"> 
									<input type="button" class="button primary"
									style="width: 43.5%; height: 16%; padding: 2%;font-size: 23px;" value="바로구매" onclick="goPay();"> 
								
							</div>

						</div>
					</div>
				</form>
			</section>
			<br>
				
		
								
				
			<!-- 소메뉴 1.상품 정보 2.관련상품 3.리뷰 4.상품문의 -->

			<div class="table-wrapper"
				style="border-style: none; padding-top: inherit; padding-bottom: inherit;">
				<table>
					<thead>
						<tr>
							<th class="category"><a href="#productA">상품정보</a></th>
							<th class="category"><a href="#productB">관련상품</a></th>
							<th class="category"><a href="#productC">리뷰</a></th>
							<th class="category"><a
								href="${pageContext.request.contextPath}/app/customerService/cs_write.jsp">상품문의</a></th>
							<!-- (글쓰기 문의하기로 이동) -->
						</tr>
					</thead>
				</table>
			</div>



			<!-- 상품 상세정보 -->
			<div id="productA">
				<section id="main" class="main">
					<div class="inner2">
						<div class="inner">
							<header class="major">
								<h1>상품정보</h1>
							</header>

							<!-- 상품 사진 슬라이드 -->
							<div class="inner spotlight alt style1" id="con">
								<div class="swiper-container1" id="con2">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img
												src="${pageContext.request.contextPath}/storeImages/${stDetail.getProduct_steel1() }"
												class="conEx1">
										</div>
										<div class="swiper-slide">
											<img
												src="${pageContext.request.contextPath}/storeImages/${stDetail.getProduct_steel2() }"
												class="conEx1">
										</div>
										<div class="swiper-slide">
											<img
												src="${pageContext.request.contextPath}/storeImages/${stDetail.getProduct_steel3() }"
												class="conEx1">
										</div>
									</div>
									<!-- 네비게이션 -->
									<div class="swiper-button-next1"></div>
									<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
									<div class="swiper-button-prev1"></div>
									<!-- 이전 버튼 -->
									<br>
									<!-- 페이징 -->
									<div class="swiper-pagination1" style="text-align: center;"></div>
								</div>
							</div>


							<!-- 상품 설명 들어 갈 자리 -->
							<p>${stDetail.getProduct_info() }</p>

							<br>
						</div>

					</div>
				</section>
			</div>
			<!-- 상품 상세 -->


			<!-- 관련상품 -->
			<div id="productB">
				<section id="main" class="main">
					<!-- <div class="inner2"> -->
					<div class="innertag">
						<header class="major">
							<h1>관련상품</h1>
						</header>

						<!-- 상품 사진 슬라이드 -->
						<div class="inner spotlight alt style1" id="con">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img src="http://ktsmemo.cdn3.cafe24.com/p/0446.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0123.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://ktsmemo.cdn3.cafe24.com/p/0460.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://ktsmemo.cdn3.cafe24.com/p/0681.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0771.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0014.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://ktsmemo.cdn3.cafe24.com/p/0700.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://oldmidi.cdn3.cafe24.com/p/0362.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://oldmidi.cdn3.cafe24.com/p/0537.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://oldmidi.cdn3.cafe24.com/p/0010.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0630.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0417.jpg">
									</div>
									<div class="swiper-slide">
										<img src="https://ktsmemo.cafe24.com/p/0272.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://oldmidi.cdn3.cafe24.com/p/0581.jpg">
									</div>
									<div class="swiper-slide">
										<img src="http://ktsmemo.cdn3.cafe24.com/p/0009.jpg">
									</div>
								</div>
								<br>
								<!-- 페이징 -->
								<div class="swiper-pagination"></div>
							</div>

						</div>
					</div>
					<!-- 	</div> -->
				</section>
			</div>
			<!-- 관련상품 -->
			<br>






			<!-- 리뷰 -->
			<div id="productC">
				<section id="main" class="main">
						<div style="width: 70%; margin: auto;">
							<header class="major" style="text-align: left;">
								<h2>댓글</h2>
								<p>여러분의 소중한 댓글을 작성해주세요.</p>
							</header>
							<form method="post" action="#" class="combined" style="width: auto;">
								<select name="product_star" id="product_star">
									<option value="1">★</option>
									<option value="2">★★</option>
									<option value="3">★★★</option>
									<option value="4">★★★★</option>
									<option value="5">★★★★★</option>
								</select>
								<textarea name="content" id="content"
									placeholder="비속어를 사용하지 말아주세요." class="invert" rows="5" cols="10"
									style="border-radius: 0; resize: none;"></textarea>
								<input id="register" type="button" class="primary" value="등록"
									onclick="comment()" />
							</form>
							<form id="replies" class="combined" style="flex-direction: column; margin: 0; display: contents;">
							</form>
						</div>

					<div class="inner2">
						<div class="inner">
							<header class="major">
								<h1>리뷰</h1>
							</header>
							<table>
								<tr>
									<td>★★★★★</td>
									<td>vannykim</td>
									<td>2021-09-24</td>
								</tr>
								<tr>
									<td>첨부파일<!-- <img src="${pageContext.request.contextPath}/images/review1.jpeg" class="bestSeller"
								style="width: 95%"> --></td>
									<td class="reviewTD">너무 맘에 쏙 들어요.!</td>
								</tr>

							</table>
						</div>
					</div>
				</section>
			</div>
			<!-- 리뷰 -->








			<!-- Footer -->
			<footer id="footer">
				<jsp:include page="/fixed/footer.jsp"></jsp:include>
			</footer>

		</div>
	</div>


</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
	new Swiper('.swiper-container1', {

		slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 1000, // 슬라이드간 간격
		slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

		// 그룹수가 맞지 않을 경우 빈칸으로 메우기

		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,

		loop : true, // 무한 반복

		pagination : { // 페이징
			el : '.swiper-pagination1',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		autoplay : { // 자동 슬라이드 설정 , 비 활성화 시 false
			delay : 2000, // 시간 설정
			disableOnInteraction : false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
		},
		navigation : { // 네비게이션
			nextEl : '.swiper-button-next1', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev1', // 이번 버튼 클래스명
		},
	});

	new Swiper('.swiper-container', {

		slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 30, // 슬라이드간 간격
		slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,

		loop : true, // 무한 반복

		pagination : { // 페이징
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		navigation : { // 네비게이션
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});
</script>
<script>
	function amountPlus(a) //   주문수량을 1 증가 시킴
	{
		var target = document.querySelector('#price');
		obj = document.frm.count;
		obj.value = parseInt(obj.value) + 1;
		target.innerHTML = obj.value * a + '원';
	}

	function amountMinus(a) //   주문수량을 1 감소 시킴
	{
		var target = document.querySelector('#price');
		obj = document.frm.count;
		if (parseInt(obj.value) > 1) {
			obj.value = parseInt(obj.value) - 1;
			target.innerHTML = obj.value * a + '원';
		} else {
			alert('더이상 줄일수가 없습니다');
			return;
		}
	}
	
	
	
	
	
	 $(document).ready(function(){getList();});
     
     var product_no = "${stDetail.getProduct_no()}";
     var pageContext = "${pageContext.request.contextPath}";
   var session_id = "${session_id}";
     function getList(){
        $.ajax({
           url : pageContext + "/store/Product_ReplyList.st?product_no=" + product_no,
           type : "get",
           /* dataType : "json", */
           dataType : "text",
           success : showList
        });
     }
   
  var pro_replyList;
  
     function showList(replies){
        replies = JSON.parse(replies);
        pro_replyList = replies;
        
        var text = "";
       
        
        if(replies != null && replies.length != 0){
           $.each(replies, function(index, reply){
        	   var star = "";
               for (var i = 0; i <reply.product_star; i++) {
       			star+="★";
       			
       		}
               /* var date =reply.pro_reply_date.subString(0,10); */
               
               
              text += "<div id='reply'>";
              text += "<p class='writer'>" + reply.user_id + "</p>";
              text += "<p class='star'>" + star + "</p>";
              text += "<p class='date'>" + reply.pro_reply_date + "</p>";
              text += "<div class='content' id='" + (index + 1) + "' style='width:100%'><pre>" + reply.pro_reply_content + "</pre></div>"
      
              
              if("${session_id}" == reply.user_id){
                 text += "<input type='button' id='ready" + (index + 1) + "' class='primary' onclick=readyToUpdate(" + (index + 1) +") value='수정'>";
                 text += "<input type='button' id='ok" + (index + 1) + "' class='primary' onclick='update(" + (index + 1) + "," + reply.pro_reply_no + ")' style='display:none' value='수정완료'>";
                 text += "<input type='button' id='remove" + (index + 1) + "' class='primary' onclick='deleteComment(" + reply.pro_reply_no + ")' value='삭제'>";
              }
              text += "</div>";
           });
        }else{
           text = "<p>댓글이 없습니다.</p>";
        }
        
        $("#replies").html(text);
     }
     
     //댓글 등록
     function comment(){
    	if(session_id==""){
    		alert('로그인을 먼저 해주세요.');
    		return;
    	}
        var content = $("textarea[name='content']").val();
        var product_star = $("#product_star").val();
        $.ajax({
           url : pageContext + "/store/Product_ReplyWrite.st",
           type : 'post',
           data : {'content' : content, 'product_no' : product_no, 'product_star' : product_star},
           success : function(){
              $("textarea[name='content']").val("");
              getList();
           }
        });
     }
     
  
     //댓글 삭제
     function deleteComment(cs_reply_no){
        if(!check){
           $.ajax({
              url : pageContext + "/customerService/CS_ReplyDeleteOk.bo",
              type : 'post',
              data : {'cs_reply_no' : cs_reply_no},
              success : function(){
                 getList();
              }
           });
        }else{
           alert("삭제? 그건 안되지~")
        }
     }
	
	
     function inCart(){
    	 if(session_id==""){
     		alert('로그인을 먼저 해주세요.');
     		return;
     	}
			var form = document.frm;
			frm.action = pageContext+"/myPage/MyPageCartInsertOk.mp";
			frm.submit();
		}
     
	function goPay(){
		
		if(session_id==""){
    		alert('로그인을 먼저 해주세요.');
    		return;
    	}
		var form = document.frm;
		frm.action = pageContext+"/payment/Payment.py";
		frm.submit();
	}

	
</script>
</html>
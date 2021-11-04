<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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


<c:set var="list" value="${requestScope.boardList}"/>
<c:set var="nowPage" value="${requestScope.nowPage}"/>
<c:set var="startPage" value="${requestScope.startPage}"/>
<c:set var="endPage" value="${requestScope.endPage }"/>
<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
<c:set var="realEndPage" value="${requestScope.realEndPage}"/>
<%-- <c:set var="userId" value="${requestScope.userId}"/>  --%>

<title>Q&A</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/customerService/cs_made.css" />
</head>
<body class="is-preload">

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
			<h3 style="text-align: center; border-bottom: none;">customer
				service</h3>
			<!-- inquiry_container 시작 -->
			<div id="inquiry_container">
				<!-- inquiry_menu 시작 -->
				<div id="inquiry_menu">
					<a href="${pageContext.request.contextPath }/customerService/CS_BoardList.bo?CS_BOARD_SELECT=상품문의">상품문의</a>
					<a href="${pageContext.request.contextPath }/customerService/CS_BoardList.bo?CS_BOARD_SELECT=취소문의">취소/변경문의</a>
					<a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo?CS_BOARD_SELECT=배송문의">입고/배송문의</a>
					<a href="${pageContext.request.contextPath }/customerService/CS_BoardList.bo?CS_BOARD_SELECT=교환문의">교환/반품문의</a>
					<a href="${pageContext.request.contextPath }/customerService/CS_BoardList.bo?CS_BOARD_SELECT=기타문의">기타문의</a>
					<!-- inquiry_menu 끝 -->
				</div>
				<!-- div_table 시작 -->
				<div id="div_table">
					<!--  실험1시작-->
					<caption style="text-align: left; margin-bottom: 3%;"></caption>
					
					<table>
					<thead>
							<tr>
								<th class="th-no1">번호</th>
								<th class="th-no1">문의종류</th>
								<th class="th-title1">제목</th>
								<th class="th-writer1">작성자</th>
								<th class="th-date1">작성일</th>
							</tr>
						</thead>
					<c:choose>
							<c:when test="${list != null and fn:length(list) > 0}">
								<c:forEach var="board" items="${list}">
									<tr align="center" valign="middle" onmouseover="this.style.backgroundColor='#e0f7fa'" onmouseout="this.style.backgroundColor=''">
										<td height="24px">${board.getCs_board_no()}</td>
										<td>${board.getCs_board_select()}</td>
										<td><a href="${pageContext.request.contextPath}/customerService/CS_BoardViewOk.bo?cs_board_no=${board.getCs_board_no()}">${board.getCs_board_title()}</a></td>
										<td>${board.getUser_id()}</td>
										<td>${board.getCs_board_date()}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr height="50px" align="center">
									<td colspan="5">등록된 게시물이 없습니다.</td>				
								</tr>
							</c:otherwise>
						</c:choose>
						</table>
					<!--  실험1끝-->
					
					<table>
						<tr align="center" valign="middle">
							<td>
							<c:if test="${nowPage > 1}">
								<a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo?page=${nowPage-1}">&lt;</a>
							</c:if>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i eq nowPage}">
										<c:out value="[${i}]"/>&nbsp;
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo?page=${i}"><c:out value="${i}"/></a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test="${nowPage != realEndPage}">
								<a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo?page=${nowPage+1}">&gt;</a>
							</c:if>
							</td>
						</tr>
					</table>
					<!-- 로그인 안되어있을때  -->
							<c:choose>
								<c:when test="${session_id==null }">
									<div id="write_button_div">
										<a id="write" href="${pageContext.request.contextPath}/customerService/CS_Write_Not_Signed_In.bo" class="button">write</a>
									</div>
								</c:when>
							<c:otherwise>
							
					<!-- 로그인 되어있을때 -->
					<div id="write_button_div">
					<a id="write" href="${pageContext.request.contextPath}/customerService/CS_Write.bo" class="button">write</a>
					</div>
							</c:otherwise>
						</c:choose>
				</div>
				<!-- div_table 끝 -->
				
				<!-- search_container 시작 -->
				<div id="search_container"
					style="margin: 0 auto; width: 400px; height: 40px;">
					<ul>
						<li style="float: left;"><select id="search_date"
							name="search_date">
								<option value="week">일주일</option>
								<option value="month">한달</option>
								<option value="month3">세달</option>
								<option value="all">전체</option>
						</select></li>
						<li style="float: left;"><select id="search_key"
							name="search_key">
								<option value="subject">제목</option>
								<option value="content">내용</option>
								<option value="writer_name">글쓴이</option>
								<option value="member_id">아이디</option>
								<option value="product">상품정보</option>
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
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>
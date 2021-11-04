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

<title>문의하기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
img {
	width: 240px;
	border-radius: 0.5em;
}

.name {
	font-weight: 600;
}

.box {
	border: none !important;
	margin-top: -2% !important;
}

.top {
	margin-left: 6% !important;
	margin-right: 6% !important;
}

form textarea{
	border-radius:0; 
	resize:none;
	color:black !important;
}
	
form div#cs_reply{
	display:flex;
	margin-bottom:3%;
}
	
input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
	
ul.actions li {
    padding: 0 0 0 0.2em;
}
	
p.content{
	width:63%;
}
	
p.writer{
	width:20%;
	font-weight:bold;
}

</style>
<body class="is-preload">
<c:set var="list" value="${cs_board}" />
<c:set var="files" value="${requestScope.files}" />
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
			<section id="main" class="main">
				<div class="inner">
					<header class="major">
						<h3>Q&A</h3>
					</header>
					<div class="top">
					<%-- <input type="hidden" name="user_no">${list.getUser_no()} --%>
						<h3>제목 ${list.getCs_board_title()}</h3>
						<div class="name" style="font-size: 14px;">작성자 : ${list.getUser_id()}</div>
						<div style="font-size: 14px;">${list.getCs_board_date()}</div>
						<ul class="actions"
							style="display: flex; justify-content: flex-end; font-size: 10px;">
							<li><input type="button" value="list" class="primary" onclick="location.href='${pageContext.request.contextPath}/customerService/CS_BoardList.bo'"></li>
							<li><input type="button" value="write" class="primary" onclick="location.href='${pageContext.request.contextPath}/customerService/CS_Write.bo'"></li>
							<c:if test="${session_id eq list.getUser_id()}">
							<li><input type="button" value="edit" onclick="location.href='${pageContext.request.contextPath}/customerService/CS_Edit.bo?cs_board_no=${list.getCs_board_no()}'"></li>
							<li><input type="button" value="delete" onclick="location.href='${pageContext.request.contextPath}/customerService/CS_BoardDeleteOk.bo?cs_board_no=${list.getCs_board_no()}'"></li>
							</c:if>
						</ul>
						<hr style="margin-top: 0;">
						<c:if test="${files != null}">
						<% System.out.println("들어옴");%>
						
							<div>첨부파일</div>
							<c:forEach var="files" items="${files}">
								<a
									href="${pageContext.request.contextPath}/customerService/FileDownload.bo?cs_file_name=${files.getCs_file_name()}"><c:out
										value="${files.getCs_original_file_name()}" /></a>
								<br>
								<img class="downloadImg" src="${pageContext.request.contextPath}/app/cs_upload/${files.getCs_original_file_name()}" style="width: 100%;">
								
							</c:forEach>
						</c:if>
					</div>
					<!-- 클래스명은 변경하면 안 됨 -->
					<div class="col-6"
						style="float: left; width: 53%; padding-left: 6%;">
						<%-- <img src="${pageContext.request.contextPath}/app/cs_upload/${files.getCs_file_name()}"> --%>
					<%-- 	${files.getCs_original_file_name()} --%>
					
					</div>
					<div class="box">
						<fieldset style="width: 43%; padding-left: 2%;">
							<h3>
								<pre>${list.getCs_board_content()}</pre>
							</h3>
						</fieldset>
					</div>
				</div>
			</section>
			<!-- 댓글 -->
			<section class="main accent2" style="padding: 3%; margin: 0 14% 0 14%; border-bottom: none;">
				<header class="major" style="text-align: left; margin-bottom: 20px;">
					<h3>Comment</h3>
					<p style="font-size: 13px">여러분의 소중한 댓글을 작성해주세요.</p>
				</header>
				<form method="post" action="#" class="combined" style="width: auto;">
					<textarea name="content" id="content" placeholder="비속어를 사용하지 말아주세요."
						class="invert" rows="5"
						style="border-radius: 0; resize: none; font-size: 13px !important; float: left; width: 90% !important;"></textarea>
					<input id="register" type="button" class="primary" value="add"
						style="font-size: 13px !important;" onclick="comment()">
				</form>
				<form id="replies" class="combined" style="flex-direction: column; margin: 0; display: contents; font-size: 12px !important;">
				</form>
			</section>
			</div>
		<!-- Wrapper 끝 -->
	</div>
	<!-- Page Wrapper 끝 -->
	



	<!-- Footer -->
	<footer id="footer">
		<jsp:include page="/fixed/footer.jsp"></jsp:include>
	</footer>

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
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
            $(document).ready(function(){getList();});
            
            var cs_board_no = "${list.getCs_board_no()}";
            var pageContext = "${pageContext.request.contextPath}";
            var session_id = "${session_id}";
			var admin = "admin";
            console.log(session_id);
            function getList(){
               $.ajax({
                  url : pageContext + "/customerService/CS_ReplyList.bo?cs_board_no=" + cs_board_no,
                  type : "get",
                  /* dataType : "json", */
                  dataType : "text",
                  success : showList
               });
            }
          
         var cs_replyList;
         
            function showList(replies){
               replies = JSON.parse(replies);
               cs_replyList = replies;
               
               var text = "";
               
               if(replies != null && replies.length != 0){
            	   console.log("ajadx들어옴");
			                  $.each(replies, function(index, reply){
			                     text += "<div id='reply'>";
			                     var writer = reply.user_id;
			                     if(reply.user_id == "admin"){
			                    	 writer = "관리자";
			                     }
			                     text += "<p class='writer'>" + writer + "</p>";
			                     text += "<div class='content' id='" + (index + 1) + "' style='width:100%'><pre>" + reply.content + "</pre></div>"
			               console.log("ajadx3들어옴");
			                     
			                     if("${session_id}" == reply.user_id){
			                        text += "<input type='button' id='ready" + (index + 1) + "' class='primary' onclick=readyToUpdate(" + (index + 1) +") value='수정'>";
			                        text += "<input type='button' id='ok" + (index + 1) + "' class='primary' onclick='update(" + (index + 1) + "," + reply.cs_reply_no + ")' style='display:none' value='수정완료'>";
			                        text += "<input type='button' id='remove" + (index + 1) + "' class='primary' onclick='deleteComment(" + reply.cs_reply_no + ")' value='삭제'>";
			                     }
			                     text += "</div>";
			                  });   
	            	   
               }else{
                  text = "<br><br><p>댓글이 없습니다.</p>";
               }
               
               $("#replies").html(text);
            }
            
            //댓글 등록
            function comment(){
               console.log($("textarea[name='content']").val());
               var content = $("textarea[name='content']").val();
               $.ajax({
                  url : pageContext + "/customerService/CS_ReplyWrite.bo",
                  type : 'post',
                  data : {'content' : content, 'cs_board_no' : cs_board_no},
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
            
            var check = false;
            
            //수정 취소
            function updateCancel(index){
               var remove = $("#cancel" + index);
               var textarea = $("#" + index);
               var edit_ready = $("#ready" + index);
               var edit_ok = $("#ok" + index);
               
               edit_ready.show();
               edit_ok.hide();
               check = false;
               
               remove.replaceWith("<input type='button' id='remove" + index + "' class='primary' onclick='deleteComment(" + cs_replyList[index-1].cs_reply_no + ")' value='삭제'>");
               textarea.replaceWith("<div class='content' id='" + index + "' style='width:100%'><pre>" + cs_replyList[index-1].content + "</pre></div>");
            }
            
          //댓글 수정
            function readyToUpdate(index){
               var div = $("#" + index);
               var edit_ready = $("#ready" + index);
               var edit_ok = $("#ok" + index);
               var remove = $("#remove" + index);
               if(!check){
                  div.replaceWith("<textarea name='content' id='" + index + "' class='invert' style='border-radius:0; resize:none;'>" + div.text() + "</textarea>");
                  remove.replaceWith("<input type='button' id='cancel" + index + "' value='취소' onclick='updateCancel(" + index + ")'>");
               
                  edit_ready.hide();
                  edit_ok.show();
                  check = true;
               }else{
                  alert("수정중인 댓글이 있습니다.");
               }
            }
            
            //댓글 수정완료
            function update(index, cs_reply_no){
               var content = $("textarea#" + index).val();
               var json = new Object();
               json.cs_reply_no = cs_reply_no;
               json.content = content;
               
               $.ajax({
                  url : pageContext + "/customerService/CS_ReplyEditOk.bo",
                  type : "post",
                  /* data : {"cs_reply_no" : cs_reply_no, "content" : content}, */
                  data : json,
                  success : function(){
                     check = false;
                     getList();
                  }
               });               
            }
      
</script>
</html>
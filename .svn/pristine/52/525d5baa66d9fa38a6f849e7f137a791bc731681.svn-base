<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
#input_search {
	line-height: 1px;
	border-top: 0px;
	border-left: 0px;
	border-right: 0px;
	border-bottom-color: #8E8E8E;
	background: transparent;
	input: focus;
	outline: none;
}

#search_bar {
	width: auto;
	margin-left: 20%;
	display: inherit;
}

#close {
	margin-bottom: 50px;
	font-size: 20px;
	color: white;
}

#event_popup {
	text-align: center;
	resize: none;
	width: 100%;
	position: fixed;
	/* display:none; */
	/* align:center; */
	padding: 12px;
	/* background-color: #A4C2EF; */
	background-color: #a7bed3;
	display: block;
	border: 0;
	z-index: 33;
}

#header {
	margin-top: 57px;
	z-index: 33 !important;
}

#header.alt {
	margin-top: 30px important;
}

#search_bar_form{
	margin-bottom:0px;
	padding-bottom:-px;
}
#search_label{
	margin-bottom:0px;
	padding-bottom:-px;
}

input:focus {
	outline:none;
}
</style>
</head>
<body>
	
   <a href="/test01/app/main/index.jsp" class="logo">내 방은 <span>못말려 <i class="fas fa-seedling" style="font-size: 15px;"></i></span></a>

   <div id="search_bar">
   	<!-- <label id="search_label" onclick="send()"> -->
   <form name="S_form" id="search_bar_form" action="${pageContext.request.contextPath}/store/Product_Get_Search_List.st" method="get">
			<input id="input_search" name="s_keyword" placeholder="" type="search">
			<i onclick="send()" class="fa fa-search" aria-hidden="true"></i>
	</form>
	<!-- </label> -->
	
	</div>
   <nav>
      <ul>
         <li><a href="${pageContext.request.contextPath}/app/member/signup.jsp">SignUp</a></li>
            <li><a href="${pageContext.request.contextPath}/user/UserLogin.me">Login</a></li>
         <li><a href="#menu">Menu</a></li>
      </ul>
   </nav>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
   if($("#close").length == 0){
	   $("#header").css("margin-top", "0px");
   }
   
   function close_popup(){
        var closeEvent = document.getElementById('close');
        closeEvent.parentNode.style.display = 'none';
        var header =  document.getElementById('header');
        header.style.marginTop='0px';
     }
   

   function send(){
	   var S_form = document.getElementById("search_bar_form");
	   S_form.submit();
   }
   
      
</script>
</html>
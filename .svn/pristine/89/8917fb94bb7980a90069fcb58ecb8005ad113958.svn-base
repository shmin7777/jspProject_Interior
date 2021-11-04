<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
body{
	font-family: 'Noto Sans KR', sans-serif;
}
	.phone{
		width: 250px;
	}
	
	p{
		font-size: 14px;
		font-weight: bold;
	}
	
	.phone{
		font-size: 14px;
		font-weight: bold;
	}
	
</style>
<body>
<%
request.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	
	int price = Integer.parseInt(request.getParameter("price").replaceAll("\\,", ""));
	%>

	<p>휴대폰 결제</p>
	<div style="font-size:12px;"><strong>인증번호를 입력하시면 결제가 완료됩니다.</strong></div><br>
		<div class="phone">휴대폰 번호</div>
	<form name="send"  action="${pageContext.request.contextPath}/user/UserCheckPhoneOk.me">
   		<input type="text" name="user_phone_no" id="user_phone_no" placeholder="휴대폰번호(-제외)">
   		<input type="button" value="인증번호 전송" onclick="sendRequest()">
   </form>
		<div class="phone">휴대폰 번호 인증</div>
	<form name="check" action="${pageContext.request.contextPath}/app/payment/completed.jsp">
   		<input type="text" name="code" id="code" placeholder="인증번호">
  		 <input type="button" value="인증번호 확인" onclick="testForm()">
		<input type="hidden" name="price" value="<%=price%>">
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
var pageContext = "${pageContext.request.contextPath}";
var number;

function testForm(){
		var sendForm = document.send;
		var checkForm = document.check;

		console.log($('#user_phone_no').val());
		
		if(($('#user_phone_no').val()).length == 11 || ($('#user_phone_no').val()).length == 10){
			sendForm.submit();
		} else{
			alert("휴대폰번호를 확인해주세요.");
		}
		
		if(number == $("#code").val()){
			alert("인증 확인되었습니다.");
			checkForm.submit();
		}else{
			alert("인증번호를 다시 입력해주세요.");
		}
}



function sendRequest() {
	var num = document.getElementById('user_phone_no').value;
    var xhr = new XMLHttpRequest();

    xhr.open("GET", pageContext + "/user/UserCheckPhoneOk.me?user_phone_no="+num, true);
    xhr.send();

    xhr.onreadystatechange = function() {
        if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
            number = xhr.responseText;
        }
    }
}
</script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴대폰 결제</title>
</head>
<style>

   .skt{
      background-image : url('/images/skt_png.jpg'); 
        background-position:top right; 
       background-repeat:no-repeat;
   }
   
   .kt{
      background-image : url('/images/kt_png.png'); 
        background-position:top right; 
       background-repeat:no-repeat;
   }
   
   .lg{
      background-image : url('/images/LG_U+_png.png'); 
        background-position:top right; 
       background-repeat:no-repeat;
   }
   
   .alddul{
      background-image : url('/images/alddul_png.png'); 
        background-position:top right; 
       background-repeat:no-repeat;
   }
   
   
   

   
</style>
<body>

<c:set var="number" value="${number}"/>

<form>
   <p>이용중이신 이동통신사를 선택해주세요.<c:out value='${number}'/></p>
   <table>
   <tr>
      <td><input type="checkbox" class="skt"></td>
      <td><input type="checkbox" class="kt"></td>
   </tr>
   <tr>
      <td><input type="checkbox" class="lg"></td>
      <td><input type="checkbox" class="alddul"></td>
   </tr>
   </table>
   <input type="checkbox" class="skt">
   <input type="checkbox" class="kt">
   <input type="checkbox" class="lg">
   <input type="checkbox" class="alddul">
   
   <img src="../images/skt_png.jpg"/>
   <div>
   <p>알뜰폰이란?<br>
   이동통신사(SKT,KT,LGU+)의 통신망을 임대하여 별도의<br>
   휴대폰 서비스(MVNO)를 제공하는 사업자를 말합니다.</p>
   <label><input type="checkbox" name="Consent"value="본인확인을 하기 위한 필수사항에 전체동의 합니다.">본인확인을 하기 위한 필수사항에 전체동의 합니다.</label>
   <br>
   <label><input type="checkbox" value="개인정보 동의">개인정보 동의</label>
   <br>
   <label><input type="checkbox" value="고유식별처리동의">고유식별처리동의</label>
   <br>
   <label><input type="checkbox" vlaue="서비스이용약관동의">서비스이용약관동의</label>
   <br>
   <label><input type="checkbox" value="통신사이용약관동의">통신사이용약관동의</label>
   </div>
</form>
   <form name="test"  action="${pageContext.request.contextPath}/user/UserCheckPhoneOk.me">
   		<input type="text" name="user_phone_no" id="user_phone_no" placeholder="휴대폰번호(-제외)">
   		<input type="button" value="인증번호 전송" onclick="sendRequest()">
   </form>
   		<input type="text" name="code" id="code" placeholder="인증번호">
  		 <input type="button" value="인증번호 확인" onclick="testForm()">
</body>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script>
var pageContext = "${pageContext.request.contextPath}";
var number;
 
function checkPhone(){
		var form = document.test;
		
		if(($('#user_phone_no').val()).length == 11 || ($('#user_phone_no').val()).length == 10){
			form.submit();
		} else{
			alert("휴대폰번호를 확인해주세요.");
		}
	}

function testForm(){
		
		console.log(number);
		console.log($("#code").val());
		
		if(number == $("#code").val()){
			alert("인증 확인되었습니다.");
		}else{
			alert("인증번호를 다시 입력해주세요.");
		}
}



function sendRequest() {
	var num = document.getElementById('user_phone_no').value;
    var xhr = new XMLHttpRequest();

	console.log(num);
    xhr.open("GET", pageContext + "/user/UserCheckPhoneOk.me?user_phone_no="+num, true);
    xhr.send();

    xhr.onreadystatechange = function() {
        if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
        	console.log("들어옴2")
            number = xhr.responseText;
        }
    }
}

</script>
</html>
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
 img{
 	width: 150px;
 	height: 100px;
 }
 input[name='news'
 ]{
 	position: absolute;
 }
 td{
 	padding: 0;
 }
 
label{
 	font-size: 11px;
 }
</style>
<body style="width=600, height=500, left=100, top=50">
<%
request.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	
	int price = Integer.parseInt(request.getParameter("price").replaceAll("\\,", ""));
	%>
	
<form style="padding-left: 11%; padding-right: 10%;" action="${pageContext.request.contextPath}/app/payment/checkCode.jsp">
    <p style="font-size: 13px;">이용중이신 이동통신사를 선택해주세요.</p>
    <table style="">
    <tr>
        <td><input type="checkbox" value="skt" name="news" id="skt" class="news" onclick='checkOnlyOne(this)'><label for="skt"><img src="${pageContext.request.contextPath}/images/skt.png"class="news"/></label></td>
        <td><input type="checkbox" value="kt" name="news" id="kt" class="news"onclick='checkOnlyOne(this)'><label for="kt"><img src="${pageContext.request.contextPath}/images/kt.png" class="news"></label></td>
    </tr>
    <tr>
        <td><input type="checkbox" value="lg" name="news" id="lg" class="news" onclick='checkOnlyOne(this)'><label for="lg"><img src="${pageContext.request.contextPath}/images/lg.png"class="news"/></label></td>
        <td><input type="checkbox" value="cheap" name="news" id="cheap" class="news" onclick='checkOnlyOne(this)'><label for="cheap"><img src="${pageContext.request.contextPath}/images/a.png" class="news"/></label></td>
    </tr>
    </table>

    <div>
    <p style="font-size: 13px;">알뜰폰이란?<br>
    이동통신사(SKT,KT,LGU+)의 통신망을 임대하여 별도의<br>
    휴대폰 서비스(MVNO)를 제공하는 사업자를 말합니다.</p>
    <label><input type="checkbox" name="agreeAll" class="selectAll" onclick="selectAll(this)">본인확인을 하기 위한 필수사항에 전체동의 합니다.</label>
    <br>
    <label><input type="checkbox" name="term" onclick="checkSelectAll()">개인정보 동의</label>
    <br>
    <label><input type="checkbox" name="term" onclick="checkSelectAll()">고유식별처리동의</label>
    <br>
    <label><input type="checkbox" name="term" onclick="checkSelectAll()">서비스이용약관동의</label>
    <br>
    <label><input type="checkbox" name="term" onclick="checkSelectAll()">통신사이용약관동의</label>
    </div>
	<input type="hidden" name="price" value="<%=price%>">
    <label><input type="submit" value="다음" style="width:20%;margin-left: 104px; margin-top:5%;"></label>

</form>
</body>
<script>
function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="term"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="term"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="agreeAll"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

}

   function selectAll(selectAll)  {
		  const checkboxes 
		     = document.getElementsByName('term');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
	}
   
   function checkOnlyOne(element) {

        const checkboxes 
            = document.getElementsByName("news");

        checkboxes.forEach((cb) => {
          cb.checked = false;
        })

        element.checked = true;
      }
</script>
</html>
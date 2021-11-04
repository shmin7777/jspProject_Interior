<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#close {
   margin-bottom: 50px;
   font-size: 20px;
   color: white;
   float: right;
}

#event_popup {
   text-align: center;
   resize: none;
   width: 100%;
   position: fixed;
   /* display:none; */
   /* align:center; */
   padding: 12px;
   background-color: #A4C2EF;
   display: block;
   border: 0;
   z-index: 33;
}
</style>
</head>
<body class="is-preload">
   <div id="event_popup">
      <span style="color: white; vertical-align: text-top;"> <a href="../community/event.jsp">5만원 이상 구매시 무료배송 ! Code:
         CANTSTOPMYROOM</a> </span><span id="close" onclick="close_popup();">✖</span>
   </div>
</body>
<script>
   function close_popup() {
      var closeEvent = document.getElementById('close');
      closeEvent.parentNode.style.display = 'none';
      var header = document.getElementById('header');
      header.style.marginTop = '0px';
   }
</script>
</html>
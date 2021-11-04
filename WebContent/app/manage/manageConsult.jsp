<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" type="text/css" href="../../assets/css/manage.css">
</head>
<body>
<%
   Date date=new Date();
   String cur=date.toLocaleString();
%>
    <div class="header">
        <div class="head">
            <div class="log">
                <ul>
                    
                    <li>
                        <a href="manageLogin.jsp"> 로그아웃</a>
                    </li>
                    <li>
                        <a href="manageHome.jsp">Home</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>

    <div class="nav">
        <div class="box">
            <div class="admin">
                <div class="text">
                    관리자님<br>
                    접속시간 : <%=cur %>
                    <br>
                    <button onclick="location.href='manageLogin.jsp'">로그아웃</button>
                 </div>
                
            </div>
            <div class="menu">
                <div class="text1">
                    정보관리
                </div>
                 <div class="menu1">
                    <div class="manage">
                             <ul>
                            <a href="manageUser.jsp"><li>회원관리</li></a>
                 			<a href="${pageContext.request.contextPath}/customerService/CS_BoardList.bo"><li>문의 답변</li></a>
                      		<a href="manageConsult.jsp"><li>상담신청 내역</li></a>
                  <!--    	<a href="manageMovieAfter.jsp"><li>상영예정작정보</li></a>
                            <a href="manageSnack.jsp"><li>스낵관리</li></a>
                            <a href="manageReserveSnack.jsp"><li>스낵사용정보</li></a>
                            <a href="manageGift.jsp"><li>선물사용관리</li></a>  -->
                        </ul>
                    </div>
                </div><br>
                <div class="text1">
                    정보등록<br>
                </div><br>
                <div class="menu2">
                    <div class="manage">
                        <ul>
                            <a href="manageInsertStore.jsp"><li>스토어 등록</li></a>
                            <a href="manageInsertEvent.jsp"><li>이벤트 등록</li></a>
                     		<a href="manageInsertNotice.jsp"><li>공지사항 등록</li></a>
                     		<a href="manageInsertCc.jsp"><li>시공사례 등록</li></a>
                   <!--   	<a href="manageInsertFAQ.jsp"><li>FAQ등록</li></a>
                            <a href="manageInsertMovieAfter.jsp"><li>상영예정작등록</li></a> -->
                        </ul>
                    </div>
                </div><br>
                <div class="text1">
                    고객센터<br>
                </div><br>
                <div class="menu1" style="height: 140px;">
                    <div class="manage">
                        <ul>
                            <a href="manageNotice.jsp"><li>공지사항</li></a>
                            <a href="manageFAQ.jsp"><li>FAQ</li></a>
                            <a href="manageOneByOne.jsp"><li>1대1문의</li></a>
                        </ul>
                    </div>
                </div>s
            </div>
        </div>
    </div>
<div style="height: 830px; overflow: auto;">
<form method="post" action="manageUpdateConsult.jsp" name="frm">
<table width="90%" class="selectCurMovie" >
<tr height="100" >
   <td align="center" colspan="7">
      <font size="7" color="gray"> <a href="#">상담신청 내역</a> </font>
   </td>
</tr>
<tr bgcolor="pink">
   <td>신청번호</td><td>ID</td><td>예상금액</td><td>신청일</td><td>패키지선택</td><td>평수</td><td>방 개수</td><td>테마</td><td>상태</td><td>변경</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
/* String search= request.getParameter("search"); */
String dburl="jdbc:oracle:thin:@localhost:1521:XE";
String dbid="hr";
String dbpassword="hr";
int count=0;
try {
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection(dburl,dbid,dbpassword);
   
   System.out.println("[Database 연결 성공]");

   String sql2="SELECT COUNT(*) FROM TABLE_CONSULT";
   PreparedStatement pstmt2 = con.prepareStatement(sql2);
   ResultSet rs2 = pstmt2.executeQuery();
   if(rs2.next()){
      count=rs2.getInt(1);
   }


   
   String sql="SELECT * FROM TABLE_CONSULT";
   PreparedStatement pstmt = con.prepareStatement(sql);
   ResultSet rs = pstmt.executeQuery();
 int i=0;
   while(rs.next()){
	i++;
%>
<tr>
   <td><%=rs.getInt(1) %></td>			<!-- 신청번호 -->
   <td><%=rs.getString(2) %></td>		<!-- 아이디 -->
   <td><%=rs.getString(3) %></td>		<!-- 총 예상금액 -->
   <td><%=rs.getString(4)%></td>		<!-- 신청일-->
   <td><%=rs.getString(5) %></td>		<!-- 패키지타입 -->
   <td><%=rs.getInt(6) %></td>		<!-- 평수 -->
   <td><%=rs.getInt(7) %></td>			<!-- 방 개수 -->
   <td><%=rs.getString(8) %></td>		<!-- 테마 -->
   <td><input type="text" value="<%=rs.getInt(9) %>" name="cns_status" id="us<%=i %>" ></td>		<!-- 상태 -->
   <td><input type="hidden" value="<%=rs.getInt(1)%>" name="cns_no" >
   <input type="button" value="변경하기" onclick="updateForm('<%=rs.getInt(1) %>','<%=i %>')" ></td>
</tr>
<%      }
   }catch(Exception e){
	  
	  System.out.println("[Database 연결 실패]");
	  
      e.printStackTrace();
   }%>
<tr height="18px">
   <td colspan="4"></td>
   <td>총 신청수</td><td><%=count %>회</td>
</tr>   
</table>
</form>
</div>
</body>
<script>
	function updateForm(cns_no, i){
		var form = document.frm;
		var us = document.getElementById('us'+i).value;
	   location.href="manageUpdateConsult.jsp?cns_no="+cns_no+"&&cns_status="+us;
	}
</script>
</html>
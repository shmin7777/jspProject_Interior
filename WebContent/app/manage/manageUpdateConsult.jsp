<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
/* String search= request.getParameter("search"); */
String dburl="jdbc:oracle:thin:@localhost:1521:XE";
String dbid="hr";
String dbpassword="hr";

int cns_no = Integer.parseInt(request.getParameter("cns_no"));
int cns_status = Integer.parseInt(request.getParameter("cns_status"));

System.out.println("cns_no" + cns_no);
System.out.println("cns_status" + cns_status);


try {
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection(dburl,dbid,dbpassword);
 	
   String sql="UPDATE TABLE_CONSULT SET CNS_STATUS =? WHERE CNS_NO =?";
  
   PreparedStatement pstmt = con.prepareStatement(sql);
 	pstmt.setInt(1, cns_status);
 	pstmt.setInt(2, cns_no);
	pstmt.executeUpdate();
   
   pstmt.close();
   con.close();
   response.sendRedirect("manageConsult.jsp");
}catch(Exception e){
	e.printStackTrace();
}
   
 %>
</body>
</html>
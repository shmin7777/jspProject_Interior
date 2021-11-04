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

int user_no = Integer.parseInt(request.getParameter("user_no"));
int user_discount_status = Integer.parseInt(request.getParameter("user_discount_status"));
int user_status = Integer.parseInt(request.getParameter("user_status"));

System.out.println(user_no);
System.out.println(user_discount_status);
System.out.println(user_status);


try {
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con=DriverManager.getConnection(dburl,dbid,dbpassword);
 	
   String sql="UPDATE TABLE_USER SET user_discount_status = ?, USER_STATUS=? WHERE USER_NO=?";
  
   PreparedStatement pstmt = con.prepareStatement(sql);
 	pstmt.setInt(1,user_discount_status );
 	pstmt.setInt(2, user_status);
 	pstmt.setInt(3, user_no);
	pstmt.executeUpdate();
   
   pstmt.close();
   con.close();
   response.sendRedirect("manageUser.jsp");
}catch(Exception e){
	e.printStackTrace();
}
   
 %>
</body>
</html>
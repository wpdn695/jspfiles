<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>memberPro.jsp</title>
</head>
<body>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
int score=Integer.parseInt(request.getParameter("score"));
String level=request.getParameter("level");

Connection conn=null;
PreparedStatement pstmt=null;






try{
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String user="scott";
	String pw="123456";

	Class.forName("oracle.jdbc.driver.OracleDriver");

	conn=DriverManager.getConnection(url, user, pw);
	
	String sql="INSERT INTO MEMSCORE VALUES(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setInt(3, score);
	pstmt.setString(4, level);
	//실행시
	pstmt.executeUpdate(); //insert실행
}catch(Exception e){
 out.println("접속실패");
}
finally{
	if(pstmt!=null)
	try{}catch(Exception e){}
	if(conn!=null)
	try{}catch(Exception e){}
	
}
out.println("<h2>memscore추가</h2>");

response.sendRedirect("memscoreForm.jsp");
%>
</body>
</html>
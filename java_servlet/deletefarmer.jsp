<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.*" %>

<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse" %>
<%@page import="jakarta.servlet.http.HttpServlet" %>
<%@ page import="java.io.*" %>

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
  String id=request.getParameter("id");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
		String query="delete from farmer where id="+id;
		
		PreparedStatement pst=con.prepareStatement(query);
		pst.executeUpdate();
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		writer.println("deleted");
		
		
	}catch(SQLException e) {
		System.out.println(e.getMessage());
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		writer.println(" not deleted");
		}
		catch(ClassNotFoundException e) {
		System.out.println(e.getMessage());
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		writer.println(" not inseted");

	  }
 
  
  %>
  

</body>
</html>
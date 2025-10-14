package com.manage;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/updatefarm")
public class Updatefarm extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		  String name=req.getParameter("name");
		  String contact=req.getParameter("contact");
		  String address=req.getParameter("address");
		  String farm_size=req.getParameter("farm_size");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
			
			  
			  
			  String query="UPDATE farmer set id=?,name=?,contact=?,address=?,farm_size=? WHERE id="+id;
			  
			  PreparedStatement pst=con.prepareStatement(query);
			  
			  pst.setString(1, id);
			  pst.setString(2, name);
			  pst.setString(3, contact);
			  pst.setString(4, address);
			  pst.setString(5, farm_size);
			  
			  pst.executeUpdate();
			  resp.setContentType("text/html");
				PrintWriter writer = resp.getWriter();
			  writer.println("updated");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
			  resp.setContentType("text/html");
				PrintWriter writer = resp.getWriter();
			  writer.println("not inserted");
		}
	}
	
}

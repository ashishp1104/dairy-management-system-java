package com.manage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updatemilk")
public class Updatemilk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		String date=req.getParameter("date");
		  String fname=req.getParameter("fname");
		  String milk_quantity=req.getParameter("milk_quantity");
		  String temp=req.getParameter("temp");
		  String payment=req.getParameter("payment");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
			
			  
			  
			  String query="UPDATE milk set id=?,date=?,fname=?,milk_quantity=?,temp=?,payment=? WHERE id="+id;
			  
			  PreparedStatement pst=con.prepareStatement(query);
			  
			  pst.setString(1, id);
			  pst.setString(2, date);
			  pst.setString(3, fname);
			  pst.setString(4, milk_quantity);
			  pst.setString(5, temp);
			  pst.setString(6, payment);
			  
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

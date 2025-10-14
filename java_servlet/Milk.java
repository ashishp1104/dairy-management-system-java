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

@WebServlet("/milkservlet")
public class Milk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false","root","root");
			
			String fname=req.getParameter("fname");
			String date=req.getParameter("date");
			String milk_quantity=req.getParameter("milk_quantity");
			String temp=req.getParameter("temp");
			String payment=req.getParameter("payment");
			
			String query="INSERT INTO milk(fname,date,milk_quantity,temp,payment)VALUES(?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, fname);
			pst.setString(2, date);
			pst.setString(3, milk_quantity);
			pst.setString(4, temp);
			pst.setString(5, payment);
			
			pst.executeUpdate();
			
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			
			writer.println("inserted");
			
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			
			writer.println("error");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	
}

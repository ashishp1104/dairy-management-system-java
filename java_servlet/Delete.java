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


@WebServlet("/deletefarm")

public class Delete extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
			String query="delete from farmer where id="+id;
			
			PreparedStatement pst=con.prepareStatement(query);
			pst.executeUpdate();
			
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			
			writer.println("deleted");
			
			
		}catch(SQLException e) {
			System.out.println(e.getMessage());
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			
			writer.println(" not deleted");
			}
			catch(ClassNotFoundException e) {
			System.out.println(e.getMessage());
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			
			writer.println(" not inseted");

		  }
	}
 
}

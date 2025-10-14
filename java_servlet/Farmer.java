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

@WebServlet("/farmer")
public class Farmer extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false","root","root");
			
			String name=req.getParameter("name");
			String contact=req.getParameter("contact");
			String address=req.getParameter("address");
			String farm_size=req.getParameter("farm_size");
			
			String query="INSERT INTO farmer(name,contact,address,farm_size)VALUES(?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, contact);
			pst.setString(3, address);
			pst.setString(4, farm_size);
			
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

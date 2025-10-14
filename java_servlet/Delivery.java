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

@WebServlet("/delivery")
public class Delivery extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false","root","root");
			
			String cust_name=req.getParameter("cust_name");
			String contact=req.getParameter("contact");
			String address=req.getParameter("address");
			String delivery_date=req.getParameter("delivery_date");
			String quantity=req.getParameter("quantity");
			String vehical_no=req.getParameter("vehical_no");
			String dname=req.getParameter("dname");
			String dcontact=req.getParameter("dcontact");
			
			String query="INSERT INTO delivery(cust_name,contact,address,delivery_date,quantity,vehical_no,dname,dcontact)VALUES(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, cust_name);
			pst.setString(2, contact);
			pst.setString(3, address);
			pst.setString(4, delivery_date);
			pst.setString(5, quantity);
			pst.setString(6, vehical_no);
			pst.setString(7, dname);
			pst.setString(8, dcontact);
			
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

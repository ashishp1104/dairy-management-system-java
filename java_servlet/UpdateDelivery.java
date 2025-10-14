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

@WebServlet("/updatedelivery")
public class UpdateDelivery extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String cust_name=req.getParameter("cust_name");
		  String contact=req.getParameter("contact");
		  String address=req.getParameter("address");
		  String delivery_date=req.getParameter("delivery_date");
		  String quantity=req.getParameter("quantity");
		  String vehical_no=req.getParameter("vehical_no");
		  String dname=req.getParameter("dname");
		  String dcontact=req.getParameter("dcontact");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy?useSSL=false", "root","root");
			
			  
			  
			  String query="UPDATE delivery set id=?,cust_name=?,contact=?,address=?,delivery_date=?,quantity=?,vehical_no=?,dname=?,dcontact=? WHERE id="+id;
			  
			  PreparedStatement pst=con.prepareStatement(query);
			  
			  pst.setString(1, id);
			  pst.setString(2, cust_name);
			  pst.setString(3, contact);
			  pst.setString(4, address);
			  pst.setString(5, delivery_date);
			  pst.setString(6, quantity);
			  pst.setString(7, vehical_no);
			  pst.setString(8, dname);
			  pst.setString(9, dcontact);
			  
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
			  writer.println("not updated");
		}
		
	}
	 
}

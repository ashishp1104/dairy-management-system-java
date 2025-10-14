package com.manage;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpSession;

@WebServlet("/admin")
public class Admin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
//		String username=req.getParameter("username");
//		String password=req.getParameter("password");
		// before had | above
		
		RequestDispatcher rd=null;
		
		try {
//			if(("admin".equals(req.getParameter("username")) && "1234".equals(req.getParameter("password"))) || ("Admin".equals(req.getParameter("username")) && "1234".equals(req.getParameter("password"))))
		if("admin".equals(req.getParameter("username")) && "1234".equals(req.getParameter("password")))
			
		{
			HttpSession session=req.getSession();
			session.setAttribute("username", username);
//			session.setAttribute("username", "username");
			//before |
			
//			rd=req.getRequestDispatcher("dashboard.jsp");
			rd=req.getRequestDispatcher("dashboard.jsp?=username"+ username);
		}else{
			rd=req.getRequestDispatcher("AdminLogin.jsp");
		}
		rd.forward(req, resp);
		
		//   HttpSession session=request.getSession();  
        //session.invalidate();  
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
		
	
}

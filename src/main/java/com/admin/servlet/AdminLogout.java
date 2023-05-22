package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminLogout extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		session.removeAttribute("adminObj");
		
		session.setAttribute("sucMes", "Admin Logout Sucessfully !!");
		response.sendRedirect("addmin_login.jsp");
		
		

	}

}

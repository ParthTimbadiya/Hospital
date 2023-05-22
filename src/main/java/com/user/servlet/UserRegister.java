package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.User_Dao;
import com.db.DBconnect;
import com.entity.User;

public class UserRegister extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			User user = new User(name,email,password);
			
			User_Dao dao = new User_Dao(DBconnect.getConnect());
			
			HttpSession session = request.getSession();
			
			boolean f = dao.userRegister(user);
			
			if(f) {
				
				session.setAttribute("sucMes", "regster sucessfully");
				response.sendRedirect("signup.jsp");
				
			}else {
				session.setAttribute("errMes", "Something Went Wrong !!!");
				response.sendRedirect("signup.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

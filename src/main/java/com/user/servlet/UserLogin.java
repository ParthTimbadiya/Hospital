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

public class UserLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		try {

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			HttpSession session = request.getSession();
			User_Dao dao = new User_Dao(DBconnect.getConnect());
			User user = dao.login(email, password);

			if (user != null) {
				session.setAttribute("userObj",user);
				response.sendRedirect("index.jsp");
			} else {
				session.setAttribute("errMes", "Invalid email and password !!");
				response.sendRedirect("user_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

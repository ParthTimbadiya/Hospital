package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			HttpSession session = request.getSession();

			if ("admin@gmail.com".equals(email) && "123".equals(password)) {
				session.setAttribute("adminObj", new User());

				response.sendRedirect("admin/index.jsp");
			} else {
				session.setAttribute("errMes", "Invalid email and password !!");

				response.sendRedirect("addmin_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

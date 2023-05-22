package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.User_Dao;
import com.db.DBconnect;

/**
 * Servlet implementation class ChangePassword
 */
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int uid = Integer.parseInt(request.getParameter("uid"));
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");

		User_Dao dao = new User_Dao(DBconnect.getConnect());
		HttpSession session = request.getSession();

		if (dao.checkOldPassword(uid, oldPassword)) {

			if (dao.changePassword(uid, newPassword)) {

				session.setAttribute("sucMes", "Password Change Sucessfully !!");
				response.sendRedirect("change_password.jsp");

			} else {

				session.setAttribute("errMes", "Something Went Wrong !! On Server");
				response.sendRedirect("change_password.jsp");

			}

		} else {
			session.setAttribute("errMes", "Old Password Incorrect !!");
			response.sendRedirect("change_password.jsp");
		}

	}

}

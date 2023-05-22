package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.User_Dao;
import com.db.DBconnect;

/**
 * Servlet implementation class DoctorPasswordChange
 */
public class DoctorPasswordChange extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int uid = Integer.parseInt(request.getParameter("uid"));
		String newPassword = request.getParameter("newPassword");
		String oldPassword = request.getParameter("oldPassword");

		DoctorDao dao = new DoctorDao(DBconnect.getConnect());
		HttpSession session = request.getSession();

		if (dao.checkOldPassword(uid, oldPassword)) {

			if (dao.changePassword(uid, newPassword)) {

				session.setAttribute("sucMes", "Password Change Sucessfully !!");
				response.sendRedirect("doctor/edit_profile.jsp");

			} else {

				session.setAttribute("errMes", "Something Went Wrong !! On Server");
				response.sendRedirect("doctor/edit_profile.jsp");

			}

		} else {
			session.setAttribute("errMes", "Old Password Incorrect !!");
			response.sendRedirect("doctor/edit_profile.jsp");
		}

	}

}

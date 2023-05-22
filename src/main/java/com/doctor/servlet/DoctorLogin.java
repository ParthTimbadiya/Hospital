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
import com.entity.Doctor;
import com.entity.User;


public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			HttpSession session = request.getSession();
			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
			Doctor doctor = dao.login(email, password);

			if (doctor != null) {
				session.setAttribute("doctObj",doctor);
				response.sendRedirect("doctor/index.jsp");
			} else {
				session.setAttribute("errMes", "Invalid email and password !!");
				response.sendRedirect("doctor_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

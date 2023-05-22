package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBconnect;
import com.entity.Doctor;

public class UpdateDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String name = request.getParameter("name");
			String dob = request.getParameter("dob");
			String qualification = request.getParameter("qualification");
			String specialist = request.getParameter("spec");
			String email = request.getParameter("email");
			String mono = request.getParameter("mobno");
			String password = request.getParameter("password");
			
			int id = Integer.parseInt(request.getParameter("id"));

			Doctor doctor = new Doctor(id,name, dob, qualification, specialist, email, mono, password);

			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
			HttpSession session = request.getSession();

			if (dao.updateDoctor(doctor)) {
				session.setAttribute("sucMes", "Doctor Update Sucessfully !!");
				response.sendRedirect("admin/view_doctor.jsp");
			} else {
				session.setAttribute("errMes", "Something went wrong !!");
				response.sendRedirect("admin/view_doctor.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

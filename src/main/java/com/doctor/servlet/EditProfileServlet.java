package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBconnect;
import com.entity.Doctor;


public class EditProfileServlet extends HttpServlet {
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

			int id = Integer.parseInt(request.getParameter("id"));

			Doctor doctor = new Doctor(id, name, dob, qualification, specialist, email, mono, "");

			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
			HttpSession session = request.getSession();

			if (dao.editDoctorProfile(doctor)) {
				Doctor updateDoctor = dao.getDoctorById(id);
				session.setAttribute("sucMesd", "Doctor Update Sucessfully !!");
				session.setAttribute("doctObj", updateDoctor);
				response.sendRedirect("doctor/edit_profile.jsp");
				
			} else {
				session.setAttribute("errMesd", "Something went wrong !!");
				response.sendRedirect("doctor/edit_profile.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

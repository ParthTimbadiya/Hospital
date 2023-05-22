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

public class AddDoctor extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
			String name = request.getParameter("name");
			String dob = request.getParameter("dob");
			String qualification = request.getParameter("qualification");
			String specialist = request.getParameter("spec");
			String email = request.getParameter("email");
			String mono = request.getParameter("mobno");
			String password = request.getParameter("password");
			
			Doctor doctor = new Doctor(name, dob, qualification, specialist, email, mono, password);
			
			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
			HttpSession session = request.getSession();
			
			if(dao.registerDoctor(doctor)) {
				session.setAttribute("sucMes", "Doctor Added Sucessfully !!");
				response.sendRedirect("admin/doctor.jsp");
			}else {
				session.setAttribute("errMes", "Something went wrong !!");
				response.sendRedirect("admin/doctor.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

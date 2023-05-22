package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBconnect;
import com.entity.Appointment;

public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int userId = Integer.parseInt(request.getParameter("userid"));
		String fullName = request.getParameter("fullName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String appoint_date = request.getParameter("appDate");
		String email = request.getParameter("email");
		String mono = request.getParameter("mono");
		String diseases = request.getParameter("diseases");
		int doctorId = Integer.parseInt(request.getParameter("doctor"));
		String address = request.getParameter("address");

		Appointment ap = new Appointment(userId, fullName, gender, age, appoint_date, email, mono, diseases, doctorId,
				address, "pending");
		
		AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
		HttpSession session = request.getSession();
		
		if (dao.addAppointment(ap)) {
			session.setAttribute("sucMes", "Appointment Sucessfully");
			response.sendRedirect("user_appoinment.jsp");
		}else {
			session.setAttribute("errMes", "Something Went Wrong !! on Server");
			response.sendRedirect("user_appoinment.jsp");
		}
		
		

	}

}

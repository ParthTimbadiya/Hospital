package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBconnect;

/**
 * Servlet implementation class UpdateStatus
 */
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		int did = Integer.parseInt(request.getParameter("did"));
		String comm = request.getParameter("comment");
		
		AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
		
		HttpSession session = request.getSession();
		
		if (dao.updateCommentStatus(id, did, comm)) {
			
			session.setAttribute("sucMes", "Comment Updated");
			response.sendRedirect("doctor/patient.jsp");
			
		}else {
			
			session.setAttribute("errMes", "Something went wrong !! on server");
			response.sendRedirect("doctor/patient.jsp");
			
		}
		
		
	}

}

package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBconnect;


public class DeletDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	int id = Integer.parseInt(req.getParameter("id"));
	
	DoctorDao dao = new DoctorDao(DBconnect.getConnect());
	HttpSession session = req.getSession();
	
	if (dao.deletDoctor(id)) {
		session.setAttribute("sucMes", "Doctor Delete Sucessfully !!");
		resp.sendRedirect("admin/view_doctor.jsp");
	} else {
		session.setAttribute("errMes", "Something went wrong !!");
		resp.sendRedirect("admin/view_doctor.jsp");
	}
		
		
		
	}
  
	

}

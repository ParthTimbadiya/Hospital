package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBconnect;


public class AddSpecialist extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String spName = request.getParameter("spName");
		
		SpecialistDao dao = new SpecialistDao(DBconnect.getConnect());
		boolean f = dao.addSpecialist(spName);
		
		HttpSession session = request.getSession();
		
		if(f) {
			session.setAttribute("sucMes", "Specialist Added !!");
			response.sendRedirect("admin/index.jsp");
		}else {
			session.setAttribute("errMes", "Something went wrong !!");
			response.sendRedirect("admin/index.jsp");
		}
		
		
	}

}

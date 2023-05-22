<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@ include file="../componet/all_css_js.jsp"%>


</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<h5>Patients Details</h5>



				<table class="table table-hover table-bordered text-center">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment</th>
							<th scope="col">E-mail</th>
							<th scope="col">Mob No.</th>
							<th scope="col">Disease</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>

						</tr>
					</thead>
					<tbody>

						<%
						AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
						DoctorDao dao2 = new DoctorDao(DBconnect.getConnect());
						List<Appointment> list = dao.getAllAppointment();

						for (Appointment ap : list) {
							Doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>


						<tr>
							<th><%= ap.getFullName() %></th>
							<td><%= ap.getGender() %></td>
							<td><%= ap.getAge() %></td>
							<td><%= ap.getAppointment() %></td>
							<td><%= ap.getEmail() %></td>
							<td><%= ap.getMono() %></td>
							<td><%= ap.getDiseases() %></td>
							<td><%= d.getFullName() %></td>
							<td><%= ap.getAddress() %></td>
							<td><%= ap.getStatus() %></td>

						</tr>
						<%
						}
						%>



					</tbody>
				</table>

			</div>

		</div>

	</div>

</body>
</html>
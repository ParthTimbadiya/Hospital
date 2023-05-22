<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
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

<style type="text/css">
h1 {
	margin-top: 20px;
	font-family: 'Vollkorn', serif;
	color: #198754;
}
p{
font-family: 'Vollkorn', serif;
}
</style>
</head>
<body>


	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<%@ include file="navbar.jsp"%>


	<div class="container">

		<div class="row text-center my-5">

			<h1>Patients Details</h1>

			<div class="col-12">

				<c:if test="${not empty sucMes}">
					<p class="text-center text-success fs-3">
						<u> ${ sucMes } </u>
					</p>
					<c:remove var="sucMes" scope="session" />
				</c:if>

				<c:if test="${not empty errMes}">
					<p class="text-center text-danger fs-3">
						<u> ${ errMes } </u>
					</p>
					<c:remove var="errMes" scope="session" />
				</c:if>

				<table class="table table-bordered table-hover text-center">
					<thead>
						<tr>
							<th scope="col">Full - Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment Date</th>
							<th scope="col">E-mail</th>
							<th scope="col">Mob No.</th>
							<th scope="col">Diseases</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<%
						Doctor d = (Doctor) session.getAttribute("doctObj");
						AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
						List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());

						for (Appointment ap : list) {
						%>

						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%=ap.getAppointment()%></td>
							<td><%=ap.getEmail()%></td>
							<td><%=ap.getMono()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=ap.getStatus()%></td>
							<td>
								<%
								if ("pending".equals(ap.getStatus())) {
								%> <a href="comment.jsp?id=<%=ap.getId()%>"
								class="btn btn-outline-secondary btn-sm"><i
									class="fa-sharp fa-solid fa-comment me-2"></i>Commented</a>
							</td>
							<%
							} else {
							%>

							<a href="#"
								class="btn btn-outline-secondary btn-sm disabled"><i
								class="fa-sharp fa-solid fa-comment me-2"></i>Commented</a>


							<%
							}
							%>

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
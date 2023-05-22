<%@page import="com.entity.User"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="componet/all_css_js.jsp"%>


<style type="text/css">

/* user_appoinment */
.app_img {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url("img/hospi_build.jpeg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
}

.side_img {
	border-radius: 50%;
}

.app_form {
	box-shadow: 4px 4px 10px gray;
}

.inut_filds {
	margin-top: 20px;
	font-family: 'Vollkorn', serif;
}

h4 {
	margin-top: 20px;
	font-family: 'Vollkorn', serif;
	color: #198754;
}

form {
	padding: 10px;
}
</style>

</head>
<body>

	<%@ include file="componet/navbar.jsp"%>


	<c:if test="${empty userObj }">

		<c:redirect url="user_login.jsp"></c:redirect>

	</c:if>

	<div class="container-fluid">

		<div class="row">

			<div class="col-md-12 app_img"></div>

		</div>

	</div>



	<div class="container">

		<div class="row align-items-center justify-content-evenly my-5">

			<div class="col-md-8">
				<h4 class="text-center my-3 ">Appointment List</h4>

				<table class="table table-hover m-0 p-0 text-center table-bordered">
					<thead>
						<tr>
							<th scope="col">Full-Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appoint Date</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>


						<%
						User user = (User) session.getAttribute("userObj");
						AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
						DoctorDao dao2 = new DoctorDao(DBconnect.getConnect());
						List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());

						for (Appointment ap : list) {
							Doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>

						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%=ap.getAppointment()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=d.getFullName()%></td>
							<td>
								<%
								if ("pending".equals(ap.getStatus())) {
								%> <a href="#" class="btn btn-sm btn-outline-warning">
									Pending </a> <%
 } else {
 %> <%= ap.getStatus() %> <%
 }
 %>
							</td>
						</tr>


						<%
						}
						%>


					</tbody>
				</table>

			</div>

			<div class="col-md-3 ">

				<img class="img-fluid side_img" alt="doctor" src="img/team_4.jpg">

			</div>

		</div>

	</div>

	<%@ include file="componet/footer.jsp"%>



</body>
</html>
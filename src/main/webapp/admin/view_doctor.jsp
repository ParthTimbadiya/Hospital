<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@ include file="../componet/all_css_js.jsp"%>

<link rel="stylesheet" href="../css/style.css" />
<style type="text/css">
.doctor {
	box-shadow: 3px 3px 10px gray;
	padding: 10px;
}

h4 {
	color: #008000;
	font-family: 'Vollkorn', serif;
}
</style>
</head>
<body>


	<%@ include file="../admin/navbar.jsp"%>


	<div class="container">

		<div class="row mt-3 justify-content-evenly">

			<div class="col-md-12 doctor ">

				<h4 class="text-center mb-3">Doctor details</h4>

				<c:if test="${not empty sucMes}">
					<p class="text-center text-success fs-5">
						<u> ${ sucMes } </u>
					</p>
					<c:remove var="sucMes" scope="session" />
				</c:if>

				<c:if test="${not empty errMes}">
					<p class="text-center text-danger fs-5">
						<u> ${ errMes } </u>
					</p>
					<c:remove var="errMes" scope="session" />
				</c:if>



				<table class="table table-hover m-0 p-0 text-center table-bordered">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Qualification</th>
							<th scope="col">Specialist</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No.</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<%
						DoctorDao dao2 = new DoctorDao(DBconnect.getConnect());
						List<Doctor> list2 = dao2.getAllDoctor();

						for (Doctor d : list2) {
						%>

						<tr class="text-center">

							<td><%=d.getFullName()%></td>
							<td><%=d.getDob()%></td>
							<td><%=d.getQualification()%></td>
							<td><%=d.getSpecialist()%></td>
							<td><%=d.getEmail()%></td>
							<td><%=d.getMobNo()%></td>
							<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
								class="btn btn-sm btn-success"> Edit </a> <a href="../deletDoctor?id=<%= d.getId() %>"
								class="btn btn-sm btn-danger"> Delet </a></td>

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
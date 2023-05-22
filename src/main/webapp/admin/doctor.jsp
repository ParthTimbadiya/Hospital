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
h4, .btn_sub{
	color: #008000;
	font-family: 'Vollkorn', serif;
}
</style>
</head>
<body>


	<%@ include file="../admin/navbar.jsp"%>


	<div class="container">

		<div class="row mt-3 ">

			<div class="col-md-6 offset-md-3 doctor">

				<h4 class="text-center mb-3">Add Doctor</h4>

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


				<form action="../addDoctor" method="post">
					<div class="mb-3">
						<label for="fullName" class="form-label">Full - Name</label> <input
							required type="text" class="form-control" id="fullName"
							name="name">
					</div>
					<div class="mb-3">
						<label for="dob" class="form-label">DOB</label> <input required
							type="date" class="form-control" id="dob" name="dob">
					</div>
					<div>
						<label for="qualification" class="form-label">Qualification</label>
						<input required type="text" class="form-control"
							id="qualification" name="qualification">
					</div>

					<div>
						<label for="select" class="form-label">Specialist</label> <select
							name="spec" id="select" class="form-control" required>
							<option>-- select --</option>

							<%
							SpecialistDao dao = new SpecialistDao(DBconnect.getConnect());
							List<Specialist> list = dao.getAllSpecialists();

							for (Specialist s : list) {
							%>

							<option><%=s.getSpecialistName()%></option>

							<%
							}
							%>
						</select>
					</div>

					<div>
						<label for="email" class="form-label">Email</label> <input
							required type="text" class="form-control" id="email" name="email">
					</div>

					<div>
						<label for="mobno" class="form-label">Mob No.</label> <input
							required type="text" class="form-control" id="mobno" name="mobno">
					</div>

					<div>
						<label for="password" class="form-label">Password</label> <input
							required type="text" class="form-control" id="password"
							name="password">
					</div>

					<br>

					<button class="btn btn-outline-success col-md-12 btn_sub">Submit</button>

				</form>

			</div>

		</div>

	</div>


</body>
</html>
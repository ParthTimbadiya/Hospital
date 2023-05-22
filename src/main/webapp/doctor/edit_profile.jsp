<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
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
.form {
	font-family: 'Vollkorn', serif;
	box-shadow: 3px 3px 8px gray;
	padding: 20px;
	margin: 20px 0;
}

h5 {
	color: #198754;
	font-family: 'Vollkorn', serif;
	text-align: center;
	margin: 10px 0;
}

p {
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

		<div class="row justify-content-center">



			<div class="col-md-4">


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


				<form action="../doctorPasswordChange" method="post" class="form">
					<div class="mb-3">
						<label for="npass" class="form-label">Enter New Pasword</label> <input
							type="text" class="form-control" id="npass" name="newPassword">

					</div>
					<div class="mb-3">
						<label for="opass" class="form-label">Enter Old Pasword</label> <input
							type="text" class="form-control" id="opass" name="oldPassword">

					</div>

					<input type="hidden" value="${doctObj.id}" name="uid" />




					<button type="submit" class="btn btn-outline-secondary">Change
						Password</button>
				</form>


			</div>


			<div class="col-md-6">



				<form action="../editProfileServlet" method="post" class="form">

					<c:if test="${not empty sucMesd}">
						<p class="text-center text-success fs-3">
							<u> ${ sucMesd } </u>
						</p>
						<c:remove var="sucMesd" scope="session" />
					</c:if>

					<c:if test="${not empty errMesd}">
						<p class="text-center text-danger fs-3">
							<u> ${ errMesd } </u>
						</p>
						<c:remove var="errMesd" scope="session" />
					</c:if>

					<h5>Edit Profile</h5>
					<div class="mb-3">
						<label for="fullName" class="form-label">Full - Name</label> <input
							required type="text" class="form-control" id="fullName"
							name="name" value="${doctObj.fullName }">
					</div>
					<div class="mb-3">
						<label for="dob" class="form-label">DOB</label> <input required
							type="date" class="form-control" id="dob" name="dob"
							value="${doctObj.dob }">
					</div>
					<div>
						<label for="qualification" class="form-label">Qualification</label>
						<input required type="text" class="form-control"
							id="qualification" name="qualification"
							value="${doctObj.qualification }">
					</div>

					<div>
						<label for="select" class="form-label">Specialist</label> <select
							name="spec" id="select" class="form-control" required>
							<option>${doctObj.specialist }</option>

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
							required readonly type="email" class="form-control" id="email"
							name="email" value="${doctObj.email }">
					</div>

					<div>
						<label for="mobno" class="form-label">Mob No.</label> <input
							required type="text" class="form-control" id="mobno"
							value="${doctObj.mobNo }" name="mobno">
					</div>


					<input type="hidden" value="${doctObj.id}" name="id" /> <br>

					<button class="btn btn-outline-secondary col-md-6 btn_sub">Update</button>

				</form>

			</div>

		</div>

	</div>


</body>
</html>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	height: 70vh;
	width: 80%;
	box-shadow: 4px 4px 10px gray;
}

.app_form {
	box-shadow: 4px 4px 10px gray;
}

.inut_filds, h4 {
	margin-top: 20px;
	font-family: 'Vollkorn', serif;
}

form {
	padding: 10px;
}
textarea{
	resize: none;
}
</style>

</head>
<body>

	<%@ include file="componet/navbar.jsp"%>

	<div class="container-fluid">

		<div class="row">

			<div class="col-md-12 app_img"></div>

		</div>

	</div>



	<div class="container">

		<div class="row align-items-center my-5">

			<div class="col-md-6">
				<img class="img-fluid side_img" alt="doctor"
					src="img/form_doctor.jpg">
			</div>

			<div class="col-md-6 app_form">

				<h4 class="text-center my-3 ">User Appointment</h4>

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

				<form class="row" action="appointmentServlet" method="post">
					<input type="hidden" name="userid" value="${userObj.id }">

					<div class="col-md-6 inut_filds">

						<label for="fullname" class="form-lable">Full Name</label> <input
							required="required" id="fullname" name="fullName"
							class="form-control" type="text" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="Gender" class="form-lable">Gender</label> <select
							class="form-control" name="gender" required="required">

							<option value="male">Male</option>
							<option value="female">Female</option>

						</select>

					</div>

					<div class="col-md-6 inut_filds">

						<label for="age" class="form-lable">Age</label> <input
							required="required" id="age" name="age" class="form-control"
							type="number" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="appDate" class="form-lable">Appoinment Date</label> <input
							required="required" id="appDate" name="appDate"
							class="form-control" type="date" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="email" class="form-lable">E-mail</label> <input
							required="required" id="email" name="email" class="form-control"
							type="email" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="mono" class="form-lable">Phone-No</label> <input
							required="required" id="mono" name="mono" class="form-control"
							type="number" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="diseases" class="form-lable">Diseases</label> <input
							required="required" id="diseases" name="diseases"
							class="form-control" type="text" />

					</div>

					<div class="col-md-6 inut_filds">

						<label for="doctor" class="form-lable">Doctor</label> <select
							class="form-control" name="doctor" required="required">

							<option value="male">-- select --</option>

							<%
							DoctorDao dao = new DoctorDao(DBconnect.getConnect());
							List<Doctor> list = dao.getAllDoctor();

							for (Doctor d : list) {
							%>
							
							<option value="<%= d.getId() %>"> <%= d.getFullName() %> (<%= d.getSpecialist() %>)</option>
							
							<%
							}
							%>


						</select>

					</div>

					<div class="col-12 inut_filds">

						<label for="fullAddress" class="form-lable">Full-Address</label>
						<textarea rows="3" cols="" class="form-control"
							required="required" name="address" id="fullAddress"></textarea>
					</div>

					<c:if test="${empty userObj}">
						<a href="user_login.jsp"
							class="col-md-6 offset-md-3 my-5 btn btn-outline-success">
							Submit </a>
					</c:if>

					<c:if test="${not empty userObj}">
						<button class="my-4 col-md-6 offset-md-3 btn btn-outline-success">
							Submit</button>
					</c:if>


				</form>



			</div>

		</div>

	</div>

	<%@ include file="componet/footer.jsp"%>



</body>
</html>
<%@page import="com.entity.Appointment"%>
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

<style type="text/css">
.app_img {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url("../img/hospi_build.jpeg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
}

h5 {
	margin-top: 20px;
	font-family: 'Vollkorn', serif;
	color: #198754;
	text-align: center;
}

.form {
	padding: 20px;
	box-shadow: 4px 4px 10px gray;
	margin: 30px 0;
}

textarea {
	resize: none;
}
</style>
</head>
<body>



	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<%@ include file="navbar.jsp"%>


	<div class="container-fluid">

		<div class="row">

			<div class="col-md-12 app_img"></div>

		</div>

	</div>


	<div class="container">

		<div class="row justify-content-center">

			<div class="col-md-6 offset-md-3 form">



				<form action="../updateStatus" method="post">

					<h5>Patients Comment</h5>

					<div class="row">

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao = new AppointmentDao(DBconnect.getConnect());
						Appointment ap = dao.getAllAppointmentByid(id);
						%>



						<div class="col-md-6">
							<label for="pname">Patient Name</label> <input id="pname"
								value="<%= ap.getFullName() %>" name="pname" type="text" readonly class="form-control" />
						</div>

						<div class="col-md-6">
							<label for="age">Age</label> <input id="age" value="<%= ap.getAge() %>" name="age"
								type="text" readonly class="form-control" />
						</div>

						<div class="col-md-6">
							<label for="mono">Mob No.</label> <input id="mono" value="<%= ap.getMono() %>"
								name="mono" type="text" readonly class="form-control" />
						</div>

						<div class="col-md-6">
							<label for="disease">Disease</label> <input id="disease" value="<%= ap.getDiseases() %>"
								name="disease" type="text" readonly class="form-control" />
						</div>

						<div class="col-md-12">
							<br> <label for="comment">Comment</label>
							<textarea row="3" col="" id="comment" name="comment"
								required class="form-control"></textarea>
						</div>

						<input type="hidden" name="id" value="<%= ap.getId() %>" /> <input type="hidden"
							name="did" value="<%= ap.getDoctorId() %>" />


						<button class="mt-3 btn btn-outline-secondary col-md-6 offset-md-3">Submit</button>


					</div>




				</form>
			</div>


		</div>

	</div>

</body>
</html>
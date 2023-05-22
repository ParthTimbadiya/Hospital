<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
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
.card {
	margin-top: 15px;
	cursor: pointer;
}

.card-body {
	font-family: 'Vollkorn', serif;
	color: #198754;
}

p {
	margin-top: 10px;
	font-weight: 600;
}

span {
	font-weight: 600;
	font-size: 20px;
}
</style>

</head>
<body>

	<%@ include file="../admin/navbar.jsp"%>

	<c:if test="${empty adminObj }">
		<c:redirect url="../addmin_login.jsp"></c:redirect>
	</c:if>


	<div class="container my-5">


		<h2>Admin Deshbord !!</h2>


		<c:if test="${not empty sucMes}">
			<p class="text-center text-secondary fs-4">
				<u> ${ sucMes } </u>
			</p>
			<c:remove var="sucMes" scope="session" />
		</c:if>

		<c:if test="${not empty errMes}">
			<p class="text-center text-danger fs-4">
				<u> ${ errMes } </u>
			</p>
			<c:remove var="errMes" scope="session" />
		</c:if>

		<div class="row">
		
		<% 
			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
		%>

			<div class="col-md-3">

				<div class="card">

					<div class="card-body">

						<i class="fas fa-user-md fa-3x"></i>
						<p class="fs-4 text-center">Doctor</p>
						<br /> <span><%= dao.countDoctor() %></span>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">

					<div class="card-body">

						<i class="fas fa-user-circle fa-3x"></i>
						<p class="fs-4 text-center">User</p>
						<br /> <span><%= dao.countUser() %></span>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">

					<div class="card-body">

						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Total Appointment</p>
						<br /> <span><%= dao.countAppoinment() %></span>
					</div>
				</div>

			</div>

			<div class="col-md-3" data-bs-toggle="modal"
				data-bs-target="#staticBackdrop">

				<div class="card">

					<div class="card-body">

						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Specialist</p>
						<br /> <span><%= dao.countSpecialist() %></span>
					</div>
				</div>

			</div>




			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="staticBackdropLabel">Modal
								title</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>


						<form action="../addSpecialist" method="post">
							<div class="modal-body">
								<div class="mb-3">
									<label for="spName" class="form-label">Enter Specialist
										Name</label> <input required="required" type="text" class="form-control" id="spName"
										name="spName">
								</div>
							</div>
							<div class="modal-footer">

								<button type="submit" class="btn btn-outline-success">Add</button>
								<button type="button" class="btn btn-danger"
									data-bs-dismiss="modal">Close</button>
							</div>
						</form>


					</div>
				</div>
			</div>

		</div>

	</div>



</body>
</html>
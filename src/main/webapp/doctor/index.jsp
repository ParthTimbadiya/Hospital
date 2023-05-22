<%@page import="com.entity.Doctor"%>
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

<%@ include file="../componet/all_css_js.jsp"%>

<style type="text/css">
h1 {
	text-align: center;
	color: #198754;
	font-family: 'Vollkorn', serif;
	margin: 20px 0;
}

.card {
	margin-top: 15px;
	cursor: pointer;
	box-shadow: 3px 3px 10px gray;
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

	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<%@ include file="navbar.jsp"%>

	<h1>Doctor Deshbord</h1>


	<div class="container">

		<div class="row justify-content-center">

			<%
			Doctor d = (Doctor) session.getAttribute("doctObj");
			DoctorDao dao = new DoctorDao(DBconnect.getConnect());
			%>

			<div class="col-md-3">

				<div class="card">

					<div class="card-body">

						<i class="fas fa-user-md fa-3x"></i>
						<p class="fs-4 text-center">Doctor</p>
						<br /> <span><%=dao.countDoctor()%></span>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">

					<div class="card-body">

						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Total Appointment</p>
						<br /> <span><%= dao.countAppoinmentByDoctorId(d.getId()) %></span>
					</div>
				</div>

			</div>

		</div>

	</div>

</body>
</html>
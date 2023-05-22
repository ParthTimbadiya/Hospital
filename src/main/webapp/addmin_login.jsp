<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addmin :: Login</title>

<%@ include file="componet/all_css_js.jsp"%>

</head>
<body>

	<%@ include file="componet/navbar.jsp"%>


	<div class="container">

		<div class="row my-5">

			<div class="col-md-4 offset-md-4 doctor_form">

				<h4 class="text-center mb-3">Admin Login</h4>
				
				<c:if test="${not empty sucMes}">
					<p class="text-center text-success fs-3"> <u> ${ sucMes } </u></p>
					<c:remove var="sucMes" scope="session"/>
				</c:if>
				
				<c:if test="${not empty errMes}">
					<p class="text-center text-danger fs-3"> <u> ${ errMes } </u></p>
					<c:remove var="errMes" scope="session"/>
				</c:if>

				<form action="adminLogin" method="post">
					<div class="mb-3">
						<label for="email_field" class="form-label">Email address</label>
						<input required="required" type="email" class="form-control"
							id="email_field" name="email">

					</div>
					<div class="mb-3">
						<label for="password_field" class="form-label">Password</label> <input
							type="password" class="form-control" required="required"
							id="password_field" name="password">
					</div>

					<button type="submit" class="btn btn-success col-md-12">Login</button>
				</form>

			</div>

		</div>

	</div>


</body>
</html>
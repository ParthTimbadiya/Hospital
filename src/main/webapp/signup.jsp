<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored="false" %> 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@ include file="componet/all_css_js.jsp"%>
</head>
<body>

	<%@ include file="componet/navbar.jsp"%>


	<div class="container">

		<div class="row my-5">

			<div class="col-md-4 offset-md-4 doctor_form">

				<h4 class="text-center mb-3">Usre Register</h4>
				
				<c:if test="${not empty sucMes}">
					<p class="text-center text-success fs-3"> ${ sucMes } </p>
					<c:remove var="sucMes" scope="session"/>
				</c:if>
				
				<c:if test="${not empty errMes}">
					<p class="text-center text-danger fs-3"> ${ errMes }</p>
					<c:remove var="errMes" scope="session"/>
				</c:if>

				<form action="userRegister" method="post">
					<div class="mb-3">
						<label for="name_field" class="form-label">Full-Name</label>
						<input required="required" type="text" class="form-control"
							id="name_field" name="name">

					</div>
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

					<button type="submit" class="btn btn-success col-md-12">Register</button>
				</form>

			</div>

		</div>

	</div>

</body>
</html>
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
form {
	font-family: 'Vollkorn', serif;
	box-shadow: 3px 3px 8px gray;
	padding: 20px;
	margin: 20px 0;
}
</style>


</head>
<body>


	<%@ include file="componet/navbar.jsp"%>
	
	
	<c:if test="${empty userObj }">
	
		<c:redirect url="user_login.jsp"></c:redirect>
	
	</c:if>


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


				<form action="changePassword" method="post">
					<div class="mb-3">
						<label for="npass" class="form-label">Enter New Pasword</label> <input
							type="text" class="form-control" id="npass" name="newPassword">

					</div>
					<div class="mb-3">
						<label for="opass" class="form-label">Enter Old Pasword</label> <input
							type="text" class="form-control" id="opass" name="oldPassword">

					</div>

					<input type="hidden" name="uid" value="${userObj.id }" />

					<button type="submit" class="btn btn-outline-success">Change
						Password</button>
				</form>


			</div>

		</div>

	</div>

</body>
</html>
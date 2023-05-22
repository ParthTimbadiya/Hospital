<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-sharp fa-regular fa-hospital"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="addmin_login.jsp"><i
							class=" fa-sharp fa-solid fa-right-to-bracket"></i> ADMIN</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp"><i
							class="fa-sharp fa-solid fa-user-doctor"></i> DOCTOR</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appoinment.jsp"><i
							class="fa-sharp fa-regular fa-calendar-check"></i> APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp"><i
							class="fa-sharp fa-solid fa-user fa-beat fa-xs"></i> USER</a></li>

				</c:if>


				<c:if test="${not empty userObj }">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appoinment.jsp"><i
							class="fa-sharp fa-regular fa-calendar-check"></i> APPONTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_appointment.jsp"><i
							class="fa-sharp fa-regular fa-calendar-check"></i>VIEW
							APPONTMENT</a></li>
							
							
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="fa-solid fa-user"></i> ${userObj.fullName }
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>
							<li><hr class="dropdown-divider"></li>

						</ul></li>

				</c:if>




			</ul>

		</div>
	</div>
</nav>
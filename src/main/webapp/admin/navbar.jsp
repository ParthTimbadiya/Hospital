

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i
			class="fa-sharp fa-regular fa-hospital"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"> HOME </a></li>
				<li class="nav-item"><a class="nav-link active"
					href="doctor.jsp"><i class="fa-sharp fa-solid fa-user-doctor"></i>
						DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="view_doctor.jsp"><i class="fa-solid fa-users"></i> VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="patient.jsp"><i
						class="fa-sharp fa-regular fa-calendar-check"></i> PATIENT</a></li>

			</ul>



			<form action="" method="post">

				<div class="dropdown">
					<button class="btn btn-outline-light dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						Admin <i class="fa-sharp fa-solid fa-user fa-beat fa-xs"></i>
					</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>

					</ul>
				</div>

			</form>





		</div>
	</div>
</nav>
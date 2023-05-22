<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style type="text/css">
body {
	font-size: 16px;
	color: #757575;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
}

.foot-logo {
	width: 150px;
}

.icon {
	width: 40px;
	height: 40px;
	border: 1px solid #ccc;
}

.first-foot a {
	color: #2ec8a6;
}

.user a i {
	color: #2ec8a6;
}

.user a {
	color: #ccc;
	transition: 0.5s all;
}

.user a:hover {
	color: #2ec8a6;
}

.user p {
	font-size: 14px;
}

.useritime p span {
	color: #fff;
}

.list a {
	color: #ccc;
	transition: 0.5s all;
}

.list li {
	transition: 0.5s all;
}

.line {
	border-bottom: 2px solid #757575;
}

.list li:hover {
	background-color: #2ec8a6;
	color: #fff !important;
}
</style>
</head>
<body>

	<footer class="foot-wrpper bg-black py-5">
		<div class="container line">
			<div class="row">
				<div class="first-foot col-12 mb-4 col-md-6 col-lg-3 ">
					<div class="foot-logo">
						<img class="w-100" src="img/index_2_logo.png" alt="">
					</div>
					<p class="my-2">Proin gravida nibh vel velit auctor aliquet.
						Aenean sollicitudin, lorem quis bibendum auctor.</p>
					<a href="#">Read more <i class="ms-1 bi bi-arrow-right"></i></a>
					<div class="details col-12 mt-3">
						<div
							class="my-2 address d-flex align-itmes-center justify-content-start">
							<span
								class="icon text-white d-flex align-items-center justify-content-center"><i
								class="bi bi-geo-alt-fill"></i></span>
							<p class="text-white col-10 ms-2 mb-0 align-self-center">Address
								: -512/Mumbai, India</p>
						</div>
						<div
							class="my-2 address d-flex align-itmes-center justify-content-start">
							<span
								class="icon text-white d-flex align-items-center justify-content-center"><i
								class="bi bi-geo-alt-fill"></i></span>
							<p class="text-white col-10 ms-2 mb-0 align-self-center">Call
								us : +91 (978) 65253 48</p>
						</div>
						<div
							class="my-2 address d-flex align-itmes-center justify-content-start">
							<span
								class="icon text-white d-flex align-items-center justify-content-center"><i
								class="bi bi-geo-alt-fill"></i></span>
							<p class="text-white col-10 ms-2 mb-0 align-self-center">Email
								: medihome@gmail.com</p>
						</div>
					</div>
				</div>
				<div class="foot-second col-12 mb-4 col-md-6 col-lg-3 ">
					<div class="foot-head mb-2">
						<h2 class="text-white h2">Instagram</h2>
						<img class="my-3" src="img/line.png" alt="">
						<div class="row mt-2 justify-content-between">
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_1.jpg" alt="">
							</div>
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_2.jpg" alt="">
							</div>
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_3.jpg" alt="">
							</div>
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_4.jpg" alt="">
							</div>
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_5.jpg" alt="">
							</div>
							<div class="col-4 mb-2 ">
								<img class="w-100" src="img/footer_6.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="foot-second mb-4 col-12 col-md-6 col-lg-3 ">
					<div class="foot-head ms-lg-5">
						<h2 class="text-white h2 fw-5">Userful</h2>
						<img class="my-3" src="img/line.png" alt="">
						<ul class="user mt-2 m-0 p-0">
							<li><a
								class="my-2 text-decoration-none d-block  text-capitalize"
								href="index.jsp"><i class="me-2 bi bi-caret-right-fill"></i>Home</a></li>
							<li><a
								class="my-2 text-decoration-none d-block  text-capitalize"
								href="addmin_login.jsp"><i class="me-2 bi bi-caret-right-fill"></i>Admin</a></li>
							<li><a
								class="my-2 text-decoration-none d-block  text-capitalize"
								href="doctor_login.jsp"><i class="me-2 bi bi-caret-right-fill"></i>Doctor</a></li>
							<li><a
								class="my-2 text-decoration-none d-block  text-capitalize"
								href="user_appoinment.jsp"><i class="me-2 bi bi-caret-right-fill"></i>Appoinment</a></li>
							<li><a
								class="my-2 text-decoration-none d-block  text-capitalize"
								href="user_login.jsp"><i class="me-2 bi bi-caret-right-fill"></i>login / signup</a></li>
						</ul>
					</div>
				</div>
				<div class="foot-second mb-4 col-12 col-md-6 col-lg-3 ">
					<div class="foot-head">
						<h2 class="text-white h2 fw-5">Opening Hours</h2>
						<img class="my-3" src="img/line.png" alt="">
						<div class="useritime mt-2">
							<p class="col-12 d-flex ">
								Monday – Friday ------<span class="d-inline-block">09:00-17:00</span>
							</p>
							<p class="col-12 d-flex ">
								Saturday -----------------<span class="d-inline-block">09:30-17:00</span>
							</p>
							<p class="col-12 d-flex ">
								Sunday -------------------<span class="d-inline-block">10:30-18:00</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container mt-3">
			<div
				class="row justify-content-md-evenly justify-content-center align-items-center">
				<p class="col-12 col-md-6 text-center text-md-left">Copyright ©
					2023 - hospital.com</p>
				<ul
					class=" col-md-4 list d-flex align-items-center justify-content-evenly col-9 m-0 p-0">
					<li class="icon d-flex align-items-center justify-content-center"><a
						href="#"><i class="bi bi-facebook"></i></a></li>
					<li class="icon d-flex align-items-center justify-content-center"><a
						href="#"><i class="bi bi-twitter"></i></a></li>
					<li class="icon d-flex align-items-center justify-content-center"><a
						href="#"><i class="bi bi-instagram"></i></a></li>
					<li class="icon d-flex align-items-center justify-content-center"><a
						href="#"><i class="bi bi-linkedin"></i></a></li>
				</ul>
			</div>
		</div>
	</footer>

</body>
</html>
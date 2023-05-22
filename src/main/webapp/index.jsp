<%@page import="com.db.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index :: pages</title>

<%@ include file="componet/all_css_js.jsp"%>

</head>
<body>

	<%@ include file="componet/navbar.jsp"%>
	
	
	


	<!-- carousel strat -->

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/image-1.jpg" class="d-block w-100 car_img" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>TOTAL HEALTH CARE SOLUSTION</h1>
					<p class="main_text">Proin gravida nibh vel velit auctor
						aliquet. Aenean sollicitudin at the good health for you</p>
					<span class="car_sm_text1">MEDICAL</span> <span
						class="car_sm_text2">SERVICES</span>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/image-2.jpg" class="d-block w-100 car_img" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>YOUR FIRST STEP TOWARDS ORAL HEALTH</h1>
					<p class="main_text">Proin gravida nibh vel velit auctor
						aliquet. Aenean sollicitudin at the good health for you</p>
					<span class="car_sm_text1">MEDICAL</span> <span
						class="car_sm_text2">SERVICES</span>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/image-3.jpg" class="d-block w-100 car_img" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1 class="text-white">EMERGENCY CARE</h1>
					<p class="main_text text-white">Proin gravida nibh vel velit auctor
						aliquet. Aenean sollicitudin at the good health for you</p>
					<span class="car_sm_text1">MEDICAL</span> <span
						class="car_sm_text2">SERVICES</span>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- carsoule end  -->


	<!-- about start  -->


	<div class="container">

		<div class="row justify-content-center align-items-center my-5">

			<div class=" col-md-4">
				<img class="img-fluid" alt="doctor" src="img/section2.jpg">
			</div>

			<div class="col-12 col-md-8">

				<h2 class="about_text text-success">Specialty Medicine with
					Compassion and Car Proin gravida nibh vel velit</h2>
				<div class="container">
					<div class="row justify-content-between">
						<div class="content_two col-md-5">Proin gravida nibh vel
							velit auctor aliquet. Aenean sollicitudin at the good health for
							you.</div>

						<div class="content_two col-md-5">Aenean sollicitudin, lorem
							quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem
							nibh id elit. Duis sed odio sit.</div>

						<div class="content_two col-12">Sollicitudin, lorem quis
							bibe u auctor, nisi elit conat ipsu, nec sagittis sem ni id elit.
							Duis sed odio sit amet nibh vulpute cursus.</div>
					</div>
				</div>
			</div>

		</div>

	</div>


	<!-- about end  -->


	<!-- card start  -->


	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-md-8">

				<h2>MEET OUR SPECIALISTS</h2>

				<p class="text-center card_content">Proin gravida nibh vel velit
					auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,
					nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed
					odio sit amet nibh vulputate.</p>

			</div>

		</div>

	</div>


	<div class="container">

		<div class="row my-5">

			<div class="col-md-3">

				<div class="card">
					<img src="img/team_3.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h4>Samauani Simi</h4>
						<strong>(CEO & Chairman)</strong>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">
					<img src="img/team_2.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h4>Dr.Siva Kumar</h4>
						<strong>(Chief Doctor)</strong>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">
					<img src="img/team_1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h4>Dr.Niuise Paule</h4>
						<strong>(Heptologist)</strong>
					</div>
				</div>

			</div>

			<div class="col-md-3">

				<div class="card">
					<img src="img/team_4.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h4>Dr.Mathue Samuel</h4>
						<strong>(Chief Doctor)</strong>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- card end  -->


	<!-- footer -->

	<%@ include file="componet/footer.jsp"%>











</body>
</html>
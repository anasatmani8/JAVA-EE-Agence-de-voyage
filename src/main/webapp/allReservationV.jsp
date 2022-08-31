<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Gallery - MeFamily Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!-- =======================================================
  * Template Name: MeFamily - v4.7.0
  * Template URL: https://bootstrapmade.com/family-multipurpose-html-bootstrap-template-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div
			class="container d-flex align-items-center justify-content-between">

			<h1 class="logo">
				<a href="index.html">Mes reservations</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->


			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="checkReservation">Mes Reservations</a></li>
					<li><a href="events.html">Events</a></li>
					<li><a class="active" href="gallery.html">Gallery</a></li>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">

					<ol>
						<li><a href="index.html">Home</a></li>
						<li>Gallery</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Gallery Section ======= -->
		<section id="gallery" class="gallery">
			<div class="container">
				<h2 style="margin-left: 500px;">

					Hello MR.<%
				out.println(session.getAttribute("utilsateur"));
				%>
				</h2>
				<br>
				<h3 style="margin-left: 500px;">Voici vos reservations</h3>
				<br>
				<p
					style="color: red; font-size: 30px; margin-left: 15px; margin-bottom: -0.9rem;">
					${nbrR}</p>
				<p>
					<i class='fas fa-shopping-cart' style='font-size: 36px'></i>
				</p>

				<c:forEach items="${listeReV}" var="e">

					<div style="box-shadow: 6px 6px 6px black;">


						<div class="row gallery-container">

							<div class="col-lg-4 col-md-6 gallery-item filter-home">
								<div class="gallery-wrap">

									<img src="data:image/jpg;base64,${e.getBaseImage()}" /> <input
										type="hidden" value="${idClient}" name="idClient"> <input
										type="hidden" value="${idVoyage}" name="idVoyage"> <input
										type="hidden" value="${idDateVoyage}" name="idDateVoyage">
									<div class="gallery-info">


										<div class="gallery-links">
											<!--  	<h4><c:out value="${vva.getNom_voyage()}"></c:out></h4>-->
										</div>
									</div>
								</div>
							</div>

						</div>

						<div>
							<p>
								<strong>date depart :</strong>
								<c:out value="${e.getDate_depart()}"></c:out>
							</p>
							<p>
								<strong>date fin :</strong>
								<c:out value="${e.getDate_fin()}"></c:out>
							</p>
							<p>
								<strong>prix :</strong>
								<c:out value="${e.getPrix()}"></c:out>
								Dh
							</p>
							<p>
								<strong>Nom Hotel :</strong>
								<c:out value="${e.getDestination()}"></c:out>
							</p>
							<input class="about-view packages-btn" type="button"
								onclick="window.location.href = 'libererReservationV';"
								style="background-color: #ba0202;" value="Liberer" />

						</div>
					</div>

				</c:forEach>
			</div>
		</section>
		<!-- End Gallery Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="container">
			<h3>MeFamily</h3>
			<p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis
				magni eligendi fuga maxime saepe commodi placeat.</p>
			<div class="social-links">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
			<div class="copyright">
				&copy; Copyright <strong><span>MeFamily</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/family-multipurpose-html-bootstrap-template-free/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></scra</script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>


</body>

</html>
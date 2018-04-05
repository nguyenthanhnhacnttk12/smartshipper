<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Thanh Nha &mdash; SmarthShipper</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="do an tot nghiep 2018" />
<meta name="keywords"
	content="ship,shiponline,shipper online, thanh nha, nha, nhatnguyen, saigon, hochiminh" />
<meta name="author" content="nguyenthanhnha" />


<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />


<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css" />">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/icomoon.css" />">
<!-- Themify Icons-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/themify-icons.css" />">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css" />">

<!-- Magnific Popup -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/magnific-popup.css" />">

<!-- Owl Carousel  -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.carousel.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.theme.default.min.css" />">

<!-- Theme style  -->
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">


<script src="<c:url value="/resources/js/modernizr-2.6.2.min.js"/>"></script>

<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<!-- jQuery Easing -->
<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
<!-- Bootstrap -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- Waypoints -->
<script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
<!-- Carousel -->
<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
<!-- countTo -->
<script src="<c:url value="/resources/js/jquery.countTo.js"/>"></script>
<!-- Magnific Popup -->
<script
	src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/js/magnific-popup-options.js"/>"></script>
<!-- Main -->
<script src="<c:url value="/resources/js/main.js"/>"></script>

</head>
<body>
	<div class="gtco-loader"></div>

	<div id="page">
		<div class="page-inner">
			<jsp:include page="header.jsp"></jsp:include>
			<header id="gtco-header" class="gtco-cover gtco-cover-sm"
				role="banner"
				style="background-image: url(<c:url value="/resources/img/index/index-news2.jpg"/>)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="row row-mt-15em">

							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">Đừng e ngại</span>
								<h1>Hãy Liên lạc.</h1>
							</div>

						</div>

					</div>
				</div>
			</div>
			</header>


			<div class="gtco-section border-bottom">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-12">
							<div class="col-md-6 animate-box">
								<h3>Liên Hệ</h3>
								<form action="#">
									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="name">Họ và Tên</label> <input
												type="text" id="name" class="form-control"
												placeholder="Tên của bạn">
										</div>

									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="email">Email</label> <input
												type="text" id="email" class="form-control"
												placeholder="Your email address">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="subject">Subject</label> <input
												type="text" id="subject" class="form-control"
												placeholder="Your subject of this message">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="message">Message</label>
											<textarea name="message" id="message" cols="30" rows="10"
												class="form-control" placeholder="Write us something"></textarea>
										</div>
									</div>
									<div class="form-group">
										<input type="submit" value="Send Message"
											class="btn btn-primary">
									</div>

								</form>
							</div>
							<div class="col-md-5 col-md-push-1 animate-box">

								<div class="gtco-contact-info">
									<h3>Contact Information</h3>
									<ul>
										<li class="address">22/7/3 Thạnh xuân 1, Thạnh xuân, Quận
											12 <br> Thành phố Hồ Chí Minh
										</li>
										<li class="phone"><a href="tel://01219835866">+
												841219 835 866</a></li>
										<li class="email"><a href="mailto:shiponline@gmail.com">shiponline@gmail.com</a></li>
										<li class="url"><a href="http://www.shiponline.vn">shiponline.vn</a></li>
									</ul>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="Subscribe.jsp"></jsp:include>
			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<jsp:include page="buttonup.jsp"></jsp:include>
</body>
</html>
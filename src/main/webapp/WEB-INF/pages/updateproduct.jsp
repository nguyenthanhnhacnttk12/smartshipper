<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Thanh Nha &mdash; SmarthShipper</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="do an tot nghiep 2018" />
	<meta name="keywords" content="ship,shiponline,shipper online, thanh nha, nha, nhatnguyen, saigon, hochiminh" />
	<meta name="author" content="nguyenthanhnha" />


	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/animate.css" />">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<c:url value="/resources/css/icomoon.css" />">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="<c:url value="/resources/css/themify-icons.css" />">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css" />">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css" />">

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
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
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
				style="background-image: url(<c:url value="/resources/img/index/hinhnen.jpg"/>)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">


						<div class="row row-mt-15em">

							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">Xin Chào!</span>
								<h1>
									<%
										HttpSession ss = request.getSession();
										
										out.print(ss.getAttribute("users"));
									%>
								</h1>
							</div>

						</div>


					</div>
				</div>
			</div>
			</header>
			<div id="gtco-features" class="border-bottom">
				<div class="gtco-container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
							<h2>Đặt Lịch</h2>
							<p>Lên Lịch Cho đơn hàng của bạn.</p>
						</div>
					</div>
					<div class="row" id="dathang">
						<div class="col-md-12">
							<div class="col-md-6 animate-box">
								<h3>Thông tin hàng hóa</h3>
								<spring:url value="/user/saveproduct/${id }" var="upproductURL"></spring:url>
								<form:form action="${upproductURL }" modelAttribute="updateproduct" method="post">
								
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Tên Hàng</label>
											 <form:input type="text" path="name"
														class="form-control" placeholder="${name }"
														value="${name }" />
										</div>

									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Email</label>
											 <form:input type="text" path="email"
														class="form-control" placeholder="${email }"
														value="${email }" />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Number Phone</label>
											 <form:input type="text" path="numberphone"
														class="form-control" placeholder="${numberphone }"
														value="${numberphone }" />
										</div>
									</div>
									

									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Khu Vực</label>
											<form:select path="khuvuc">
												
												<form:option value="1">Quận 1 - 20.000vnđ</form:option>
												<form:option value="2">Quận 2 - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="3">Quận 3 - 20.000vnđ</form:option>
												<form:option value="4">Quận 4 - 20.000vnđ</form:option>
												<form:option value="5">Quận 5 - 20.000vnđ</form:option>
												<form:option value="6">Quận 6 - 20.000vnđ</form:option>
												<form:option value="7">Quận 7 - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="8">Quận 8 - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="9">Quận 9 - 35.000vnđ ->
													50.000vnđ</form:option>
												<form:option value="10">Quận 10 - 20.000vnđ</form:option>
												<form:option value="11">Quận 11 - 20.000vnđ</form:option>
												<form:option value="12">Quận 12 - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="13">Bình Thạnh - 20.000vnđ</form:option>
												<form:option value="14">Gò Vấp - 20.000vnđ</form:option>
												<form:option value="15">Phú Nhuận - 20.000vnđ</form:option>
												<form:option value="16">Tân Bình - 20.000vnđ</form:option>
												<form:option value="17">Tân Phú - 20.000vnđ</form:option>
												<form:option value="18">Thủ Đức - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="19">Bình Tân - 25.000vnđ ->
													35.000vnđ</form:option>
												<form:option value="20">Nhà Bè - 35.000vnđ ->
													50.000vnđ</form:option>
												<form:option value="21">Bình Chánh - 35.000vnđ
													-> 50.000vnđ</form:option>
												<form:option value="22">Hóc Môn - 35.000vnđ ->
													50.000vnđ</form:option>
											</form:select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Địa chỉ gửi hàng:</label>
											 <form:input type="text" path="addressto"
														class="form-control" placeholder="${addressto }"
														value="${addressto }" />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Địa chỉ nhận hàng:</label>
											 <form:input type="text" path="addressfrom"
														class="form-control" placeholder="${addressform }"
														value="${addressform }" />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label for="message">Mô Tả Hàng Hóa</label>
													<form:textarea cols="30" rows="10" path="mota"
														placeholder="Tiểu Sử" class="form-control"
														value="${mota }" />
										</div>
									</div>
									<div class="form-group">
										<button type="submit" value="Đồng Ý"
											class="btn btn-primary">Đồng Ý</button>
									</div>

								</form:form>
							</div>
							<div class="col-md-6 animate-box">
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d15304.88817280148!2d107.5919395!3d16.464290700000003!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1522120195461"
									width="100%" height="450" frameborder="0" style="border: 0"
									allowfullscreen></iframe>
							</div>
						</div>

					</div>
					<!-- ádasd -->
				</div>
			</div>
			<jsp:include page="Subscribe.jsp"></jsp:include>
			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<jsp:include page="buttonup.jsp"></jsp:include>
	
</body>
</html>
<%@page import="com.nguyenthanhnha.entities.Account"%>
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
				style="background-image: url(<c:url value="/resources/img/index/pricePage.jpg"/>) ;background-size: contain; background-position: center;background-repeat: no-repeat;">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="row row-mt-15em">

							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">Bảng Giá Của Chúng tôi</span>
								<h1>Plans for Everyone</h1>
							</div>

						</div>

					</div>
				</div>
			</div>
			</header>



			<div class="gtco-section border-bottom">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
							<h2>Chọn khu vực của bạn</h2>
							<p></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="price-box">
								<h2 class="pricing-plan">Khu Vực I</h2>
								<div class="price">
									<sup class="currency">$</sup>20.000 <small>vnđ</small>
								</div>
								<p>Giá ship ở khu vực 1:</p>
								<hr>
								<ul class="pricing-info">
									<li>Quận 1, quận 3, quận 4</li>
									<li>Quận 5 , quận 6, quận 11, quận 12</li>
									<li>Bình Thạnh , Gò Vấp, Phú Nhuận</li>
									<li>Tân Bình , Tân Phú</li>
								</ul>
								<a href="#" class="btn btn-default btn-sm">Bắt đầu</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="price-box">
								<h2 class="pricing-plan">Khu vực II</h2>
								<div class="price">
									<sup class="currency">$</sup>35.000 <small>vnđ</small>
								</div>
								<p>Giá ship ở khu vực 2:</p>
								<hr>
								<ul class="pricing-info">
									<li>Quận 2 , Quận 7</li>
									<li>Quận 8</li>
									<li>Quận 12</li>
									<li>Thủ Đức , Bình Tân</li>
								</ul>
								<a href="#" class="btn btn-default btn-sm">Bắt đầu</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="price-box popular">

								<h2 class="pricing-plan">Khu vực III</h2>
								<div class="price">
									<sup class="currency">$</sup>50.000 <small>vnđ</small>
								</div>
								<p>Giá ship ở khu vực 3:</p>
								<hr>
								<ul class="pricing-info">
									<li>Quận 9</li>
									<li>Nhà Bè</li>
									<li>Bình chánh</li>
									<li>Hóc Môn</li>
								</ul>
								<a href="#" class="btn btn-default btn-sm">Bắt Đầu</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="gtco-section">
				<div class="gtco-container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
							<h2>Câu hỏi thường gặp</h2>
							<p>Tổng hợp những thắc mắc của khách hàng về dịch
								vụ của chúng tôi.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<ul class="fh5co-faq-list">
								<li class="animate-box">
									<h2>ShipOnline là gì?</h2>
									<p>ShipOnline là một dịch vụ vận chuyển , với kích
										thước thu nhỏ của mô hình vận chuyển.</p>
								</li>
								<li class="animate-box">
									<h2>Độ an toàn như thế nào?</h2>
									<p>Độ tin cậy cực kỳ cao , chúng tôi đảm bảo hoàn
										trả giá trị và đền bù khi có lỗi xuất phát từ
										chúng tôi xảy ra.</p>
								</li>
								<li class="animate-box">
									<h2>Tôi muốn vận chuyển thì phải làm thế nào ?</h2>
									<p>Bạn có thể sử dụng dịch vụ của chúng tôi bằng
										2 cách là đăng ký đơn hàng bằng tài khoản và không
										tài khoản.</p>
								</li>
								<li class="animate-box">
									<h2>Có tài khoản là thế nào?</h2>
									<p>Vâng , có tài khoản tức là quý khách đăng ký
										tài khoản tại website của chúng tôi , rồi thông qua đó
										để đăng ký đơn hàng</p>
								</li>
								<li class="animate-box">
									<h2>Vậy không tài khoản là thế nào?</h2>
									<p>không tài khoản tức là quý khách có thể trực
										tiếp đăng ký đơn hàng ở trang chủ mà không cần đăng ký
										tài khoản</p>
								</li>
								<li class="animate-box">
									<h2>vậy hai phương pháp đó có gì khác nhau?</h2>
									<p>Phương pháp có tài khoản, sau mỗi đơn hàng chúng
										tôi sẽ thống kê , khách hàng sẽ có cơ hội nhận được
										chương trình khuyễn mãi , hay những ưu đãi dành cho tài
										khoản của mình , còn không có tài khoản là dành cho
										những khách hàng có nhu cầu cấp bách, nên chúng tôi
										không thể thống kê đơn hàng được ạ.</p>
								</li>
							</ul>
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
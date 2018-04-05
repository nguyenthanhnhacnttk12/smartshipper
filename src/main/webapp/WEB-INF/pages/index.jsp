<%@page import="com.nguyenthanhnha.entities.Account"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


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
<%-- <table border="1">
			<tr>
				<td> username</td>
				<td> password</td>
				<td> fullname</td>
			
			</tr>
		<c:forEach items="${list }" var="account">
			<tr>
				<td> ${account.username }</td>
				<td> ${account.password }</td>
				<td> ${account.fullname }</td>
				<td> ${account.status }</td>
				<td>
					<spring:url value="/update/${account.username }" var="updateURL"></spring:url>
					<a href="${updateURL }">update</a>
				</td>
				<td>
					<spring:url value="/delete/${account.username }" var="deleteURL"></spring:url>
					<a href="${deleteURL }">delete</a>
				</td>
			</tr>
		</c:forEach>
	
	</table> --%>
	<div class="gtco-loader"></div>

	<div id="page">
		<div class="page-inner">
			<jsp:include page="header.jsp"></jsp:include>
			<header id="gtco-header" class="gtco-cover" role="banner"
				style="background-image: url(<c:url value="/resources/img/index/index-news1.jpg"/>)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">


						_<div class="row row-mt-15em">
							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">Chào mừng bạn đến với
									ShipOnline</span>
								<h1>Trung tâm vận chuyển hàng hóa .</h1>
							</div>
							<%	HttpSession ss = request.getSession();
								if(ss.getAttribute("users")==null) {%>
							<div class="col-md-4 col-md-push-1 animate-box"
								data-animate-effect="fadeInRight">
								<div class="form-wrap">
									<div class="tab">
										<ul class="tab-menu">
											<li class="active gtco-first"><a href="#"
												data-tab="signup">Đăng Ký</a></li>
											<li class="gtco-second"><a href="#" data-tab="login">Đăng
													Nhập</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-content-inner active" data-content="signup">
												<spring:url value="/save" var="saveURL"></spring:url>
												<form:form action="${saveURL }" modelAttribute="loginform" method="post">
													<div class="row form-group">
														<div class="col-md-12">
															<label for="username">Email</label> 
															<form:input type="email" path="username" class="form-control" placeholder="english" />
																
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="password">Password</label>
															<form:input type="password" path="password" class="form-control" placeholder="english" />
															 
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="fullname">Họ và Tên</label> 
															<form:input type="text" path="fullname" class="form-control" placeholder="english" />
															
														</div>
													</div>

													<div class="row form-group">
														<div class="col-md-12">
															<button type="submit" class="btn btn-primary"
																>Đăng ký</button>
														</div>
													</div>
												</form:form>
											</div>

											<div class="tab-content-inner" data-content="login">
												<spring:url value="/login" var="loginURL"></spring:url>
												<form:form action="${loginURL }" modelAttribute="loginform" method="post">
													<div class="row form-group">
														<div class="col-md-12">
															<label for="username">Email</label>
															<form:input type="email" path="username" class="form-control" placeholder="english" /> 
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="password">Password</label> 
															<form:input type="password" path="password" class="form-control" placeholder="english" />
															
														</div>
													</div>

													<div class="row form-group">
														<div class="col-md-12">
															<button type="submit" class="btn btn-primary"
																>Đăng Nhập</button>
														</div>
													</div>
												</form:form>
											</div>

										</div>
									</div>
								</div>
							</div>
							<%} %>
						</div>
					</div>
				</div>
			</div>
			</header>

			<div class="gtco-section border-bottom">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
							<h2 id="tintuc">Tin tức</h2>
							<p>Những tin vắn hằng ngày liên quan đến trung tâm</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Thông báo</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Đơn hàng đầu tiên</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Thông báo</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Đơn hàng đầu tiên</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Thông báo</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<a href="<c:url value="/resources/img/index/index-news1.jpg"/>"
								class="fh5co-project-item image-popup"> <figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="<c:url value="/resources/img/index/index-news1.jpg"/>" alt="Image"
									class="img-responsive"> </figure>
								<div class="fh5co-text">
									<h2>Đơn hàng đầu tiên</h2>
									<p>dưới 20 chữ...</p>
								</div>
							</a>
						</div>

					</div>
				</div>
			</div>
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
								<spring:url value="/addproduct2" var="addpro1"></spring:url>
								<form:form action="${addpro1 }" modelAttribute="addproduct2form" method="post">
								
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Tên Hàng</label>
											 <form:input type="text" path="name"
														class="form-control" placeholder="...ipdna102"
														 />
										</div>

									</div>
								<%if(session.getAttribute("id")!=null){ %>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Email</label>
											 <form:input type="email" path="email" value="${listacc.username }"
														class="form-control" placeholder="abc@123"
														/>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Number Phone</label>
											 <form:input type="text" path="numberphone"  value="${listacc.numberphone }"
														class="form-control" placeholder="0123456789"
														 />
										</div>
									</div>
									<%}else{ %>
										<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Email</label>
											 <form:input type="email" path="email"
														class="form-control" placeholder="abc@123"
														/>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Number Phone</label>
											 <form:input type="text" path="numberphone" 
														class="form-control" placeholder="0123456789"
														 />
										</div>
									</div>
									<%} %>

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
														class="form-control" placeholder="123 vietnam "
														 />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Địa chỉ nhận hàng:</label>
											 <form:input type="text" path="addressfrom"
														class="form-control" placeholder="123 vietnam"
														 />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label for="message">Mô Tả Hàng Hóa</label>
													<form:textarea cols="30" rows="10" path="mota"
														placeholder="Mô tả hàng hóa" class="form-control"
														 />
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
			

			<div id="gtco-counter" class="gtco-section">
				<div class="gtco-container">

					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
							<h2>Thống kê</h2>
							<p>Thống kê số liệu của trung tâm.</p>
						</div>
					</div>

					<div class="row">
						
						<div class="col-md-3 col-sm-6 animate-box"
							data-animate-effect="fadeInLeft">
							<div class="feature-center">
								<span class="icon"> <i class="ti-settings"></i>
								</span> <span class="counter js-counter" data-from="0" data-to="${thongkeindex.thanhvien }"
									data-speed="2000" data-refresh-interval="50">1</span> <span
									class="counter-label">Thành Viên</span>

							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box"
							data-animate-effect="fadeInLeft">
							<div class="feature-center">
								<span class="icon"> <i class="ti-face-smile"></i>
								</span> <span class="counter js-counter" data-from="0" data-to="${thongkeindex.like }"
									data-speed="2000" data-refresh-interval="50">1</span> <span
									class="counter-label">Khách hàng Hài lòng</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box"
							data-animate-effect="fadeInLeft">
							<div class="feature-center">
								<span class="icon"> <i class="ti-briefcase"></i>
								</span> <span class="counter js-counter" data-from="0" data-to="${thongkeindex.donhang }"
									data-speed="2000" data-refresh-interval="50">1</span> <span
									class="counter-label">Tổng số Đơn hàng</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 animate-box"
							data-animate-effect="fadeInLeft">
							<div class="feature-center">
								<span class="icon"> <i class="ti-time"></i>
								</span> <span class="counter js-counter" data-from="0" data-to="${thongkeindex.thoigian }"
									data-speed="2000" data-refresh-interval="50">1</span> <span
									class="counter-label">Thời gian</span>

							</div>
						</div>
						
					</div>
				</div>
			</div>

			<div id="gtco-products">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
							<h2>Đối tác</h2>
							<p>Dựa trên cơ sở hai bên cùng phát triển , xin tri ân
								những khách hàng của trung tâm.</p>
						</div>
					</div>
					<div class="row">
						<div class="owl-carousel owl-carousel-carousel">
							<div class="item">
								<a href="#"><img src="<c:url value="/resources/img/index/doitac1.jpg"/>"
									alt="Công ty TNHH" height="300px"></a>
							</div>
							<div class="item">
								<a href="#"><img src="<c:url value="/resources/img/index/doitac2.jpg"/>"
									alt="Công ty TNHH" height="300px"></a>
							</div>
							<div class="item">
								<a href="#"><img src="<c:url value="/resources/img/index/doitac3.jpg"/>"
									alt="Công ty TNHH" height="300px"></a>
							</div>
							<div class="item">
								<a href="#"><img src="<c:url value="/resources/img/index/doitac2.jpg"/>"
									alt="Công ty TNHH" height="300px"></a>
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
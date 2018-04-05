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
										Account a = (Account) ss.getAttribute("account");
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
							<h2>Functions</h2>
							<p>Chào mừng bạn đến với ShipOnline</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="feature-center animate-box"
								data-animate-effect="fadeIn">
								<!-- Trigger the modal with a button -->
								<%-- <spring:url value="/user/updateUser/${users}" var="updateUser" ></spring:url> --%>
								<a class="btn btn-info btn-lg" data-toggle="modal"
									data-target="#account"> <i class="ti-settings"></i>
								</a>
								<h3>cập nhật thông tin</h3>
							</div>

						</div>
						<div id="account" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Thông tin cá nhân</h4>
									</div>
									<div class="modal-body">
										<spring:url value="/user/updateaccount/${id}"
											var="saveaccURL"></spring:url>
										<form:form action="${saveaccURL }" modelAttribute="updateform"
											method="post">

											<div class="row form-group">
												<div class="col-md-12">
													<label>Họ và Tên</label>
													<form:input type="text" path="fullname"
														class="form-control" placeholder="${fullname }"
														value="${fullname }" />

												</div>

											</div>


											<div class="row form-group">
												<div class="col-md-12">
													<label for="sdt">NumberPhone</label>
													<form:input type="text" path="numberphone"
														class="form-control" placeholder="Number Phone"
														value="${numberphone }" />

												</div>
											</div>
											<div class="row form-group">
												<div class="col-md-12">
													<label for="diachi">Địa Chỉ</label>
													<form:input type="text" path="diachi" class="form-control"
														placeholder="Address" value="${diachi }" />

												</div>
											</div>


											<!-- <div class="row form-group">
												<div class="col-md-12">
													<label  for="diachi">Địa Chỉ</label> <input
														type="text" id="diachinhan" class="form-control"
														placeholder="Địa chỉ">
												</div>
											</div> -->
											<div class="row form-group">
												<div class="col-md-12">
													<label for="message">Tiểu Sử</label>
													<form:textarea cols="30" rows="10" path="tieusu"
														placeholder="Tiểu Sử" class="form-control"
														value="${tieusu }" />


												</div>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-primary">Update</button>

											</div>

										</form:form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="feature-center animate-box"
								data-animate-effect="fadeIn">
								<a type="button" class="btn btn-info btn-lg" data-toggle="modal"
									data-target="#report"> <i class="ti-announcement"></i>
								</a>
								<h3>Báo lỗi và Khiếu nại</h3>
							</div>
						</div>
						<div id="report" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Báo lỗi</h4>
									</div>
									<div class="modal-body">
										<form action="#">


											<div class="row form-group">
												<div class="col-md-12">
													<label for="tieude">tieude</label> <input type="text"
														id="tieude" class="form-control"
														placeholder="Tiêu đề phản hồi">
												</div>
											</div>
											<div class="row form-group">
												<div class="col-md-12">
													<label for="message">Message</label>
													<textarea name="message" id="message" cols="30" rows="10"
														class="form-control" placeholder="Nội Dung"></textarea>
												</div>
											</div>
											<div class="form-group">
												<input type="submit" value="Send" class="btn btn-primary">
											</div>

										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="feature-center animate-box"
								data-animate-effect="fadeIn">
								<a type="button" class="btn btn-info btn-lg" data-toggle="modal"
									data-target="#gopy"> <i class="ti-ruler-pencil"></i>
								</a>
								<h3>Góp ý</h3>
							</div>
						</div>
						<div id="gopy" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Góp Ý</h4>
									</div>
									<div class="modal-body">
										<form action="#">


											<div class="row form-group">
												<div class="col-md-12">
													<label for="tieude">tieude</label> <input type="text"
														id="tieude" class="form-control" placeholder="Tiêu đề">
												</div>
											</div>
											<div class="row form-group">
												<div class="col-md-12">
													<label for="message">Message</label>
													<textarea name="message" id="message" cols="30" rows="10"
														class="form-control" placeholder="Nội Dung"></textarea>
												</div>
											</div>
											<div class="form-group">
												<input type="submit" value="Send" class="btn btn-primary">
											</div>

										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="feature-center animate-box"
								data-animate-effect="fadeIn">
								<a type="button" class="btn btn-info btn-lg" data-toggle="modal"
									data-target="#hanghoa"> <i class="ti-stats-up"></i>
								</a> </span>
								<h3>Thông tin Hàng hóa</h3>
							</div>
						</div>
						<div id="hanghoa" class="modal fade" role="dialog">
							<div class="modal-dialog1">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Thông tin</h4>
									</div>
									<div class="modal-body">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Tên Hàng</th>
													<th>Khu Vực</th>
													<th>Địa Chỉ Gửi Hàng</th>
													<th>Địa Chỉ Nhận Hàng</th>
													<th>Mô Tả</th>
													<th>Thời Gian Đặt Đơn</th>
													<th>Thời Gian Hoàn Thành</th>
													<th>Hoàn Thành(True/false)</th>
													<th>Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${listproduct }" var="list">
													<tr>
														<td>${list.name }</td>
														<td>${list.khuvuc }</td>
														<td>${list.addressto }</td>
														<td>${list.addressfrom }</td>
														<td>${list.mota }</td>
														<td>${list.datetime }</td>
														<td>${list.datetimess }</td>
														<td>${list.status}</td>
														<td><spring:url value="/user/updateproduct/${list.id }"
																var="updateproductURL"></spring:url> <a href="${updateproductURL }">update</a>
														</td>
														<td><spring:url value="/user/delete/${list.id }"
																var="deleteproductURL"></spring:url> <a href="${deleteproductURL }">delete</a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<%-- <form action="#">
											
											
											<div class="row form-group">
												<div class="col-md-12">
													<label  for="tieude">tieude</label> <input
														type="text" id="tieude" class="form-control"
														placeholder="Tiêu đề">
												</div>
											</div>
											<div class="row form-group">
												<div class="col-md-12">
													<label  for="message">Message</label>
													<textarea name="message" id="message" cols="30" rows="10"
														class="form-control" placeholder="Nội Dung"></textarea>
												</div>
											</div>
											<div class="form-group">
												<input type="submit" value="Send"
													class="btn btn-primary">
											</div>

										</form> --%>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
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
								<spring:url value="/user/addproduct" var="addpro"></spring:url>
								<form:form action="${addpro }" modelAttribute="addproductform" method="post">
								
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Tên Hàng</label>
											 <form:input type="text" path="name"
														class="form-control" placeholder="...ipdna102"
														 />
										</div>

									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Email</label>
											 <form:input type="text" path="email"
														class="form-control" placeholder="abc@123"
														value="${users }" />
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-12">
											<label  for="name">Number Phone</label>
											 <form:input type="text" path="numberphone"
														class="form-control" placeholder="0123456789"
														value="${sodienthoai }" />
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
														class="form-control" placeholder="123 vietnam "
														value="${diachi }" />
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

			<jsp:include page="Subscribe.jsp"></jsp:include>
			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<jsp:include page="buttonup.jsp"></jsp:include>
</body>
</html>
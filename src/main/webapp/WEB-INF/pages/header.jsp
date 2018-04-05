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
	
	<%
		HttpSession ss = request.getSession();%>
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<spring:url value="/" var="index"></spring:url>
					<div id="gtco-logo"><a href="${index}">ShipOnline <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<%if(ss.getAttribute("users")!=null){ %>
						<spring:url value="/user" var="userURL"></spring:url>
						<li><a href="${userURL }">Xin Chào! ${updateform.fullname } </a></li><%} %>
						<li class="has-dropdown">
							<a href="#">Nhân Viên</a>
							<ul class="dropdown">
							<c:forEach var="account" items="${list}">
									<li><a href="#">${account.fullname}</a></li>
										
							</c:forEach>
								
							</ul>
						</li>
						<li>
						<spring:url value="/Price" var="priceURL"></spring:url>
						<a href="${priceURL }">Bảng Giá</a>
						</li>
						<spring:url value="/contact" var="contactURL"></spring:url>
						<a href="${contactURL }">Liên Hệ</a>
						<spring:url value="/logout" var="logoutURL"></spring:url>
						<%if(ss.getAttribute("users")!=null){ %>
						<li class="btn-cta"><a href="${logoutURL }"><span>Logout</span></a></li>
						<%} %>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
</body>
</html>
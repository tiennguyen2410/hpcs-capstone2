<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/custom.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/jquery.datetimepicker.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/fullcalendar.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/rateyo.css">
<title>Home Patient Care Service</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${pageContext.servletContext.contextPath}/layouts/main.jsp"><strong>Home
						Patient Care +</strong></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a
						href="/home_patient_care_service/HienThiCaregiverServlet"><strong>Hire
								a Caregiver</strong></a></li>
					<li><a href="#"><strong>Health Services</strong></a></li>
					<li class="sign-in"><a type="button" data-toggle="modal"
						data-target="#signInModal"><strong>Sign In</strong></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%@include file="../modal/signIn.jsp"%>
<%@page import="java.util.List"%>
<%@page import="model.DAO.CaregiverDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<%@include file="../layouts/slide.jsp"%>
<%@page import="model.BEAN.Caregiver"%>
<%@page import="java.util.ArrayList"%>
<!-- hire page -->
<div class="container text-center">
	<form
		action="${pageContext.servletContext.contextPath}/layouts/hire.jsp">
		<div class="form-inline">
			<div class="input-group search">
				<input type="text" placeholder="Enter name of caregiver"
					id="searchCaregiver" class="form-control">
				<div class="input-group-btn">
					<button type="button" class="form-control"
						id="advanced-search-toggle">+ More</button>
					<button type="submit" class="form-control">
						<span class="glyphicon glyphicon-search"></span>Search
					</button>
				</div>
			</div>
		</div>
		<div class="advanced-search" id="advanced-search">
			<div class="row">
				<div class="col-md-3 form-group">
					<select id="address" class="form-control">
						<option>Address</option>
						<option>Đà Nẵng</option>
						<option>Huế</option>
						<option>Quảng Nam</option>
					</select>
				</div>
				<div class="col-md-3 form-group">
					<select id="gender" class="form-control">
						<option>Gender</option>
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>
				<div class="col-md-3 form-group">
					<input type="text" class="form-control" id="timeFrom"
						placeholder="Time from">
				</div>
				<div class="col-md-3 form-group">
					<input type="text" class="form-control" id="timeTo"
						placeholder="Time to">
				</div>
			</div>
		</div>
	</form>
	<div class="row">
		<div class="sort-caregiver">
			<div class="form-inline">
				<label>Sort by </label> <select class="form-control">
					<option>Name</option>
					<option>Age (low to high)</option>
					<option>Age (high to low)</option>
					<option>Rating</option>
					<option>Hired</option>
					<option>Price (low to high)</option>
					<option>Price (high to low)</option>
				</select>
			</div>
		</div>
	</div>
	<%
		ArrayList<Caregiver> listCaregiver = (ArrayList<Caregiver>) request.getAttribute("ccc");
		for (Caregiver caregiver : listCaregiver) {
	%>
		<div class="col-md-3">
			<div class="container-info">
				<img
					src="<%=request.getContextPath()%>/image/<%=caregiver.getAvatar()%>"
					alt="Image" style="height: 262.5px; width: 262.5px;">
				<div class="overlay"></div>
				<div class="button">
					<a type="button" data-toggle="modal"
						data-target="#caregiverInformationModal">Detail</a>
				</div>
				<h3><%=caregiver.getName()%></h3>
				<div class="rating">
					<span class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"> </span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"> </span><span
						class="glyphicon glyphicon-star-empty"></span>
				</div>
				<h4><%=caregiver.getName_education()%></h4>
				<div class="col-md-6 text-left">hire cost: free</div>
				<div class="col-md-6 text-right">109 hired</div>
			</div>
		</div>
		<%
			}
		%>
</div>
<%@include file="/modal/caregiverInformation.jsp"%>
<%@include file="../layouts/footer.jsp"%>

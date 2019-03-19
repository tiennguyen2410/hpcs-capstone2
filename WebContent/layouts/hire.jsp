<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/layouts/header.jsp"%>
<%@include file="../layouts/slide.jsp"%>
<!-- hire page -->
<div class="container text-center">
	<h1>HIRE BY DATE</h1>
	<form
		action="${pageContext.servletContext.contextPath}/layouts/hire.jsp">
		<div class="form-inline">
			<div class="form-group">
				<select id="carefor" class="form-control">
					<option>Care for</option>
					<option>Everybody</option>
					<option>Old Person</option>
					<option>Patient</option>
					<option>Postpartum Women</option>
				</select>
			</div>
			<div class="form-group">
				<select id="specialties" class="form-control">
					<option>Specialties</option>
					<option>Ambulatory care nursing</option>
					<option>Burn nursing</option>
					<option>Camp nursing</option>
					<option>Diabetes Nursing</option>
				</select>
			</div>
			<div class="form-group">
				<label>Date from </label> <input type="date" required="required"
					class="form-control" id="dateFrom"> <label>Date to
				</label> <input type="date" required="required" class="form-control"
					id="dateTo">
			</div>
			<button type="submit" class="btn btn-default" class="form-control">Search</button>
		</div>
	</form>
	<div class="row">
		<%
			int a;
			for (a = 0; a < 5; a++) {
		%>
		<div class="col-md-3">
			<div class=" container-info">
				<img
					src="http://htt.edu.vn/wp-content/uploads/2019/01/1548214315.jpg"
					alt="Image" style="height: 262.5px; width: 262.5px;">
				<div class="overlay"></div>
				<div class="button">
					<a type="button" data-toggle="modal"
						data-target="#caregiverInformationModal">Detail</a>
				</div>
				<h3>Nguyễn Hoàng Thiện</h3>
				<div class="rating">
					<span class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"> </span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"> </span><span
						class="glyphicon glyphicon-star-empty"></span>
				</div>
				<div class="col-md-6 text-left">hire cost: free</div>
				<div class="col-md-6 text-right">109 hired</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</div>
<%@include file="/modal/caregiverInformation.jsp"%>
<%@include file="../layouts/footer.jsp"%>
<%@page import="java.util.List"%>
<%@page import="model.DAO.CaregiverDAO"%>
<%@page import="model.DAO.RateDAO"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<%@include file="../layouts/slide.jsp"%>
<%@page import="model.BEAN.Caregiver"%>
<%@page import="model.BEAN.Rate"%>
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
		Map<Integer, Rate> map = (Map<Integer, Rate>) request.getAttribute("listRate");
		Set<Integer> set = map.keySet();

		ArrayList<Caregiver> listCaregiver = (ArrayList<Caregiver>) request.getAttribute("ccc");
		for (Caregiver caregiver : listCaregiver) {
			int s1 = map.get(caregiver.getId_Account()).getStar_1();
			int s2 = map.get(caregiver.getId_Account()).getStar_2();
			int s3 = map.get(caregiver.getId_Account()).getStar_3();
			int s4 = map.get(caregiver.getId_Account()).getStar_4();
			int s5 = map.get(caregiver.getId_Account()).getStar_5();

			double temp = (s1 + s2 * 2 + s3 * 3 + s4 * 4 + s5 * 5) * 1.0 / (s1 + s2 + s3 + s4 + s5);
			double sum_star = Math.ceil(temp * 10) / 10;
	%>
	<div class="col-md-3">
		<div class="container-info">
			<img
				src="<%=request.getContextPath()%>/image/<%=caregiver.getAvatar()%>"
				alt="Image" style="height: 262.5px; width: 262.5px;">
			<div class="overlay"></div>
			<div class="button">
				<a type="button" data-toggle="modal"
					data-target="#caregiverInformationModal"
					data-id_caregiver=<%=caregiver.getId_Account()%>
					data-name_caregiver="<%=caregiver.getName()%>"
					data-describle="<%=caregiver.getDescribe()%>"
					data-star_1=<%=map.get(caregiver.getId_Account()).getStar_1()%>
					data-star_2=<%=map.get(caregiver.getId_Account()).getStar_2()%>
					data-star_3=<%=map.get(caregiver.getId_Account()).getStar_3()%>
					data-star_4=<%=map.get(caregiver.getId_Account()).getStar_4()%>
					data-star_5=<%=map.get(caregiver.getId_Account()).getStar_5()%>
					data-sum_star=<%=sum_star%>
					data-src_caregiver="<%=request.getContextPath()%>/image/<%=caregiver.getAvatar()%>"<%-- data-comment_number = <%=map.get(caregiver.getId_Account()).getComment_num() %> --%>
					
					>Detail</a>
			</div>
			<h3><%=caregiver.getName()%></h3>
			<input type="hidden" id="rating">
			<div class="rateyo-readonly-widg-aa"></div>
			<h4><%=sum_star%></h4>
			<h4><%=caregiver.getName_education()%></h4>
			<div class="col-md-6 text-left">hire cost: free</div>
			<div class="col-md-6 text-right">109 hired</div>
		</div>
	</div>
	<%
		}
	%>
</div>
<%@include file="../layouts/footer.jsp"%>
<%@include file="/modal/caregiverInformation.jsp"%>
<script>
	
$(".rateyo-readonly-widg-aa").rateYo({

	rating : 3,
	readOnly : true
}).on("rateyo.change", function(e, data) {
	console.log(data.rating);
});		</script>

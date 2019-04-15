<%@page import="model.BEAN.SearchCaregiver"%>
<%@page import="java.util.ArrayList"%>
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
</head>
<body>
	<div class="container" id="hire-more-form">
		<form action="SearchCaregiverCalendarServlet" method="post"
			id="formSearch">
			<input id="id_search" name="id_search" type="hidden">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Estimate
									time from at </label> <input type="text" class="form-control"
									id="start_estimate"
									value="<%=(String) request.getAttribute("start")%>" disabled>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Estimate
									time to at</label> <input type="text" class="form-control"
									id="end_estimate"
									value="<%=(String) request.getAttribute("end")%>" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Actual
									time from at </label> <input id="start_actual" type="text"
									class="form-control" placeholder="Time from" disabled>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Actual
									time to at</label> <input id="end_actual" type="text"
									class="form-control" placeholder="Time to" disabled>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Estimate hours: <span id="hours_estimate"></span>
						</div>
						<div class="col-md-6">
							Actual hours: <span id="hours_actual"></span>
						</div>
					</div>
					<div class="form-group">
						<label>Coupon</label> <input type="text" class="form-control">
					</div>
					<p>
						Prices: <span id="id_price"></span>
					</p>
					<div class="form-group">
						<button type="submit" class="btn btn-success form-control"
							name="submit" value="add" onclick="reload()">Confirm</button>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row" id="infor-caregiver-hire">
						<div class="col-md-4">
							<img id="idImg"
								src="https://lifestyle.campus-star.com/app/uploads/2018/05/Gavin-thomas-6.jpg"
								alt="Image" style="height: auto; width: 100%;">
						</div>
						<div class="col-md-8">
							<h3 class="caregiver-name hired">
								<a href="#" id="name_caregiver"></a>
							</h3>
							<div class="row">
								<h1 class="rating-num" id="sum_star"></h1>
								<div>
									<div style="clear: both"></div>
								</div>
								<div class="rateyo-readonly-widg"></div>
								<div>
									<span class="glyphicon glyphicon-user"></span> <span
										id="id_view"></span>&nbsp;&nbsp;&nbsp; <span
										class="glyphicon glyphicon-comment"></span> <span id="num_cmt"></span>
								</div>
							</div>
							<h4 class="price">
								Hire cost: <span id="id_cost"></span>
							</h4>
						</div>
					</div>
					<%-- <div class="form-group">
						<a type="button" class="show-comment" id="show-comment">View
							all comments</a> <a type="button" class="hide-comment"
							id="hide-comment">Hide all comments</a>
						<div class="comment-info" id="comment-info">
							<div class="comment-scroll">
								<%@include file="../modal/comment.jsp"%>
							</div>
						</div>
					</div> --%>
					<%
						ArrayList<SearchCaregiver> listSearch = (ArrayList<SearchCaregiver>) request.getAttribute("searchList");
						for (int i = 0; i < listSearch.size(); i++) {
					%>
							<div class="pull-cen">
						<button type="button" id="idbutton1" onclick= "changeValue(this);" value="<%=i%>" class="open-infor-caregiver-toggle"> <%=i+1%> </button>
						</div>
					<%
						}
					%>
				</div>
			</div>
		</form>
	</div>
</body>
<%@include file="../modal/notificationActionCalendar.jsp"%>
<script>
<% if(listSearch.size()==0){ %>
	parent.notFoundCaregiver();
<% } %>
var arrCaregiver =[]
<% for(int i=0;i<listSearch.size();i++){%>
	arrCaregiver.push('<%=listSearch.get(i)%>'.split("_"));
<%}%>
function changeValue(elmnt){
	var index = elmnt.value;
	//dump value cho form 
	document.getElementById("idImg").src= "http://localhost:8080/home_patient_care_service/image/"+arrCaregiver[index][2]+"";
	$("#name_caregiver").text(arrCaregiver[index][1]);
	$("#id_cost").text(arrCaregiver[index][6]);
	$("#id_view").text(arrCaregiver[index][3]);
	$("#num_cmt").text(arrCaregiver[index][4]);
	$("#start_actual").val(arrCaregiver[index][8]);
	$("#end_actual").val(arrCaregiver[index][9]);
	$("#hours_actual").text(caculatorHours(arrCaregiver[index][8],arrCaregiver[index][9]));
	$("#id_price").text(arrCaregiver[index][6]*parseInt(caculatorDoubleHours(arrCaregiver[index][8],arrCaregiver[index][9])));
	$("#hours_estimate").text(caculatorHours('<%=(String)request.getAttribute("start")%>','<%=(String)request.getAttribute("end")%>'));
	
	$("#id_search").val(arrCaregiver[index][10]);
	
}
function caculatorHours(start,end){
	var s = start.split(" ")[1];
	var e = end.split(" ")[1];
	var m =(parseInt(e.split(":")[0])*60+parseInt(e.split(":")[1])) - (parseInt(s.split(":")[0])*60+parseInt(s.split(":")[1])) 
    return parseInt(m/60) +"h"+(m%60)+"m";
}
function caculatorDoubleHours(start,end){
	var s = start.split(" ")[1];
	var e = end.split(" ")[1];
	var m =(parseInt(e.split(":")[0])*60+parseInt(e.split(":")[1])) - (parseInt(s.split(":")[0])*60+parseInt(s.split(":")[1])) 
    return m/60;
}
function reload(){
	/* parent.location.href=window.location.href;
	document.getElementById("formSearch").submit(); */
	
}
</script>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/bootstrap-filestyle.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/application.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/jquery.datetimepicker.full.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/fullcalendar.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/jquery-ui.custom.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/jquery.rateyo.js"></script>
</html>

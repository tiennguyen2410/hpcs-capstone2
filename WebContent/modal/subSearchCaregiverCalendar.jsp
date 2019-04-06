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
		<form action="" method="post" id="">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Estimate
									time from at </label> <input type="text" class="form-control"
									id="timeFrom" placeholder="Time from">
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Estimate
									time to at</label> <input type="text" class="form-control" id="timeTo"
									placeholder="Time to">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Actual
									time from at </label> <input type="text" class="form-control"
									id="timeFrom" placeholder="Time from">
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-calendar"></span> <label>Actual
									time to at</label> <input type="text" class="form-control" id="timeTo"
									placeholder="Time to">
							</div>
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-default form-control">Find</button>
					</div>
					<div class="row">
						<div class="col-md-6">Estimate hours: 10h</div>
						<div class="col-md-6">Actual hours: 10h</div>
					</div>
					<div class="form-group">
						<label>Coupon</label> <input type="text" class="form-control">
					</div>
					<p>Prices: 100$</p>
					<div class="form-group">
						<button type="submit" class="btn btn-success form-control">Confirm</button>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
							<img
								src="https://lifestyle.campus-star.com/app/uploads/2018/05/Gavin-thomas-6.jpg"
								alt="Image" style="height: auto; width: 100%;">
						</div>
						<div class="col-md-8">
							<h3 class="caregiver-name hired">
								<a href="#" id="name_caregiver">Nguyễn Hoàng Thiện</a>
							</h3>
							<div class="row">
								<h1 class="rating-num" id="sum_star"></h1>
								<div>
									<div style="clear: both"></div>
								</div>
								<div class="rateyo-readonly-widg"></div>
								<div>
									<span class="glyphicon glyphicon-user"></span>
									1,050,008&nbsp;&nbsp;&nbsp; <span
										class="glyphicon glyphicon-comment"></span> 109
								</div>
							</div>
							<h4 class="price">
								Hire cost: <span>FREE</span>
							</h4>
						</div>
					</div>
					<div class="form-group">
						<a type="button" class="show-comment" id="show-comment">View
							all comments</a> <a type="button" class="hide-comment"
							id="hide-comment">Hide all comments</a>
						<div class="comment-info" id="comment-info">
							<div class="comment-scroll">
								<%@include file="../layouts/comment.jsp"%>
							</div>
						</div>
					</div>
					<div class="pull-left">
						<button type="button" class="btn btn-default">Prev</button>
					</div>
					<div class="pull-right">
						<button type="button" class="btn btn-default">Next</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
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

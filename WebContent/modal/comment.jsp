<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Comment"%>
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
	<div class="container">
		<%
				ArrayList<Comment> listComment = (ArrayList<Comment>) request.getAttribute("abc");
				for (int i = 0; i < listComment.size(); i++) {
			%>
		<div class="row">

			<div class="col-md-1">
				<div class="thumbnail">
					<img
						src="http://localhost:8081/home_patient_care_service/image/<%=listComment.get(i).getAvatar_c()%> "
						alt="avatar-comment" style="height: 90px; width: 25%;">
				</div>
			</div>

			<div class="col-md-11">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong><%=listComment.get(i).getName_c()%></strong> <span
							class="text-muted"><%=listComment.get(i).getDate_c()%></span>
					</div>
					<div class="panel-body">
						<div class="rating-in-comment">
							<%
								for (int j = 1; j <= listComment.get(i).getStar_c(); j++) {
							%>
							<span class="glyphicon glyphicon-star"></span>
							<%
								}
							%>
							<%
								for (int k = 1; k <= 5 - listComment.get(i).getStar_c(); k++) {
							%>
							<span class="glyphicon glyphicon-star-empty"></span>


							<%
								}
							%>

						</div>
						<p><%=listComment.get(i).getComment_c()%></p>
					</div>
				</div>
			</div>

		</div>
		<%
				}
			%>
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




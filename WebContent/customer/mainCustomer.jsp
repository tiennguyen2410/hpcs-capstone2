<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 customer-content">
			<%@include file="../customer/profileCustomer.jsp"%>
		</div>
		<div class="col-md-2 sidebar">
			<div class="logo text-center">
				<img
					src="https://scontent.fdad3-3.fna.fbcdn.net/v/t1.0-9/19894634_864899573660241_8429616415869455758_n.jpg?_nc_cat=100&_nc_oc=AQlWXl4rLoIlJ-qBOkCikFSWhkoSDsoGRGDxOknt47DkXcj1taiC5W3RSbhdu2kxpyI&_nc_ht=scontent.fdad3-3.fna&oh=5987e68f559107fa84059bb5d2bac1cc&oe=5D168F72"
					class="img-responsive center-block" alt="Logo">
				<h5>
					<strong>Nguyễn Hoàng Thiện</strong>
				</h5>
			</div>
			<div class="left-navigation">
				<ul class="list">
					<li><a type="button" href="../customer/profileCustomer.jsp">Profile</a></li>
					<li>Timetable</li>
					<li>Coin</li>
					<li>History</li>
					<li style="color: #B22222">Sign out</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@include file="../layouts/footer.jsp"%>

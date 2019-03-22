<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="wrapper row" id="sign-up" style="display: none;">
	<div class="signup-form">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<form action="../modal/signUp.jsp" method="post">
			<div class="col-md-4">
				<img
					src="https://image.freepik.com/free-vector/nursing_3870-335.jpg"
					style="width: 100%;">
				<p class="text-center">
					Do not have an account, <a class="sign-in" id="sign-in-toggle"
						type="button" href="#">sign up now!</a>
				</p>
			</div>
			<div class="col-md-8 form-horizontal">
				<h3 class="text-center">
					<strong>Sign Up</strong>
				</h3>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email"
							placeholder="Enter email" required="required" autofocus>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="password">Password:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password"
							placeholder="Enter password, greater than 6 characters"
							required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="fullname">Full
						name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="fullname"
							placeholder="Enter full name" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="birthday">Birthday:</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="birthday"
							required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="gender">Gender:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio" checked>Male
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio">Famale
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="address">Address:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4">
								<select class="form-control">
									<option>Province/City</option>
									<%
										for (int tp = 0; tp < 5; tp++) {
									%>
									<option>Thành phố</option>
									<%
										}
									%>
								</select>
							</div>
							<div class="col-sm-4">
								<select class="form-control">
									<option>District</option>
									<%
										for (int hu = 0; hu < 5; hu++) {
									%>
									<option>Huyện</option>
									<%
										}
									%>
								</select>
							</div>
							<div class="col-sm-4">
								<select class="form-control">
									<option>Commune/Ward</option>
									<%
										for (int xa = 0; xa < 5; xa++) {
									%>
									<option>Xã</option>
									<%
										}
									%>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="street">Street:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="street"
							placeholder="Enter street" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="">Phone:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone"
							placeholder="Enter phone number" required="required">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						<a type="submit" href="../layouts/main.jsp"
							class="btn btn-success btn-block signup-btn">Sign Up</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
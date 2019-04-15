<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/header.jsp"%>
<div class="container-fluid">
	<div class="row">
		<%@include file="../customer/sidebarCustomer.jsp"%>
		<div class="col-md-10 customer-content">
			<div id="open-infor-form">
				<div class="infor-form">
					<div class="form-horizontal">
						<h3 class="text-center">
							<strong>Personal Information</strong>
						</h3>
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Email:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="fullname">Full
								name:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="birthday">Birthday:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="gender">Gender:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="address">Address:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="street">Street:</label>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="">Phone:</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-3 col-md-offset-3">
						<a type="button" href=""
							class="btn btn-warning btn-block edit-btn" id="open-edit-toggle">Edit</a>
					</div>
				</div>
			</div>
			<div id="open-edit-form" class="open-edit-form">
				<form action="../customer/profileCustomer.jsp" method="post">
					<div class="row">
						<div class="col-md-8">
							<div class="edit-form">
								<div class="form-horizontal">
									<h3 class="text-center">
										<strong>Edit Information</strong>
									</h3>
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
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="avatar">
								<img
									src="http://htt.edu.vn/wp-content/uploads/2019/01/1548214315.jpg"
									alt="Image" style="height: 262.5px; width: 262.5px;">
							</div>
							<div class="form-group">
								<label class="control-label">Image are smaller than 5MB</label>
								<input type="file" class="filestyle" data-buttonText="+ Upload">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-3 col-md-offset-3">
							<a type="submit" href=""
								class="btn btn-danger btn-block cancel-btn"
								id="open-infor-toggle">Cancel</a> <a type="submit"
								href="../customer/mainCustomer.jsp"
								class="btn btn-success btn-block save-btn">Save</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../layouts/footer.jsp"%>
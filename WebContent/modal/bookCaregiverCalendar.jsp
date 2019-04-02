<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="bookCalendarModal" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<textarea id="idCalendarStr" style="width: 1000px" hidden="hiddent"></textarea>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to <i>hire
					caregiver</i>
			</p>
			<form action="viewCaregiverCalendarServlet" method="post" id="">
				<div class="row modal-body">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Time start at</th>
								<th>Time end at</th>
								<th>Prices</th>
							</tr>
						</thead>
						<tbody id="dumTable">
						</tbody>
					</table>
					<div class="form-group">
						<p>Coupon</p>
						<input type="text" id="coupon">
						<p id="total_price">
						</p>
					</div>
					<div class="form-group">
						<label>Thông tin mặc định</label><br> <label>Nguyễn
							Đặng Khải</label><br> <label>Sđt: 0101010100</label><br> <label>Địa
							chỉ: 254 Nguyễn Văn Linh</label><br>
						<div class="form-group">
							<button type="button" name="address" value=""
								id="other-infor-toggle">Sửa thông tin</button>
							<button type="button" name="address" value=""
								id="close-other-infor-toggle" class="close-other-infor-toggle">Hủy</button>
						</div>
						<div class="other-infor" id="other-infor">
							<div class="row">
								<div class="col-md-6 form-group">
									<input type="text" class="form-control" id="fullname"
										placeholder="Enter your full name ...">
								</div>
								<div class="col-md-6 form-group">
									<input type="text" class="form-control" id="phone"
										placeholder="Enter your phone ...">
								</div>
								<div class="col-md-4 form-group">
									<select id="tinh" class="form-control">
										<option>Address</option>
										<option>Đà Nẵng</option>
										<option>Huế</option>
										<option>Quảng Nam</option>
									</select>
								</div>
								<div class="col-md-4 form-group">
									<select id="huyen" class="form-control">
										<option>Address</option>
										<option>Đà Nẵng</option>
										<option>Huế</option>
										<option>Quảng Nam</option>
									</select>
								</div>
								<div class="col-md-4 form-group">
									<select id="xa" class="form-control">
										<option>Address</option>
										<option>Đà Nẵng</option>
										<option>Huế</option>
										<option>Quảng Nam</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="street"
									placeholder="Enter your street ...">
							</div>
						</div>
					</div>
					<textarea id="id_promotion" name="id_promotion" hidden="hidden"></textarea>
					<div class="pull-right">
						<button type="submit" value="add" name="submit"
							class="btn btn-success form-control">Confirm</button>
					</div>
					<div class="pull-left">
						<button type="button" class="btn btn-danger form-control"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
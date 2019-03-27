<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="bookCalendarModal" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to <i>hire
					caregiver</i> at the time below
			</p>
			<form action="CalendarServlet" method="post" id="addSchedule"
				onsubmit="return testcheckForm();">
				<input id="idCancelCalendar" name="idCancelCalendar" hidden="hidden">
				<div class="row modal-body">
					<div class="form-group">
						<label>Time start at</label> <input id="timeStart"
							name="timeStart" class="form-control" disabled>
					</div>
					<div class="form-group">
						<label>Time end at</label> <input id="timeEnd" name="timeFinish"
							class="form-control" disabled>
					</div>
					<div class="form-group">
						<input type="radio" id="default-address" name="address" value="" checked>Địa
						chỉ mặc định<br> <input type="radio" name="address" value=""
							id="other-address-toggle">Địa chỉ khác<br>
						<div class="other-address" id="other-address">
							<div class="row">
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
							<input type="text" class="form-control"
								placeholder="Enter your street ...">
						</div>
					</div>
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
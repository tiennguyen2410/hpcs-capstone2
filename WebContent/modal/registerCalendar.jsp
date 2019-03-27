<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="registerCalendarModal" class="modal fade"
	data-backdrop="static" role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<form action="CalendarServlet" method="post" id="addSchedule"
				onsubmit="return testcheckForm();">
				<h1>Do you want to register at the time below</h1>
				<div class="row">
					<div class="col-md-4">
						<label class="control-label col-sm-4">Time start at</label>
						<div class="col-sm-8">
							<input id="timeStart" name="timeStart" class="form-control">
						</div>
					</div>
					<div class="col-md-4">
						<label class="control-label col-sm-4">Time end at</label>
						<div class="col-sm-8">
							<input id="timeEnd" name="timeFinish" class="form-control">
						</div>
					</div>
					<div class="col-md-3">
						<input id="note" name="note" class="form-control"
							placeholder="Enter note">
					</div>
					<div class="col-md-1">
						<button type="submit" value="add" name="submit"
							class="btn btn-success form-control">Create</button>
					</div>
				</div>
			</form>
			<div class="row">Hiện thị lỗi khi create ở form này</div>
		</div>
	</div>
</div>
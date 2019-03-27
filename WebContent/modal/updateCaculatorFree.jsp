<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="updateModalFree" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<form action="CalendarServlet" method="post" id="addSchedule">
				<input id="idCaculatorUpdate" name="idCaculatorUpdate"
					hidden="hidden">
				<h1>Do you want to update calendar at the time below</h1>
				<div class="row">
					<div class="col-md-4">
						<label class="control-label col-sm-4">Old time start at</label>
						<div class="col-sm-8">
							<input id="updateTimeStartOld" class="form-control">
						</div>
					</div>
					<div class="col-md-4">
						<label class="control-label col-sm-4">Old time end at</label>
						<div class="col-sm-8">
							<input id="updateTimeFinishOld" class="form-control">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label class="control-label col-sm-4">New time start at</label>
						<div class="col-sm-8">
							<input id="updateTimeStart" name="updateTimeStart"
								class="form-control">
						</div>
					</div>
					<div class="col-md-4">
						<label class="control-label col-sm-4">New time end at</label>
						<div class="col-sm-8">
							<input id="updateTimeFinish" name="updateTimeFinish"
								class="form-control">
						</div>
					</div>
					<div class="col-md-3">
						<input id="note" name="note" class="form-control"
							placeholder="Enter note">
					</div>
					<div class="col-md-1">
						<button type="submit" value="update" name="submit"
							class="btn btn-success form-control">Update</button>
					</div>
				</div>
			</form>
			<div class="row">Hiện thị lỗi khi update ở form này</div>
		</div>
	</div>
</div>
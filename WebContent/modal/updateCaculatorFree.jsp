<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="updateModalFree" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to
				<i>update</i> at the time below
			</p>
			<form action="CalendarServlet" method="post" id="addSchedule">
				<input id="idCaculatorUpdate" name="idCaculatorUpdate"
					hidden="hidden">
				<div class="row modal-body">
					<div class="form-group row">
						<div class="col-xs-6">
							<label>Old time start at</label> <input id="updateTimeStartOld"
								class="form-control" disabled>
						</div>
						<div class="col-xs-6">
							<label>New time start at</label> <input id="updateTimeStart"
								name="updateTimeStart" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-6">
							<label>Old time end at</label> <input id="updateTimeFinishOld"
								class="form-control" disabled>
						</div>
						<div class="col-xs-6">
							<label>New time end at</label> <input id="updateTimeFinish"
								name="updateTimeFinish" class="form-control">
						</div>
					</div>
					<div class="pull-right">
						<button type="submit" value="update" name="submit"
							class="btn btn-success form-control">Update</button>
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
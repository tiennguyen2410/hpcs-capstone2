<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="registerCalendarModal" class="modal fade"
	data-backdrop="static" role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to
				<i>register</i> at the time below
			</p>
			<form action="CalendarServlet" method="post" id="addSchedule"
				onsubmit="return testcheckForm();">
				<div class="row modal-body">
					<div class="form-group">
						<label>Time start at</label> <input id="timeStart"
							name="timeStart" class="form-control">
					</div>
					<div class="form-group">
						<label>Time end at</label> <input id="timeEnd" name="timeFinish"
							class="form-control">
					</div>
					<div class="pull-right">
						<button type="submit" value="add" name="submit"
							class="btn btn-success form-control">Create</button>
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
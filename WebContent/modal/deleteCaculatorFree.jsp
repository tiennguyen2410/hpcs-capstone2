<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="deleteModalFree" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to
				<i>delete</i> at the time below
			</p>
			<form action="CalendarServlet" method="post" id="addSchedule"
				onsubmit="return confirm('Are you sure delete this calendar?');">
				<input id="idCaculator" name="idCaculator" hidden="hidden">
				<div class="row modal-body">
					<div class="form-group">
						<label>Time start at</label> <input id="deleteTimeStart"
							name="timeStart" class="form-control" disabled>
					</div>
					<div class="form-group">
						<label>Time end at</label> <input id="deleteTimeFinish"
							name="timeFinish" class="form-control" disabled>
					</div>
					<div class="pull-right">
						<button type="submit" value="delete" name="submit"
							class="btn btn-success form-control">Delete</button>
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

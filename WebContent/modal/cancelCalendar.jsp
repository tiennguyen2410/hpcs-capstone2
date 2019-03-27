<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="cancelModal" class="modal fade" data-backdrop="static"
	role="dialog">
	<div class="container-fluid">
		<div class="register-calendar-modal">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<p class="modal-title">
				<span class="glyphicon glyphicon-info-sign"></span>Do you want to <i>cancel
					registration</i>
			</p>
			<form action="CalendarServlet" method="post" id=""
				onsubmit="return confirm('If you cancel it will be deducted from the activity points, you can definitely cancel?');">
				<input id="idCancelCalendar" name="idCancelCalendar" hidden="hidden">
				<div class="row modal-body">
					<div class="form-group">
						<label>Time start at</label> <input id="cancelTimeStart"
							name="timeStart" class="form-control">
					</div>
					<div class="form-group">
						<label>Time end at</label> <input id="cancelTimeFinish"
							name="timeFinish" class="form-control">
					</div>
					<div class="form-group">
						<label>Reason for cancellation</label> <input id="note"
							name="note" class="form-control" placeholder="Enter your reason ...">
					</div>
					<div class="pull-right">
						<button type="submit" value="cancel" name="submit"
							class="btn btn-success form-control">Cancel</button>
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
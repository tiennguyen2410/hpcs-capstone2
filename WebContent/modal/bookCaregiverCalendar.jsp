<!-- The Modal -->
<div class="modal" id="bookCalendarModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">DANG KY LICH CHAM SOC</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="radio">
					<label><input type="radio" name="optradio" checked>Option
						1</label> <label><input type="radio" name="optradio">Option
						2</label>
				</div>
				<form action="CalendarServlet" method="post" id="addSchedule"
					onsubmit="return testcheckForm();">
					<h1>ban muon dang ki lich ranh vao thoi gian:</h1>
					<p>thoi gian bat dau</p>
					<input id="timeStart" name="timeStart">
					<p>thoi gian ket thuc</p>
					<input id="timeEnd" name="timeFinish">
					<!--       dung de check valid date -->


					<input type="submit" value="add" name="submit">
				</form>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
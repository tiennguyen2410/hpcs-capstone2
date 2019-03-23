<!-- The Modal -->
<div class="modal" id="cancelModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">HUY LICH VOI KHACH HANG</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <form action="CalendarServlet"  method="post" id="" onsubmit="return confirm('cancel ban se bi tru tien!\nban dong y?');">
      <h1>ban muon xoa lich voi khach hang vao thoi gian:</h1>
      <input id="idCancelCalendar" name="idCancelCalendar" hidden="hidden">
     <p>thoi gian bat dau::::</p> <input id="cancelTimeStart" name="timeStart">
      <p>thoi gian ket thuc::::</p> <input id="cancelTimeFinish" name="timeFinish">
      <input type ="submit" value="cancel" name="submit">
 </form>
      
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

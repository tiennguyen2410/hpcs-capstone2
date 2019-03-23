<!-- The Modal -->
<div class="modal" id="deleteModalFree">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Xoa Lich</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <form action="CalendarServlet"  method="post" id="addSchedule">
      <h1>ban muon xoa lich ranh vao thoi gian:</h1>
     <p>thoi gian bat dau::::</p> <input id="deleteTimeStart" name="timeStart">
      <p>thoi gian ket thuc::::</p> <input id="deleteTimeFinish" name="timeFinish">
      <input id="idCaculator" name="idCaculator" hidden="hidden">
      <input type ="submit" value="delete" name="submit">
 </form>
      
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

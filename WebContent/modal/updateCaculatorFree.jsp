<!-- The Modal -->
<div class="modal" id="updateModalFree">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">update lich</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <form action="CalendarServlet"  method="post" id="addSchedule">
      <h1>ban muon thay doi lich ranh tu: </h1>
      <input id="updateTimeStartOld"></input>
      <input id="updateTimeFinishOld"></input>
      <p>den ngay:</p>
      
     <p>thoi gian bat dau::::</p> <input id="updateTimeStart" name="updateTimeStart">
      <p>thoi gian ket thuc::::</p> <input id="updateTimeFinish" name="updateTimeFinish">
      <input id="idCaculatorUpdate" name="idCaculatorUpdate" hidden="hidden">
      <input type ="submit" value="update" name="submit">
 </form>
      
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.BEAN.Calendar"%>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/fullcalendar.css">

<!--  loi css dong  -->
<!-- <link rel="stylesheet" href="../css/fullcalendar.print.css"> -->
<%@include file="../layouts/header.jsp"%>
<%@ page import="model.DAO.TestThemLich"%>
<div id="wrap">

	<div id="calendar"></div>

	<div style="clear: both"></div>
</div>

<%@include file="../layouts/footer.jsp"%>
<script
	src="${pageContext.servletContext.contextPath}/js/fullcalendar.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/jquery-ui.custom.min.js"></script>
<script>
	$(document).ready(
			function() {
				var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();

				/*  className colors

				className: default(transparent), important(red), chill(pink), success(green), info(blue)

				 */

				/* initialize the external events
				-----------------------------------------------------------------*/

				$('#external-events div.external-event').each(function() {

					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title : $.trim($(this).text())
					// use the element's text as the event title
					};

					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject);
					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex : 999,
						revert : true, // will cause the event to go back to its
						revertDuration : 0
					//  original position after the drag
					});

				});

				/* initialize the calendar
				-----------------------------------------------------------------*/

				var calendar = $('#calendar').fullCalendar(
						{
							// 							event when click, de hien thi thong tin chi tiet
							eventClick : function(calEvent) {
								// change the border color just for fun
// 								$(this).css('border-color', 'red');
								showModalClick(calEvent);
							},
							eventResize: function(event, delta, revertFunc) {
								updateCaculatorFree(event.start,event.end,event.id);
							   
							  },
							  eventResizeStart: function(event) { 
								  updateCaculatorFreeOld(event.start,event.end);
							  },
							header : {
								left : 'title',
								center : 'agendaDay,agendaWeek,month',
								right : 'prev,next today'
							},
							editable : true,
							firstDay : 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
							selectable : true,
							defaultView : 'agendaWeek',

							axisFormat : 'h:mm',
							columnFormat : {
								month : 'ddd', // Mon
								week : 'ddd d', // Mon 7
								day : 'dddd M/d', // Monday 9/7
								agendaDay : 'dddd d'
							},
							titleFormat : {
								month : 'MMMM yyyy', // September 2009
								week : "MMMM yyyy", // September 2009
								day : 'MMMM yyyy' // Tuesday, Sep 8, 2009
							},
							allDaySlot : false,
							selectHelper : true,
							select : function(start, end, allDay) {
							var s =convertDate(start);
							var e = convertDate(end);
		$('#registerCalendarModal').modal('show');
		$("#timeStart").val(s);
		$("#timeEnd").val(e);
		
		
		
								
								var title='Free Time';
								
								$('#addSchedule').submit(function() {
									  // your code here
									});
// 								if (title) {
// 									calendar.fullCalendar('renderEvent', {
// 										title : title,
// 										start : start,
// 										end : end,
// 										allDay : allDay
// 									}, true // make the event "stick"
// 									);
// 								}
								calendar.fullCalendar('unselect');
							},
							
							droppable : true, // this allows things to be dropped onto the calendar !!!
							drop : function(date, allDay) { // this function is called when something is dropped
								// retrieve the dropped element's stored Event Object
								var originalEventObject = $(this).data(
										'eventObject');

								// we need to copy it, so that multiple events don't have a reference to the same object
								var copiedEventObject = $.extend({},
										originalEventObject);

								// assign it the date that was reported
								copiedEventObject.start = date;
								copiedEventObject.allDay = allDay;

								// render the event on the calendar
								// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
								$('#calendar').fullCalendar('renderEvent',
										copiedEventObject, true);

								// is the "remove after drop" checkbox checked?
								if ($('#drop-remove').is(':checked')) {
									// if so, remove the element from the "Draggable Events" list
									$(this).remove();
								}
							},
							
							eventDrop: //move lich
								function (event) {
								updateCaculatorFree(event.start,event.end,event.id);
							},
							eventDragStop: //sau khi keo tha
								function(event){
								updateCaculatorFreeOld(event.start,event.end);
								
							},
							//get calendar of a caregiver
							<%ArrayList<Calendar> calendar = (ArrayList<Calendar>) request.getAttribute("calendar");%>
							events : [
								 // get du lieu len cacular
								 <%int i;
			for (i = 0; i < calendar.size(); i++) {%>
									 {
											id : <%=calendar.get(i).getId_calendar()%>,
											title : '<%=calendar.get(i).getAddress()%>',
											start : new Date(<%=calendar.get(i).getStartDate().substring(0, 4)%>, <%=Integer.parseInt(calendar.get(i).getStartDate().substring(5, 7)) - 1%>,
													<%=calendar.get(i).getStartDate().substring(8, 10)%>,<%=calendar.get(i).getStartDate().substring(11, 13)%>, <%=calendar.get(i).getStartDate().substring(14, 16)%>),
											end : new Date(<%=calendar.get(i).getFinishDate().substring(0, 4)%>, <%=Integer.parseInt(calendar.get(i).getFinishDate().substring(5, 7)) - 1%>,
													<%=calendar.get(i).getFinishDate().substring(8, 10)%>,<%=calendar.get(i).getFinishDate().substring(11, 13)%>, <%=calendar.get(i).getFinishDate().substring(14, 16)%>),
											allDay : false,
											<%if (calendar.get(i).getId_customer() != 0) {%>
											 editable : false,
											className : 'info'
												<%} else {%>
												className : 'free'
											<%}%>
											 // thay doi ten class se cho mau` khac
										}, 
								 
								 
								 
								<%}%>
							{} ],
						});

			});
	//covert to format yyyy-mm-dd hh:mm
	function convertDate(day) {
		var s =day.getYear()+1900+"-"+(parseInt(day.getMonth())+1)+"-"+day.getDate()+" "+day.getHours()+":"+day.getMinutes();
		return s;
		}
	function updateCaculatorFree(start,end,id){ //set new date date in update caculator free page
		$('#updateModalFree').modal('show');
		var s = convertDate(start);
		var e = convertDate(end);
		$("#updateTimeStart").val(s);
		$("#updateTimeFinish").val(e);
		$("#idCaculatorUpdate").val(id);
	}
	function updateCaculatorFreeOld(start,end){//set old date in update caculator free page
		var s = convertDate(start);
		var e = convertDate(end);
		$("#updateTimeStartOld").val(s);
		$("#updateTimeFinishOld").val(e);
	}
	
	// so sanh ngay bat dau va ngay ket thuc
	function checkValidTwoDate(start,end){
		var arrStart=start.split(" ");
		var arrEnd=end.split(" ");
		if(new Date(arrStart[0])>new Date(arrEnd[0])){
			alert('ngay bat dau phai be hon hoac bang ngay ket thuc')
			return false;
		}
		else{
			if(new Date(arrStart[0]).getTime()==new Date(arrEnd[0]).getTime()){
				if(parseInt(arrStart[1].split(":")[0])>parseInt(arrEnd[1].split(":")[0])){
					alert('gio bat dau phai be hon hoac bang gio ket thuc');
					return false;
				}
				else{
					if(arrStart[1].split(":")[0]==arrEnd[1].split(":")[0]){
						
						if(parseInt(arrStart[1].split(":")[1])>=parseInt(arrEnd[1].split(":")[1])){
							alert('phut bat dau phai be hon hoac bang phut ket thuc');
							return false;
						}
					}
				}
			}
			else return true;
		}
		return true; 
	}
	function testcheckForm(){		
		s = document.getElementById("timeStart").value;
		e = document.getElementById("timeEnd").value;
		if(checkValidDate(s)==false){
			$("#timeStart").focus();
			return false;
		}
		else{
			if(checkValidDate(e)==false){
				$("#timeEnd").focus();
				return false;
			}
			else{
				return checkValidTwoDate(s,e);
				}
		}
		return true;
	}
	//check ngay co hop le khong
	function checkValidDate(date){
		//check format yyyy-mm-dd hh:mm
		if(!(/\d{4}-\d{1,2}-\d{1,2}\s\d{1,2}:\d{1,2}$/.test(date.toString()))){
			alert(date+' sai dinh dang!!');
			return false;
		}
		var day=date.split(" ");
		if(new Date(day[0])=='Invalid Date'){
			alert(date+' ngay thang nam khong hop le');
			return false;
		}
		if(parseInt(day[1].split(":")[0])<0 || parseInt(day[1].split(":")[0])>23){
			alert(date+' gio khong hop le');
			return false;
		}
		if(parseInt(day[1].split(":")[1]) <0 || parseInt(day[1].split(":")[1]) >59){
			alert(date+' phut khong hop le');
			return false;
		}
		return true;
	}
	
	// event when click 1 lich
	function showModalClick(calEvent){
		if(calEvent.title=="FREETIME"){
			showModalDeleteCalendar(calEvent);
		}
		else{
			showModalCancelCalendar(calEvent);
		}
	}
	//delete free calendar
	function showModalDeleteCalendar(calEvent){
		var s =convertDate(calEvent.start);
		var e = convertDate(calEvent.end);
		$('#deleteModalFree').modal('show');
		$("#deleteTimeStart").val(s);
		$("#deleteTimeFinish").val(e);
		$("#idCaculator").val(calEvent.id);
	}
	// cancel calendar of customer
	function showModalCancelCalendar(calEvent){
		var s =convertDate(calEvent.start);
		var e = convertDate(calEvent.end);
		var t=calEvent.id;
		$('#cancelModal').modal('show');
		$("#cancelTimeStart").val(s);
		$("#cancelTimeFinish").val(e);
		$("#idCancelCalendar").val(t);
	}
	
</script>
<%@include file="../modal/registerCalendar.jsp"%>
<%@include file="../modal/deleteCaculatorFree.jsp"%>
<%@include file="../modal/updateCaculatorFree.jsp"%>
<%@include file="../modal/cancelCalendar.jsp"%>
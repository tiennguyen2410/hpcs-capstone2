<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/fullcalendar.css">
<%@include file="../layouts/header.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Calendar"%>
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
							header : {
								left : 'title',
								center : 'agendaDay,agendaWeek,month',
								right : 'prev,next today'
							},
							editable : true,
							firstDay : 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
							selectable : true,
							defaultView : 'agendaWeek',
							select : function(start, end, allDay) {
								
								var s =convertDate(start);
								var e = convertDate(end);
								if(checkPastDate(s)){
									alert('ok');
									$("#timeStart").val(s);
									$("#timeEnd").val(e);
									var title='Free Time';
									$('#addSchedule').submit(function() {
										  // your code here
										});
								}
								},
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
							eventClick : function(calEvent) {
								if(checkPastDate(convertDate(calEvent.start))){
										showModalCancelCaregiverCalendar(calEvent);
									}
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
											editable : false,
											<%if (calendar.get(i).getId_customer() != 0) {%>
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
	function convertDate(day) {
		var s =day.getYear()+1900+"-"+(parseInt(day.getMonth())+1)+"-"+day.getDate()+" "+day.getHours()+":"+day.getMinutes();
		return s;
		}
	// cancel calendar of caregiver
	function showModalCancelCaregiverCalendar(calEvent){
		var s =convertDate(calEvent.start);
		var e = convertDate(calEvent.end);
		var t=calEvent.id;
		$('#cancelCaregiverModal').modal('show');
		$("#cancelTimeStart").val(s);
		$("#cancelTimeFinish").val(e);
		$("#idCancelCaregiverCalendar").val(t);
		$('#idCancelCaregiverForm').attr('action', 'PersonalCustomerCalendarServlet');
		$("#idthue").show();
	}
	// ngay trong qua khu ko cho chinh sua
	function checkPastDate(date){ // kiem tra ngay trong qua khu, neu trong qua khu la false
		<%LocalDateTime a = LocalDateTime.now();
			String date = a.getYear() + "-" + a.getMonthValue() + "-" + a.getDayOfMonth() + " " + a.getHour() + ":"
					+ a.getMinute();%>
		var arrEnd=date.split(" ");
		if(new Date('<%=a.getYear() + "-" + a.getMonthValue() + "-" + a.getDayOfMonth()%>')>new Date(arrEnd[0])){
			return false;
		}
		else{
			if(new Date('<%=a.getYear() + "-" + a.getMonthValue() + "-" + a.getDayOfMonth()%>').getTime()==new Date(arrEnd[0]).getTime()){
				if(parseInt(<%=a.getHour()%>)>parseInt(arrEnd[1].split(":")[0])){
					return false;
				}
				else{
					if(<%=a.getHour()%>==arrEnd[1].split(":")[0]){
						
						if(parseInt(<%=a.getMinute()%>)>=parseInt(arrEnd[1].split(":")[1])){
							return false;
						}
					}
				}
			}
			else return true;
		}
		return true; 
	
	}
	$( document ).ready(function() {
		$(document).find("title").text("Lịch Cá Nhân Của khach hang ");
		<%if(request.getAttribute("status")!=null){%>
			var status = '<%=((String)request.getAttribute("status"))%>'; 
			var check = status.substring(0,1);
			var content=status.substring(2,status.length);
		 if (check==1){
			document.getElementById("information-calendar-modal").style.backgroundColor = "green";
			document.getElementById("content-check").innerHTML = content;
			$('#notificationActionCalendar').modal('show');
			setTimeout(function() {
		    	$('#notificationActionCalendar').modal('hide');
			}, 1000);
		} 
		
		
		else if (check==2) {
			document.getElementById("information-calendar-modal").style.backgroundColor = "red";
			document.getElementById("content-check").innerHTML = content;
			$('#notificationActionCalendar').modal('show');
			setTimeout(function() {
			    $('#notificationActionCalendar').modal('hide');
			}, 1000);
		} 
		<%}%> 
	});
	function thue(){
		
		$('#searchCaregiverCalendarModal').modal('show');
	}
</script>
<%@include file="../modal/cancelCagiverCalendar.jsp"%>
<%@include file="../modal/notificationActionCalendar.jsp"%>
<%@include file="../modal/searchCaregiverCalendar.jsp"%>
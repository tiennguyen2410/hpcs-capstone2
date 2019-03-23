<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.BEAN.Calendar"%>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/fullcalendar.css">
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
							eventClick : function(calEvent, jsEvent, view) {
								alert('thong tin chi tiet hien o day ne');
								// 							    alert('Event: ' + calEvent.title);
								// 							    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
								// 							    alert('View: ' + view.name);

								// change the border color just for fun
								$(this).css('border-color', 'red');

							},
							eventResize: function(event, delta, revertFunc) {
							    alert('thay doi kich thuoc');
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
								// 								var title = prompt('alo alocc');
								// 								alert(new Date(start).getFullYear()+'***');
							
        						var s =start.getYear()+1900+"-"+start.getMonth()+"-"+start.getDate()+" "+start.getHours()+":"+start.getMinutes();
        							var e =end.getYear()+1900+"-"+end.getMonth()+"-"+end.getDate()+" "+end.getHours()+":"+end.getMinutes();
								
// 		alert(s +"\n"+ e);
		$('#myModal1').modal('show');
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
												<%}%>
											className : 'info' // thay doi ten class se cho mau` khac
										}, 
								<%}%>
							{} ],
						});
			});
	
</script>
<%@include file="../modal/dangkilich.jsp"%>
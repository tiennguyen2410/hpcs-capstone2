<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/fullcalendar.css">
<%@include file="../layouts/header.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Calendar"%>
<div id="wrap">
<button type="button" onclick="showModalBookCaregiverCalendar()">Đặt Lịch</button>
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
								// change the border color just for fun
								var a = $('#idCalendarStr').val().search(calEvent.id);
 								if(a>=0){ // da ton tai
 									$(this).css('border-color', 'White');
 								} 
 								else{
 									$(this).css('border-color', 'Red');
 								}
 								addListCalendar(calEvent);
 								
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
	
	function addListCalendar(calEvent){
		start = convertDate(calEvent.start)
		end = convertDate(calEvent.end)
		var text = "/"+calEvent.id+"_"+start+"_"+end
		var a = $('#idCalendarStr').val().search(text);
		if(a>=0){ //  da ton tai trong list
			//$(this).css('border-color', 'White');
			var s = $('#idCalendarStr').val().substr(0,a) 
			+ $('#idCalendarStr').val().substr(a+(text+'').length,$('#idCalendarStr').val().length-(text+'').length);
			$('#idCalendarStr').val(s);
		}
		else{
			$('#idCalendarStr').val($('#idCalendarStr').val()+" "+text);
		}
		$('#idCalendarStr').val($('#idCalendarStr').val());
	}
	function convertDate(day) {
		var s =day.getYear()+1900+"-"+(parseInt(day.getMonth())+1)+"-"+day.getDate()+" "+day.getHours()+":"+day.getMinutes();
		return s;
		}
	//delete free calendar
	function showModalBookCaregiverCalendar(){
		var a=$('#idCalendarStr').val().split("/");
		
		if(a.length==1){
			alert("No caregiver has been chosen");
			return false;
		}
		$('#bookCalendarModal').modal('show');
		a.splice(0,1);
		
		var dataTable=""
		var s = new Date();
		var e = new Date();
		var promose = 0.0;
		for (i = 0, len = a.length; i < len; i++) {
			var x = a[i].split("_");
			s.setHours(x[1].split(" ")[1].split(":")[0],x[1].split(" ")[1].split(":")[1],0);
			e.setHours(x[2].split(" ")[1].split(":")[0],x[2].split(" ")[1].split(":")[1],0);
			
			// add id va thanh` tien vao 1 the input,don gia mac dinh la 10k 1h
			dongia=10000
			var h=  (e-s)/3600000*dongia;
			var id_thanhtien=x[0]+"_"+h*dongia;
			promose +=h;
			$('#id_promotion').val($('#id_promotion').val()+" "+id_thanhtien);
			dataTable+="<tr> <td> <input id=\"idCancelCalendar\" name=\"idCancelCalendar\"hidden=\"hidden\" value=\""+x[0]+"\" > <input id=\"timeStart\" name=\"timeStart\" class=\"form-control\" value=\""+x[1]+"\" readonly> </td> <td> <input id=\"timeEnd\" name=\"timeFinish\" class=\"form-control\" value=\""+x[2]+"\" readonly> </td> <td><input class=\"form-control\" value=\""+h+" VND"+"\" readonly></td> </tr> "		  
			}
		$('#total_price').text("TOTAL: "+promose +" VND");
		
		document.getElementById("dumTable").innerHTML = dataTable;
		console.log(a);
		return true;
	}
	
</script>
<%@include file="../modal/bookCaregiverCalendar.jsp"%>
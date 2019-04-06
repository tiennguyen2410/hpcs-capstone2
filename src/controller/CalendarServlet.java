package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BEAN.Calendar;
import model.BO.CalendarBO;

public class CalendarServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CalendarBO calendarBO = new CalendarBO();
		// load lich cua ai thi truyen id vao
		int idCare=2000;
		String status="0_";
		if (request.getParameter("submit") != null) {
			if (request.getParameter("submit").equals("add")) { // click add lich
				if(calendarBO.checkOverlapTime(request.getParameter("timeStart"), request.getParameter("timeFinish"), idCare,0)) {
					//System.out.println("add:da trung");
					status="2_Duplicate date and time error";
				}
				else {
					calendarBO.addCaculatorFree(request.getParameter("timeStart"), request.getParameter("timeFinish"),
							"FREETIME",idCare);
					status="1_Register Calendar successfully";
				}

			}
			if(request.getParameter("submit").equals("delete")) //click delete
			{
				status="1_Delete Calendar successfully";
				calendarBO.deleteCaculatorFree(request.getParameter("idCaculator"));
			}
			if(request.getParameter("submit").equals("update")) { //click update
				if(calendarBO.checkOverlapTime(request.getParameter("updateTimeStart"), request.getParameter("updateTimeFinish"),idCare,Integer.parseInt(request.getParameter("idCaculatorUpdate")))) {
					//System.out.println("update:da trung");
					status="2_Duplicate date and time error";
				}
				else {
					status="1_Update Calendar successfully";
					calendarBO.updateCaculatorFree(request.getParameter("idCaculatorUpdate"),
							request.getParameter("updateTimeStart"), request.getParameter("updateTimeFinish"));
				}
			}
			if(request.getParameter("submit").equals("cancel")) { //click cancel custome caculator
				// truoc khi xoa nen chuyen qua table khac de luu du lieu lich cua khach hang
				//in ra de sao chep lai vo database
				status="1_Cancel Calendar successfully";
				calendarBO.cancelCalendarCustomer(request.getParameter("idCancelCalendar"));
			}

		}
		ArrayList<Calendar> list = calendarBO.getListCalendar(idCare);
		request.setAttribute("calendar", list);
		request.setAttribute("status", status);
		RequestDispatcher rd = request.getRequestDispatcher("/customer/scheduleCustomer.jsp");
		rd.forward(request, response);
	}
}

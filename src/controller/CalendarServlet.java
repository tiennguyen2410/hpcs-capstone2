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
		if (request.getParameter("submit") != null) {
			if (request.getParameter("submit").equals("add")) { // click add lich
				calendarBO.addCaculatorFree(request.getParameter("timeStart"), request.getParameter("timeFinish"),
						"FREETIME",1999);
				
			}
			if(request.getParameter("submit").equals("delete")) //click delete
			{
				calendarBO.deleteCaculatorFree(request.getParameter("idCaculator"));
			}
		}
		ArrayList<Calendar> list = calendarBO.getCalendar();
		request.setAttribute("calendar", list);
		System.out.println(list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/customer/scheduleCustomer.jsp");
		rd.forward(request, response);
	}
}

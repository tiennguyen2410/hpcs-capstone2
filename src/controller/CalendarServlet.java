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

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
		ArrayList<Calendar> list = calendarBO.getCalendar();
		request.setAttribute("calendar", list);
		System.out.println(list);
		RequestDispatcher rd = request.getRequestDispatcher("/customer/scheduleCustomer.jsp");
		rd.forward(request, response);
	}
}

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

public class viewCaregiverCalendarServlet extends HttpServlet {

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
			if (request.getParameter("submit").equals("add")) { // click book lich
				String id="";
				String promotion="";
				String[] array = request.getParameter("id_promotion").trim().split(" ");
				for(int i=0;i<array.length;i++) {
					id=array[i].split("_")[0];
					promotion=array[i].split("_")[1];
					System.out.println(id+"   "+promotion);
					calendarBO.bookCaregiverCalendar(id, "address chuadien", 123+"", 0+"", 0+"", promotion);
				}

				// goi xong ve 1 trang naof do'
				RequestDispatcher rd = request.getRequestDispatcher("/#");
				rd.forward(request, response);
			}
		}
		ArrayList<Calendar> list = calendarBO.getListCalendar("1999","123");
		request.setAttribute("calendar", list);
		RequestDispatcher rd = request.getRequestDispatcher("/customer/viewCaregiverCalendar.jsp");
		rd.forward(request, response);
	}
}

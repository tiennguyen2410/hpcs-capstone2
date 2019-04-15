package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BEAN.SearchCaregiver;
import model.BO.CalendarBO;
import model.BO.SearchCaregiverBO;

public class SearchCaregiverCalendarServlet extends HttpServlet {

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

		// String status="0_";
		if (request.getParameter("submit") != null) {
			if (request.getParameter("submit").equals("add")) { // click cancel cagiver calendar
				int id = Integer.parseInt(request.getParameter("id_search"));
				String address = "Da Nang";
				int idCustomer = 123;
				double money = 10;
				double promotion = 9999;
				CalendarBO caBO = new CalendarBO();
				caBO.bookCaregiverCalendar(id, address, idCustomer, money, 0, promotion);
				RequestDispatcher rd = request.getRequestDispatcher("PersonalCustomerCalendarServlet?ifram=ok");
				rd.forward(request, response);
			}
		}
		if (request.getParameter("data") != null) {
			SearchCaregiverBO searchBo = new SearchCaregiverBO();
			String[] data = request.getParameter("data").split("_");
			String start = data[0];
			String end = data[1];
			ArrayList<SearchCaregiver> list = searchBo.getListCalendar(start, end);
			request.setAttribute("searchList", list);
			request.setAttribute("start", start);
			request.setAttribute("end", end);
			// request.setAttribute("status", status);
			RequestDispatcher rd = request.getRequestDispatcher("/modal/subSearchCaregiverCalendar.jsp");
			rd.forward(request, response);
		}
	}
}

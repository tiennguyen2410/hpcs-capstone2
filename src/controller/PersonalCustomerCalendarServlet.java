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

public class PersonalCustomerCalendarServlet extends HttpServlet {

	/**
	 * 
	 */

	/**
	 * 
	 */

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
		// lay danh sach lich ranh cua caregiver va custome theo id 
		int idCus =123;
		String status="0_";
		if (request.getParameter("submit") != null) {
			//System.out.println(request.getParameter("submit"));
//			if (request.getParameter("submit").equals("add")) { // click book lich
//				
//				String id="";
//				String promotion="";
//				String[] array = request.getParameter("id_promotion").trim().split(" ");
//				for(int i=0;i<array.length;i++) {
//					id=array[i].split("_")[0];
//					promotion=array[i].split("_")[1];
//					System.out.println(id+"   "+promotion);
//					calendarBO.bookCaregiverCalendar(id, "address ", 123+"", 0+"", 0+"", promotion);
//					status="1_Book Calendar successfully";
//				}
//				// goi xong ve 1 trang naof do'
//				//RequestDispatcher rd = request.getRequestDispatcher("/#");
//				//rd.forward(request, response);
//			}
			if(request.getParameter("submit").equals("cancel")) { //click cancel cagiver calendar
				calendarBO.cancelCalendarCustomer(request.getParameter("idCancelCaregiverCalendar"));
				status="1_Cancel Calendar successfully";
			}
		}
		ArrayList<Calendar> list = calendarBO.getListCustomerCalendar(idCus);
		request.setAttribute("calendar", list);
		request.setAttribute("status", status);
		RequestDispatcher rd = request.getRequestDispatcher("/customer/personalCustomerCalendar.jsp");
		rd.forward(request, response);
	}
}

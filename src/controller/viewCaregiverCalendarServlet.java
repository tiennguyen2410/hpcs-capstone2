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

	/**
	 * 
	 */
	private static final long serialVersionUID = -140613455167457120L;

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
		int idCare = 3;
		int idCus = 123;
		String status = "0_";
		if (request.getParameter("submit") != null) {
			// System.out.println(request.getParameter("submit"));
			if (request.getParameter("submit").equals("add")) { // click book lich

				int id = 0;
				double promotion = 0;
				String[] array = request.getParameter("id_promotion").trim().split(" ");
				for (int i = 0; i < array.length; i++) {
					id = Integer.parseInt(array[i].split("_")[0]);
					promotion = Double.parseDouble(array[i].split("_")[1]);
					calendarBO.bookCaregiverCalendar(id, "address ", 123, 0, 0, promotion);
					status = "1_Book Calendar successfully";
				}
				// goi xong ve 1 trang naof do'
				// RequestDispatcher rd = request.getRequestDispatcher("/#");
				// rd.forward(request, response);
			}
			if (request.getParameter("submit").equals("cancel")) { // click cancel cagiver calendar
				// truoc khi xoa nen chuyen qua table khac de luu du lieu lich cua khach hang
				// in ra de sao chep lai vo database
				System.out.println("aloalo: " + request.getParameter("idCancelCaregiverCalendar"));
				calendarBO.cancelCalendarCustomer(request.getParameter("idCancelCaregiverCalendar"));
				status = "1_Cancel Calendar successfully";
			}
		}
		ArrayList<Calendar> list = calendarBO.getListCalendar(idCare, idCus);
		request.setAttribute("calendar", list);
		request.setAttribute("status", status);
		RequestDispatcher rd = request.getRequestDispatcher("/customer/viewCaregiverCalendar.jsp");
		rd.forward(request, response);
	}
}

package model.BO;

import java.util.ArrayList;

import model.BEAN.Calendar;
import model.DAO.CalendarDAO;

public class CalendarBO {

	CalendarDAO dao = new CalendarDAO();
	public ArrayList<Calendar> getCalendar() {
		return dao.getCalendar();
	}
}

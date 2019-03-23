package model.BO;

import java.util.ArrayList;

import model.BEAN.Calendar;
import model.DAO.CalendarDAO;

public class CalendarBO {

	CalendarDAO dao = new CalendarDAO();
	public ArrayList<Calendar> getCalendar() {
		return dao.getCalendar();
	}
	public void addCaculatorFree(String start, String finish, String address,int id ) {
		dao.addCaculatorFree(start, finish, address, id);
	}
	public void deleteCaculatorFree(String id) {
		dao.deleteCaculatorFree(id);
	}
}

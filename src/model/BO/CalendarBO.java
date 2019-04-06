package model.BO;

import java.util.ArrayList;

import model.BEAN.Calendar;
import model.DAO.CalendarDAO;

public class CalendarBO {

	CalendarDAO dao = new CalendarDAO();
	public ArrayList<Calendar> getListCalendar() {
		return dao.getListCalendar();
	}
	public void addCaculatorFree(String start, String finish, String address,int id ) {
		dao.addCaculatorFree(start, finish, address, id);
	}
	public void deleteCaculatorFree(String id) {
		dao.deleteCaculatorFree(id);
	}
	public void updateCaculatorFree(String id,String start, String finish) {
		dao.updateCaculatorFree(id, start, finish);
	}
	public Calendar getCalendar(String id) {
		return dao.getCalendar(id);
	}
	public ArrayList<Calendar> getListCalendar(String idCaregiver,String idCustomer) {
		return dao.getListCalendar(idCaregiver,idCustomer);
	}
	public void cancelCalendarCustomer(String id) {
		dao.cancelCalendarCustomer(id);
	}
	public void bookCaregiverCalendar(String id,String address, String idCustomer,String money,String intoMoney,String promotion) {
		dao.bookCaregiverCalendar(id, address, idCustomer, money, intoMoney, promotion);
	}
}

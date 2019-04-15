package model.BO;

import java.util.ArrayList;

import model.BEAN.Calendar;
import model.DAO.CalendarDAO;

public class CalendarBO {

	CalendarDAO dao = new CalendarDAO();
	public ArrayList<Calendar> getListCalendar(int idCaregiver) {
		return dao.getListCalendar(idCaregiver);
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
	public ArrayList<Calendar> getListCalendar(int idCaregiver,int idCustomer) {
		return dao.getListCalendar(idCaregiver,idCustomer);
	}
	public void cancelCalendarCustomer(String id) {
		dao.cancelCalendarCustomer(id);
	}
	public void bookCaregiverCalendar(int id,String address, int idCustomer,double money,double intoMoney,double promotion) {
		dao.bookCaregiverCalendar(id, address, idCustomer, money, intoMoney, promotion);
	}
	public boolean checkOverlapTime(String startTime,String endTime,int idCaregiver,int idCalendar) {
		return dao.checkOverlapTime(startTime, endTime,idCaregiver,idCalendar);
	}
	public ArrayList<Calendar> getListCustomerCalendar(int idCustomer){
		return dao.getListCustomerCalendar(idCustomer);
	}
}

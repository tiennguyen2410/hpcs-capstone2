package model.BO;

import java.util.ArrayList;

import model.BEAN.SearchCaregiver;
import model.DAO.SearchCaregiverDAO;

public class SearchCaregiverBO {
	SearchCaregiverDAO dao = new SearchCaregiverDAO();
	public ArrayList<SearchCaregiver> getListCalendar(String start,String end) {
		return dao.getListCalendar(start, end);
	}
}

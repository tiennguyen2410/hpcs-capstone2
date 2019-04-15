package model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Calendar;
import model.BEAN.SearchCaregiver;

public class SearchCaregiverDAO {
	public ArrayList<SearchCaregiver> getListCalendar(String start,String end) {
		
		String sql = "SELECT a.NAME,a.AVATAR,l.ID_CAREGIVER,g.COST,g.DESCRIBE,l.START_DATE,l.FINISH_DATE,l.ID_CAREGIVER,l.ID_CUSTOMER,(l.FINISH_DATE-l.START_DATE) as HOURHIRE,l.ID_CALENDAR\n" + 
				"FROM capstone2.calendar  l\n" + 
				" JOIN  capstone2.account a ON a.ID_ACCOUNT = l.ID_CAREGIVER\n" + 
				" JOIN  capstone2.caregiver g ON a.ID_ACCOUNT = g.ID_ACCOUNT\n" + 
				" WHERE (l.START_DATE <= '"+start+"'  AND l.FINISH_DATE >= '"+end+"')  \n" + 
				" AND (l.ID_CUSTOMER IS NULL OR l.ID_CUSTOMER=0)\n" + 
				" ORDER BY HOURHIRE\n" + 
				" ";
		System.out.println(sql);
		ResultSet rs = null;
		ArrayList<SearchCaregiver> list = new ArrayList<>();
		SearchCaregiver search;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				search = new SearchCaregiver(rs.getInt("ID_CAREGIVER"), 
						rs.getString("NAME"), 
						rs.getString("AVATAR"), 
						0, 0, 0, 0, rs.getString("DESCRIBE"), 
						rs.getString("START_DATE"), rs.getString("FINISH_DATE"),rs.getInt("ID_CALENDAR"));
				list.add(search);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return list;
	}
	public static void main(String[] args) {
		System.out.println(new SearchCaregiverDAO().getListCalendar("2019-04-09 06:00", "2019-04-09 08:00"));
	}
}

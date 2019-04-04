package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Calendar;

public class CalendarDAO {

	public ArrayList<Calendar> getListCalendar() {
		String sql = "SELECT * FROM capstone2.calendar;";
		ResultSet rs = null;
		ArrayList<Calendar> list = new ArrayList<>();
		Calendar calendar;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				calendar = new Calendar(rs.getInt("ID_CALENDAR"), rs.getString("START_DATE"),
						rs.getString("FINISH_DATE"), rs.getString("ADDRESS"), rs.getInt("ID_CUSTOMER"),
						rs.getInt("ID_CAREGIVER"), rs.getDouble("MONEY"), rs.getDouble("INTO_MONEY"),
						rs.getDouble("PROMOTION"));
				list.add(calendar);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return list;
	}
	public ArrayList<Calendar> getListCalendar(String idCaregiver,String idCustomer) {
		String sql = "SELECT * FROM capstone2.calendar WHERE (capstone2.calendar.ID_CAREGIVER ="+idCaregiver+" AND capstone2.calendar.ID_CUSTOMER IS NULL ) OR (capstone2.calendar.ID_CUSTOMER="+idCustomer+" AND  capstone2.calendar.ID_CAREGIVER ="+idCaregiver+");";
		System.out.println(sql);
		ResultSet rs = null;
		ArrayList<Calendar> list = new ArrayList<>();
		Calendar calendar;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				calendar = new Calendar(rs.getInt("ID_CALENDAR"), rs.getString("START_DATE"),
						rs.getString("FINISH_DATE"), rs.getString("ADDRESS"), rs.getInt("ID_CUSTOMER"),
						rs.getInt("ID_CAREGIVER"), rs.getDouble("MONEY"), rs.getDouble("INTO_MONEY"),
						rs.getDouble("PROMOTION"));
				list.add(calendar);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return list;
	}
	public Calendar getCalendar(String id) {
		String sql = "SELECT * FROM capstone2.calendar WHERE capstone2.calendar.ID_CALENDAR ="+id+" ;";
		ResultSet rs = null;
		Calendar calendar=null;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				calendar = new Calendar(rs.getInt("ID_CALENDAR"), rs.getString("START_DATE"),
						rs.getString("FINISH_DATE"), rs.getString("ADDRESS"), rs.getInt("ID_CUSTOMER"),
						rs.getInt("ID_CAREGIVER"), rs.getDouble("MONEY"), rs.getDouble("INTO_MONEY"),
						rs.getDouble("PROMOTION"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return calendar;
	}
	public void addCaculatorFree(String start, String finish, String address, int id) {

		String sql = "INSERT INTO `capstone2`.`calendar` (`START_DATE`, `FINISH_DATE`, `ADDRESS`, `ID_CAREGIVER`) "
				+ "VALUES ('" + start + "', '" + finish + "', '" + address + "', '" + id + "');";
		try {
			Statement stmt;
			try {
				stmt = MySQLConnUtils.getMySQLConnection().createStatement();
				stmt.executeUpdate(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void updateCaculatorFree(String id,String start, String finish) {
		String sql = "UPDATE `capstone2`.`calendar` SET `START_DATE`='"+start+"', `FINISH_DATE`='"+finish+"' WHERE `ID_CALENDAR`='"+id+"';";
		System.out.println(sql);
		try {
			Statement stmt;
			try {
				stmt = MySQLConnUtils.getMySQLConnection().createStatement();
				stmt.executeUpdate(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void cancelCalendarCustomer(String id) {
		String sql = "UPDATE `capstone2`.`calendar` SET `ADDRESS`='FREETIME', `ID_CUSTOMER`=NULL, `MONEY`=NULL, `INTO_MONEY`=NULL, `PROMOTION`=NULL WHERE `ID_CALENDAR`='"+id+"';";
		System.out.println(sql);
		try {
			Statement stmt;
			try {
				stmt = MySQLConnUtils.getMySQLConnection().createStatement();
				stmt.executeUpdate(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void deleteCaculatorFree(String id) {
		String sql = "DELETE FROM `capstone2`.`calendar` WHERE `ID_CALENDAR`='"+id+"';";
		try {
			Statement stmt;
			try {
				stmt = MySQLConnUtils.getMySQLConnection().createStatement();
				stmt.executeUpdate(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void bookCaregiverCalendar(String id,String address, String idCustomer,String money,String intoMoney,String promotion) {
		String sql = "UPDATE `capstone2`.`calendar` SET `ADDRESS`='"+address+"', `ID_CUSTOMER`='"+idCustomer+"',  `MONEY`='"+money+"', `INTO_MONEY`='"+intoMoney+"',`PROMOTION`='"+promotion+"' WHERE `ID_CALENDAR`='"+id+"';";
		System.out.println("book");
		System.out.println(sql);
		try {
			Statement stmt;
			try {
				stmt = MySQLConnUtils.getMySQLConnection().createStatement();
				stmt.executeUpdate(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		System.out.println(new CalendarDAO().getCalendar("2"));
	}

}

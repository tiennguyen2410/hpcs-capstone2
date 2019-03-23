package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Calendar;

public class CalendarDAO {

	public ArrayList<Calendar> getCalendar() {
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

	public static void main(String[] args) {
		new CalendarDAO().deleteCaculatorFree("12");
	}

}

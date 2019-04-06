package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Calendar;

public class CalendarDAO {

	public ArrayList<Calendar> getListCalendar(int idCaregiver) {
		String sql = "SELECT * FROM capstone2.calendar WHERE ID_CAREGIVER="+idCaregiver+";";
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
	public ArrayList<Calendar> getListCalendar(int idCaregiver,int idCustomer) {
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
	public ArrayList<Calendar> getListCustomerCalendar(int idCustomer) {
		String sql = "SELECT * FROM capstone2.calendar WHERE capstone2.calendar.ID_CUSTOMER="+idCustomer+";";
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
	public int compareHours(String hours1,String hours2) {
		int h1=Integer.parseInt(hours1.split(":")[0]);
		int m1=Integer.parseInt(hours1.split(":")[1]);
		int h2=Integer.parseInt(hours2.split(":")[0]);
		int m2=Integer.parseInt(hours2.split(":")[1]);
		//System.out.println("h1: "+h1+" m1: "+m1+"---- h2: "+h2+" m2: "+m2);
		if(h1>h2) return 1;
		else {
			if(h1<h2) return -1;
			else { //h1==h2
				if(m1>m2) return 1;
				else 
				{
					if(m1<m2) return -1;
					else return 0;
				}
			}
		} 
	}
	public boolean check(String s1,String e1,String s2,String e2) { // s1:start 1, format:yyyy-mm-dd hh:mm
		//return true: 2 time bi overlap
		//lay ra gio
		System.out.println(s1+" "+e1+"----"+s2+" "+e2+"\n");
		s1=s1.split(" ")[1]; 
		e1=e1.split(" ")[1];
		s2=s2.split(" ")[1];
		e2=e2.split(" ")[1];
		if(compareHours(s1, s2)==0) return true;
		if(compareHours(s1, s2)==1) { // gio s1 > gio s2
			if(compareHours(e2,s1)==1) return true; //gio ket thuc 2 > gio bat dau 1 --> true: da bi trung
		}
		else { // s1<s2
			//System.out.println("s1<s2");
			if(compareHours(e1, s2)==1) return true;
			return false;
		}
		return false;
	}
	public boolean checkOverlapTime(String startTime,String endTime,int idCaregiver,int idCalendar) {
		String time=startTime;
		String m=time.split(" ")[0].split("-")[1];
		if(Integer.parseInt(m)<10) m="0"+m;
		String d=time.split(" ")[0].split("-")[2];
		if(Integer.parseInt(d)<10) d="0"+d;
		time = time.split(" ")[0].split("-")[0]+"-"+m+"-"+d;
		//System.out.println("select time: "+time);
		//co trung return true:
		String sql = "SELECT capstone2.calendar.START_DATE,capstone2.calendar.FINISH_DATE FROM capstone2.calendar where capstone2.calendar.START_DATE like '"+time+"%'and ID_CAREGIVER ="+idCaregiver+" and ID_CALENDAR !="+idCalendar;
		//System.out.println(sql);
		ResultSet rs = null;
		String s2="";
		String e2="";
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				s2=rs.getString("START_DATE");
				e2=rs.getString("FINISH_DATE");
				if(check(startTime, endTime, s2, e2)) return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
		}
		return false;
	}
	public static void main(String[] args) {
		//System.out.println(new CalendarDAO().checkOverlapTime("2019-03-14 11:00", "2019-03-14 12:31",1999));
	}

}

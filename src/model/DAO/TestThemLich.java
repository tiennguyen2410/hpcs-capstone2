package model.DAO;

import java.sql.SQLException;
import java.sql.Statement;

public class TestThemLich {

	public void themSinhVien(String start, String end, String d) {
		
		String sql="INSERT INTO `concet`.`lich` (`s`, `e`,`d`) VALUES ('"+start+"', '"+end+"',"+"'"+d+"')";
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
		new TestThemLich().themSinhVien("2010-2-10 11:10:00", "2010-1-20 23:00:00", "");
	}
}

package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Caregiver;
import model.BEAN.Rate;

public class RateDAO {
	public Rate getRate(int id_caregiver) {
		String sql = "SELECT RATE_NUMBER AS RATE, count(RATE_NUMBER) AS SL " + "FROM capstone2.rate "
				+ "where capstone2.rate.ID_CAREGIVER = "+ id_caregiver  + " GROUP BY RATE_NUMBER";
		ResultSet rs = null;
		Rate rate= new Rate(0, 0, 0, 0, 0);
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int star = rs.getInt("RATE");
				int rate_number = rs.getInt("SL");
				rate.setRate(star, rate_number);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return rate;
	}
	public static void main(String[] args) {
		RateDAO rd = new RateDAO();
		System.out.println(rd.getRate(1));
	}

}

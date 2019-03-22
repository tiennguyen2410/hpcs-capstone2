package model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.BEAN.Caregiver;

public class CaregiverDAO /*implements CaregiverDAOXuLyPhanTrang*/ {

	public ArrayList<Caregiver> getCaregiver() {
		String sql = "SELECT capstone2.account.ID_ACCOUNT,capstone2.account.NAME,capstone2.account.ADDRESS,\r\n" + 
				"				capstone2.account.PHONE,capstone2.account.AVATAR,capstone2.account.GMAIL,capstone2.account.PASSWORD,\r\n" + 
				"				capstone2.account.ID_TYPE,capstone2.account.BIRTHDAY,capstone2.caregiver.WALLET,capstone2.caregiver.RATE,\r\n" + 
				"				capstone2.caregiver.ID_EDUCATION,capstone2.education.NAME_EDUCATION,capstone2.caregiver.ACADEMIC_LEVEL,capstone2.caregiver.UNIVERSITY,\r\n" + 
				"				capstone2.caregiver.CMND_NUMBER,capstone2.caregiver.DESCRIBE\r\n" + 
				"				FROM capstone2.account left join capstone2.caregiver\r\n" + 
				"				on capstone2.caregiver.ID_ACCOUNT = capstone2.account.ID_ACCOUNT\r\n" + 
				"                left join capstone2.education on capstone2.education.ID_EDUCATION =capstone2.caregiver.ID_EDUCATION;";
		ResultSet rs = null;
		ArrayList<Caregiver> list = new ArrayList<>();
		Caregiver caregiver;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				caregiver = new Caregiver(rs.getInt("ID_ACCOUNT"),rs.getString("NAME"),rs.getString("ADDRESS"),rs.getString("PHONE"),
						rs.getString("AVATAR"),rs.getString("GMAIL"),rs.getString("PASSWORD"),rs.getInt("ID_TYPE"),rs.getString("BIRTHDAY"),
						rs.getDouble("WALLET"),rs.getDouble("RATE"), rs.getString("NAME_EDUCATION"), rs.getString("ACADEMIC_LEVEL"),
						rs.getString("DESCRIBE"), rs.getString("CMND_NUMBER"), rs.getString("UNIVERSITY"));
				list.add(caregiver);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return list;
	}
	public static void main(String[] args) {
		System.out.println(new CaregiverDAO().getCaregiver());
	}
	/*@Override
	public List<Caregiver> getListCaregiver(List<Caregiver> list, int start, int end) {
		List<Caregiver> result = new ArrayList<Caregiver>();
		for(int i =start ; i< end ; i++) {
			result.add(list.get(i));
			
		}
		return result;
	}*/
	
	//Test show
//	    public static void main(String[] args) {
//	        ShopDAO s = new ShopDAO();
//	        System.out.println(s.getShop());
//	    }


	//Total product number
	public int getCount() throws ClassNotFoundException, SQLException {
	    Connection conn = MySQLConnUtils.getMySQLConnection();
	    ArrayList<Caregiver> list = new ArrayList();
	    String sql = "SELECT count(id) FROM product.shop";
	    int count = 0;
	    try {
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        ResultSet rs = stmt.executeQuery();
	        while (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return count;
	}
	
	
	
	
}
package model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Comment;
public class CommentDAO {
	public ArrayList<Comment> getListComment(int id_caregiver) {
		ArrayList<Comment> listCommnet = new ArrayList<>();
		String sql = "Select capstone2.rate.ID_CAREGIVER ,capstone2.rate.ID_CUSTOMER,  capstone2.account.AVATAR, capstone2.account.NAME, capstone2.rate.DATE, capstone2.rate.RATE_NUMBER,capstone2.rate.COMMENT"+
				" From capstone2.rate " +
				" inner join capstone2.account on capstone2.account.ID_ACCOUNT = capstone2.rate.ID_CUSTOMER" +
				" where capstone2.rate.ID_CAREGIVER=" + id_caregiver + " and capstone2.rate.COMMENT != \" \";";
		ResultSet rs = null;
		System.out.println(sql);
		Comment commentt ;
		try {
			Statement stmt;
			stmt = MySQLConnUtils.getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String avatar = rs.getString("AVATAR");
				String name = rs.getString("NAME");
				String Date = rs.getString("DATE");
				int star = rs.getInt("RATE_NUMBER");
				int id_customer = rs.getInt("ID_CUSTOMER");
				String comment = rs.getString("COMMENT");
				commentt = new Comment(avatar,name,Date,star,comment,id_customer);
				listCommnet.add(commentt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

		}
		return listCommnet;
	}
	public static void main(String[] args) {
		CommentDAO cmd = new CommentDAO();
		cmd.getListComment(1);
	}
}

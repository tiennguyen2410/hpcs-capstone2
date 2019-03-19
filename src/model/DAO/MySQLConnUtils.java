package model.DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MySQLConnUtils {
	public static  Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
		String hostName = "localhost";
		String dbName = "capstone2";
		String userName = "root";
		String password = "12345";
		return getMySQLConnection(hostName, dbName, userName, password);
	}
	public  static Connection getMySQLConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}
	//test thoi ^^
	public String getListKhoa() throws ClassNotFoundException {
		String sql=	"SELECT * FROM concet.lich;";
		ResultSet rs = null;
		try {
			Statement stmt = getMySQLConnection().createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String s="";
		try {
			while(rs.next()){
				s+=rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		MySQLConnUtils r = new MySQLConnUtils();
		//r.getMySQLConnection();
		System.out.println(r.getListKhoa());
	}
}
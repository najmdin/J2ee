package logg;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class connex {

		  private static Connection connection ;
		  static{
			  try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
			}  catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			  
			  
		  }
		public static Connection getConnection() {
			return connection;
		}
	
	
}

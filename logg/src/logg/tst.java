package logg;

import java.util.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class tst {

	public static void main(String[] args) throws SQLException, ParseException {
		SimpleDateFormat parser = new SimpleDateFormat("HH:mm");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		DateFormat hf = new SimpleDateFormat(" HH:MM");
		
		Date date = new Date();
		Date h=new Date();
		
		
		Date ten = parser.parse("14:00");
		Date eighteen = parser.parse("16:00");
		Date tenn = parser.parse("16:00");
		Date eighteenn = parser.parse("18:00");
		Date userDate = parser.parse( hf.format(h));
	    if (userDate.after(ten) && userDate.before(eighteen)) {
	    	System.out.println("p3"); 	
	    }
	    if (userDate.after(tenn) && userDate.before(eighteenn)) {
	    	System.out.println("p4"); 	
	    }
		
		System.out.println(dateFormat.format(date)); 
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
		Statement sst=(Statement) con.createStatement();
		String qr="insert into dat values (3,'"+dateFormat.format(date)+"',3)";
		int rs=sst.executeUpdate(qr);
	}

}

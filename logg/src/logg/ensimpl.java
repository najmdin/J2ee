package logg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mysql.jdbc.Statement;

public class ensimpl implements ensinter{

	@Override
	public List<etu> listetu(String cls) {
		List<etu> etuds=new ArrayList<etu>();
		
		Connection conn = connex.getConnection();
		try {
			PreparedStatement sr = conn.prepareStatement("select * from etu where clls=?");
			sr.setString(1, cls);
		    ResultSet rs = sr.executeQuery();
		    while(rs.next()){
		    	etu t=new etu();
		    	t.setIdetu(rs.getInt("id"));
		    	t.setNetu(rs.getString("nom"));
		        t.setPnetu(rs.getString("pnom"));
		        t.setNbr(rs.getInt("nbrh"));
		        t.setCls(rs.getString("clls"));
		    	etuds.add(t);	    	
		    }
		    sr.close();}
		    catch (SQLException e) {
				
				e.printStackTrace();
			}
		return etuds;
	}

	@Override
	public void abbs(int id, String cl) throws SQLException, ParseException {
		Connection conn = connex.getConnection();
		Statement sst=(Statement) conn.createStatement();
		String nb ;
	
		
		String qr="SELECT * FROM etu WHERE id='"+id+"'";
		ResultSet rs=sst.executeQuery(qr);
		while(rs.next()){
		
			nb=rs.getString("nbrh");	

		int nbn=Integer.valueOf(nb);

		int nnbh=nbn+2;

		String qrr="UPDATE etu SET nbrh='"+nnbh+"' WHERE  id='"+id+"'";
		sst.executeUpdate(qrr);
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		SimpleDateFormat parser = new SimpleDateFormat("HH:mm");
DateFormat hf = new SimpleDateFormat(" HH:MM");
		
		Date date = new Date();
		Date h=new Date();
		
		Date p1d = parser.parse("08:00");
		Date p1f= parser.parse("10:00");
		Date p2d = parser.parse("10:00");
		Date p2f= parser.parse("12:00");
		Date p3d = parser.parse("14:00");
		Date p3f= parser.parse("16:00");
		Date p4d = parser.parse("16:00");
		Date p4f = parser.parse("18:00");
		Date userDate = parser.parse( hf.format(h));

		Statement sstt=(Statement) conn.createStatement();
	
		 if (userDate.after(p1d) && userDate.before(p1f)) {
			 String rq="insert into dat values ("+id+",'"+dateFormat.format(date)+"','p1','"+cl+"')";
				int rss=sstt.executeUpdate(rq);		
		    }
	
		 if (userDate.after(p2d) && userDate.before(p2f)) {
		String rq="insert into dat values ("+id+",'"+dateFormat.format(date)+"','p2','"+cl+"')";
		int rss=sstt.executeUpdate(rq);

		 }
		 if (userDate.after(p3d) && userDate.before(p3f)) {
				String rq="insert into dat values ("+id+",'"+dateFormat.format(date)+"','p3','"+cl+"')";
				int rss=sstt.executeUpdate(rq);

				 }
		 if (userDate.after(p4d) && userDate.before(p4f)) {
				String rq="insert into dat values ("+id+",'"+dateFormat.format(date)+"','p4','"+cl+"')";
				int rss=sstt.executeUpdate(rq);

				 }
		 
	}
	}

}

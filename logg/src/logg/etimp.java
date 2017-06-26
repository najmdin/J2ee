package logg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class etimp implements etui {

	@Override
	public etu cons(String nmu) {
		etu t=new etu();
		Connection conn = connex.getConnection();
		try {
			PreparedStatement sr = conn.prepareStatement("select * from etu where nutili=?");
			sr.setString(1, nmu);
		    ResultSet rs = sr.executeQuery();
		    while(rs.next()){
		    	t.setIdetu(rs.getInt("id"));
		    	t.setNetu(rs.getString("nom"));
		        t.setPnetu(rs.getString("pnom"));
		        t.setNbr(rs.getInt("nbrh"));
		        t.setCls(rs.getString("clls"));
		    		    	
		    }
		    sr.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return t;
	
	}

	@Override
	public int log(String nmu, String pss) throws SQLException {
		int lg=0;
		try {
		Connection conn = connex.getConnection();
		PreparedStatement sr = conn.prepareStatement("select * from etu where nutili=? ");
		sr.setString(1, nmu);
		//sr.setString(2, pss);
	    ResultSet rs = sr.executeQuery();
	    lg=Integer.valueOf(rs.getString("id"));
	    sr.close();}catch (SQLException e) {
			
			e.printStackTrace();
		}

		return lg;
	}

}

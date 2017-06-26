package logg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class respim implements respi  {

	@Override
	public List<etu> listr(String cl) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public etu getetu(int id,String cl) throws SQLException {
		etu p= new etu();
		ResultSet rs = null;
		Statement sst = null;
		Connection con=(Connection) connex.getConnection();
		sst = (Statement) con.createStatement();
		String qr="SELECT * FROM etu WHERE id='"+id+"'and clls='"+cl+"'";
		 rs=sst.executeQuery(qr);
		 while(rs.next()){
			 p.setCls(rs.getString("clls"));
			 p.setIdetu(rs.getInt("id"));
			 p.setNbr(rs.getInt("nbrh"));
			 p.setNetu(rs.getString("nom"));
			 p.setPnetu(rs.getString("pnom"));
			 
			 
			 
		 }
		 rs.close();
		return p;
	}

	@Override
	public String ajout(etu et) throws SQLException {
				List<etu> tr = null;
				String msg=null;
		Connection con=(Connection) connex.getConnection();
		Connection conn=(Connection) connex.getConnection();
		PreparedStatement sstt = (PreparedStatement) conn.prepareStatement("select * from etu where id='"+et.getIdetu()+"'");
		
		ResultSet r= sstt.executeQuery(); 
		if(r.next()) 	msg="falsee";
		else msg="truee";
			if(msg=="truee"){
		PreparedStatement sst = (PreparedStatement) con.prepareStatement("INSERT INTO etu VALUES (?,?,?,?,?,0,?)");
			sst.setInt(1, et.getIdetu());
		sst.setString(2,et.getNetu());
		sst.setString(3,et.getPnetu());
		sst.setString(4,et.getNuti());
		sst.setString(5,et.getPss());
		sst.setString(6,et.getCls());
		int i=sst.executeUpdate();
		/*if(i>0)
		msg="truee";
		else
			msg="falsee";*/	
		sst.close();}
		return msg;
		
	}

	@Override
	public String sup(int id,String cl) throws SQLException {
		String msg="falsee";
		Connection con=(Connection) connex.getConnection();
		java.sql.PreparedStatement sstt = con.prepareStatement("select * from etu WHERE ID='"+id+"'and clls='"+cl+"'");
		ResultSet rs=sstt.executeQuery();
		if (rs.next()) msg="truee";
		if(msg=="truee"){
		java.sql.PreparedStatement sst = con.prepareStatement("DELETE FROM etu WHERE ID='"+id+"'and clls='"+cl+"'");
		sst.executeUpdate();
		
		sst.close();}
	
		
		
		return msg;
	}

	@Override
	public void mod(etu t) throws SQLException{
		try {
		
			Connection con=(Connection) connex.getConnection();
			java.sql.PreparedStatement sst = con.prepareStatement("update etu set id='"+t.getIdetu()+"',nom='"+t.getNetu()+"',pnom='"+t.getPnetu()+"',nbrh='"+t.getNbr()+"',clls='"+t.getCls()+"' where id='"+t.getIdetu()+"'");
		/*	sst.setInt(1, t.getIdetu());
			sst.setString(2,t.getNetu());
			sst.setString(3,t.getPnetu());
			sst.setString(4,t.getNuti());
			sst.setString(5,t.getPss());
			sst.setInt(6, t.getNbr());
			sst.setString(7,t.getCls());
			sst.setInt(8, t.getIdetu());
			*/
			sst.executeUpdate();
			
			sst.close();
			
		}
	 catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();}
	}

	@Override
	public String  anabs(int id, String dt,String cl,String p) throws SQLException {
		String msg="falsee";
		Connection con=(Connection) connex.getConnection();
		Statement sst=(Statement) con.createStatement();
		Statement sstt=(Statement) con.createStatement();
		String qr="SELECT * FROM etu WHERE id='"+id+"'AND clls='"+cl+"'";
		ResultSet rs=sst.executeQuery(qr);

		String qrr="SELECT * FROM dat  WHERE id='"+id+"'AND clls='"+cl+"'AND dtab='"+dt+"'";
		ResultSet rss=sstt.executeQuery(qrr);
		if (rs.next()&&rss.next()) msg="true";
		Statement st=(Statement) con.createStatement();
		
		ResultSet r=st.executeQuery(qr);
		
		while(r.next()){

		  String nb=r.getString("nbrh");	

		int nbn=Integer.valueOf(nb);

		int nnbh=nbn-2;

		String qer="UPDATE etu SET nbrh='"+nnbh+"' WHERE  id='"+id+"' AND clls='"+cl+"'";
		PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(qer);
		pstmt.executeUpdate(); 
		String qerr="delete  from dat where id='"+id+"' and dtab='"+dt+"' and clls='"+cl+"' and pr='"+p+"'";
		PreparedStatement pstm = (PreparedStatement) con.prepareStatement(qerr);
		pstm.executeUpdate(); }
		
		
		
		return msg;	
		
	}

}

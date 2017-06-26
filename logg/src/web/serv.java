package web;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sun.javafx.geom.RectangularShape;

import logg.etimp;
import logg.etu;
import logg.etui;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logg.etimp;
import logg.etu;
import logg.etui;

/**
 * Servlet implementation class serv
 */
@WebServlet("/yass")
public class serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private etui etud;
	@Override
    public void init() throws ServletException {
	  etud=new etimp();
	}
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		etumod model=new etumod();
		int lg = 0;
		String nms=request.getParameter("identifiant");
		String pss=request.getParameter("password");
		String stt=request.getParameter("stt");
		String action=request.getParameter("action");
		request.setAttribute("model", model);
		//if(action.equals("ok")){
		model.setNmm(nms);
		
		etu tt;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Connection con = null;
		try {
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Statement sst = null;
		try {
			sst = (Statement) con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String qr="SELECT * FROM "+stt+" WHERE nutili='"+nms+"'AND pass='"+pss+"'";
		try {
		 rs=sst.executeQuery(qr);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if(rs.next())
			{
				try {
					if(rs.getString("pass").equals(pss))
{
						switch (stt){
						case "etu":
						
					


						try {
							
							
					tt = etud.cons(nms);
					System.out.println(tt.getCls());
					model.setTt(tt);
					
							
} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
}
						request.getRequestDispatcher("interetu.jsp").forward(request, response);
						break;
						case "resp":
							request.getRequestDispatcher("interresp.jsp").forward(request, response);
						break;
						case "ens":
							String nmens=rs.getString("nom");
							String pnens=rs.getString("pnom");
							ensmod modde=new ensmod();
							request.setAttribute("modde", modde);
							modde.setNm(nmens);
							modde.setPnm(pnens);
							request.getRequestDispatcher("incioens.jsp").forward(request, response);
							break;
							
						}
						
}
					
					
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}}else{
					request.getRequestDispatcher("logwrg.html").forward(request, response);
				}
		}
			
			
			catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//}
		
	
		
		}
	
	
	
	

		
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

		
		@Override
		protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		}
	}



package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import logg.ensimpl;
import logg.ensinter;
import logg.etimp;
import logg.respi;
import logg.respim;
import logg.etu; 
/**
 * Servlet implementation class servres
 */
@WebServlet("/servres")
public class servres extends HttpServlet {
	private ensinter enss;
	private respi ress;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Override
    public void init() throws ServletException {
	  ress=new respim();
	  enss=new ensimpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("selectioner")){
		List<etu> tt ;
		String cl=request.getParameter("clss");
		respmod modd=new respmod();
	request.setAttribute("modd", modd);
	tt=enss.listetu(cl);
	modd.setList(tt);
	request.getRequestDispatcher("selecresp.jsp").forward(request, response);
		}
		if(action.equals("ajouter")){
			List<etu> etuds = null;
			etu t=new etu();
			respmod modd=new respmod();
			request.setAttribute("modd", modd);
			
			t.setIdetu(Integer.valueOf(request.getParameter("id")));
			t.setNetu(request.getParameter("nom"));
			t.setPnetu(request.getParameter("pnom"));
			t.setNuti(request.getParameter("nutili"));
			t.setPss(request.getParameter("pass"));
			t.setCls(request.getParameter("clls"));
		
				String l=request.getParameter("clls");
					try {
						String r=ress.ajout(t);
						modd.setMsg(r);
						request.setAttribute("msg",modd.getMsg());
					
						request.getRequestDispatcher("interajout.jsp").forward(request, response);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
			
			
		}
		
		if(action.equals("supprimer")){
			int ids=Integer.valueOf(request.getParameter("id"));
			String c=request.getParameter("clls");
			try {
				String msg=ress.sup(ids, c);
				respmod modd=new respmod();
				request.setAttribute("modd", modd);
				modd.setMsg(msg);
				request.setAttribute("msg",modd.getMsg());
				System.out.println(modd.getMsg());
				
				
				request.getRequestDispatcher("intersup.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		if(action.equals("modifier")){
			int ids=Integer.valueOf(request.getParameter("id"));
			String c=request.getParameter("clls");
			etu t=new etu();
			try {
				String r="falsee";
				t=ress.getetu(ids, c);
				respmod modd=new respmod();
				request.setAttribute("modd", modd);
				modd.setEt(t);
				if(t.getIdetu()!=0) r="truee";
				modd.setMsg(r);
				
				request.setAttribute("msg",modd.getMsg());
				request.getRequestDispatcher("intermodires.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(action.equals("enregistrer")){
			etu t=new etu();
			t.setCls(request.getParameter("cls"));
			t.setIdetu(Integer.valueOf(request.getParameter("idm")));
			t.setNbr(Integer.valueOf(request.getParameter("nbr")));
			t.setNuti(request.getParameter("nut"));
			t.setPnetu(request.getParameter("pnom"));
			t.setPss(request.getParameter("ps"));
			t.setNetu(request.getParameter("nom"));
			System.out.println(t.getPss());
			try {
				ress.mod(t);
				request.getRequestDispatcher("intermodires.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		if(action.equals("suprimer l'absence")){
			respmod modd=new respmod();
			request.setAttribute("modd", modd);
			String cl=request.getParameter("clss");
			String  ids=request.getParameter("idsup");
			int id=Integer.valueOf(ids);
			String dt=request.getParameter("dt");
			String p=request.getParameter("p");
			try {
				String m=ress.anabs(id, dt, cl, p);
				modd.setMsg(m);
				request.setAttribute("msg",modd.getMsg());
				request.getRequestDispatcher("annabs.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package web;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logg.ensimpl;
import logg.ensinter;
import logg.etimp;
import logg.etu;
import logg.etui;
@WebServlet("/servens.php")
public class servens extends HttpServlet 
{
	private ensinter enss;
		private static final long serialVersionUID = 1L;

		@Override
	    public void init() throws ServletException {
		 enss=new ensimpl();
		}
		
		
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request,response);
			

		}

		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ensmod model=new ensmod();
			List<etu> tt ;
			request.setAttribute("model", model);
			
			String action =request.getParameter("action");
			String cl=request.getParameter("clss");
			tt=enss.listetu(cl);
			if(action.equals("selectioner")){
				 cl=request.getParameter("clss");
				tt=enss.listetu(cl);
			model.setEt(tt);
			model.setCls(cl);
			model.setModd(action);
		
			request.getRequestDispatcher("selcens.jsp").forward(request, response);
		
		
			}
			
			else if(action.equals("abs")){
				String cll=request.getParameter("clls");
				String ida=request.getParameter("idd") ;
			try {
				enss.abbs(Integer.valueOf(ida),cll);
				model.setEt(tt);

				
				
			}
			
			catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.setEt(tt);
			request.getRequestDispatcher("servens.php?clss=info2&action=selectioner").forward(request, response);
			//request.getRequestDispatcher("selap.jsp").forward(request, response);
			
			
			}
			
			
		}
		
}

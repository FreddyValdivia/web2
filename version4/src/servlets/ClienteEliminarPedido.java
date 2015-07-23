package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;

@SuppressWarnings("serial")
public class ClienteEliminarPedido extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/plain");		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		final Query q = pm.newQuery(Pedido.class);
			try{
				q.deletePersistentAll();
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/clientePedido.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
					System.out.println(e);
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/clientePedido.jsp");
					rd.forward(req, resp);
			}finally{
				q.closeAll();
				pm.close();
			}				
	}
}


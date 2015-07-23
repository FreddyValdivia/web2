package servlets;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;

	@SuppressWarnings("serial")
	public class ClienteListaPedido extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Pedido.class);
			
			q.setOrdering("idPedido descending");
			try{
				@SuppressWarnings("unchecked")
				List<Pedido> pedidos = (List<Pedido>) q.execute();
				req.setAttribute("pedidos", pedidos);
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/ClienteListaPedido.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
						
		}
	}

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
import beans.Cliente;
import beans.PMF;

@SuppressWarnings("serial")
public class GetList extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Cliente.class);
		
			q.setOrdering("key ascending");
					 
			try{
				@SuppressWarnings("unchecked")
				List<Cliente> clientes = (List<Cliente>) q.execute();
				req.setAttribute("clientes", clientes);
				RequestDispatcher rd;
				rd= getServletContext().getRequestDispatcher(
						"/WEB-INF/jsp/relacionClientes.jsp"
						);
				
				rd.forward(req, resp);
			}catch(Exception e){
				resp.getWriter().println(e.getMessage());
			}finally{
				q.closeAll();
				pm.close();
			}			
	}
}
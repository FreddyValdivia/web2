package servlets;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

import beans.*;

@SuppressWarnings("serial")
public class ClientePerfil extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException{
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Cliente.class);
		
		q.setOrdering("idCliente descending");
		//q.setRange(0, 10);
		try{
			@SuppressWarnings("unchecked")
			List<Cliente> clientes = (List<Cliente>) q.execute();
			req.setAttribute("clientes", clientes);
			System.out.println(clientes);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/ClientePerfil.jsp");
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
			RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/Index-cliente.jsp");
			view.forward(req, resp);
		}finally{
			q.closeAll();
			pm.close();
		}

		/*try{
			Cliente encontrado;
			Key keyCliente=KeyFactory.stringToKey(idCliente);
			encontrado=pm.getObjectById(Cliente.class,keyCliente);
	
			try{
				RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/ClientePerfil.jsp");
				view.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
				RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/Index-cliente.jsp");
				view.forward(req, resp);
			}
			
		}catch(Exception e){
			System.out.println(e);
		}finally{
			pm.close();
		}*/
	}
}
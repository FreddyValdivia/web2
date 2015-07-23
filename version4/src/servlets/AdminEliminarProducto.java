package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.PMF;
import beans.Producto;

@SuppressWarnings("serial")
public class AdminEliminarProducto extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/plain");		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		final Query q = pm.newQuery(Producto.class);
			try{
				q.deletePersistentAll();
				resp.getWriter().println("Se han borrado personas y colores.");
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/Index-adminProductos.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar datos.");
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Index-adminProductos.jsp");
					rd.forward(req, resp);
			}finally{
				q.closeAll();
				pm.close();
			}				
	}
}


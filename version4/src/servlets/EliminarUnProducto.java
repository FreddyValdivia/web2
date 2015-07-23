package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import beans.*;


@SuppressWarnings("serial")
public class EliminarUnProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String nombre = req.getParameter("producto");
		Query qd = pm.newQuery(Producto.class);
		qd.setFilter("nombre == nombreParam");
		qd.declareParameters("String nombreParam");
		qd.deletePersistentAll(nombre);
		RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/Index-adminProductos.jsp");
		view.forward(req, resp);
	
		
	}
}
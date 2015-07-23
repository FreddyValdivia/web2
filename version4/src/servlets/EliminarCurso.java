package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;
import beans.*;


@SuppressWarnings("serial")
public class EliminarCurso extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String nombre = req.getParameter("nombre");
		Query qd = pm.newQuery(Cursos.class);
		qd.setFilter("nombre == nombreParam");
		qd.declareParameters("String nombreParam");
		qd.deletePersistentAll(nombre);
		resp.sendRedirect("/verCursos");
		
	
		
	}
}
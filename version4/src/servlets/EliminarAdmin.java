package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;
import beans.*;


@SuppressWarnings("serial")
public class EliminarAdmin extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String username = req.getParameter("username");
		Query qa = pm.newQuery(Administrador.class);
		qa.setFilter("username == usernameParam");
		qa.declareParameters("String usernameParam");
		qa.deletePersistentAll(username);
		resp.sendRedirect("/verAdmin");	
	}
}
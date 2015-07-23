package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;
import beans.*;


@SuppressWarnings("serial")
public class EliminarUser extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String username = req.getParameter("username");
		Query qc = pm.newQuery(User.class);
		qc.setFilter("username == usernameParam");
		qc.declareParameters("String usernameParam");
		qc.deletePersistentAll(username);
		resp.sendRedirect("/verUsuarios");
		
	
		
	}
}
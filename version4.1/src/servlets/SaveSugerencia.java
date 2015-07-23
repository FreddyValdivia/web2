package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.PMF;
import beans.UserSugerencia;

@SuppressWarnings("serial")
public class SaveSugerencia extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException{
		
		String user = req.getParameter("user");
		String sugerencia = req.getParameter("sugerencia");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final UserSugerencia p = new UserSugerencia(user,sugerencia);
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Su sugerencia ha sido enviada exitosamente");
			resp.sendRedirect("/exitoSugerencia");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Vuelva a intentarlo");
		}finally{
			pm.close();
		}
	}
}
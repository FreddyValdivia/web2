package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.PMF;
import beans.UserSugerencia;

@SuppressWarnings("serial")
public class SaveReclamo extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException{
		
		String email = req.getParameter("email");
		String celular = req.getParameter("cel");
		String reclamo = req.getParameter("reclamo");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final UserSugerencia p = new UserSugerencia(email,celular,reclamo);
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Su reclamo ha sido enviado exitosamente");
			resp.sendRedirect("/exitoReclamo");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Vuelva a intentarlo");
		}finally{
			pm.close();
		}
	}
}
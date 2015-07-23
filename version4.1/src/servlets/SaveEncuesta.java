package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.UserEncuesta;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveEncuesta extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException{
		
		String nombre=req.getParameter("nomb");
		String paterno = req.getParameter("apellp");
		String materno=req.getParameter("apellm");
		String calificacion = req.getParameter("calificacion");
		
		String otrosC = req.getParameter("otros");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final UserEncuesta p = new UserEncuesta(nombre,paterno,materno,calificacion,otrosC);
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Encuesta guardada exitosamente");
			resp.sendRedirect("/exitoEncuesta");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Vuelva a intentarlo");
		}finally{
			pm.close();
		}
	}
}
package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.UserCursos;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveRegCurso extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException{

		String nombre = req.getParameter("nomb");
		String apellidop = req.getParameter("apellp");
		String apellidom = req.getParameter("apellm");
		String email = req.getParameter("email");

		String curso=req.getParameter("cursos");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		final UserCursos usuarioC = new UserCursos(nombre, apellidop, apellidom,email,curso);
		try{
			pm.makePersistent(usuarioC);
			resp.getWriter().println("Alumno registrado correctamente");
			resp.sendRedirect("/exitoRegCurso");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Vuelva a intentarlo");
		}finally{
			pm.close();
		}

}
}
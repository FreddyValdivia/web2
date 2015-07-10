package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.Cursos;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveRegCurso extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException{



		String nombre=request.getParameter("nombC");
		

		final PersistenceManager pm = PMF.get().getPersistenceManager();
	

		final Cursos p = new Cursos(nombre);
		try{
			pm.makePersistent(p);
			response.getWriter().println("Curso guardado correctamente");
			response.sendRedirect("/exitoRegCurso");
		}catch(Exception e){
			System.out.println(e);
			response.getWriter().println("Vuelva a intentarlo");
		}finally{
			pm.close();
		}

}
}
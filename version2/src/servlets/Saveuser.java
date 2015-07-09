package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.PMF;
import beans.User;

@SuppressWarnings("serial")
public class Saveuser extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");

		String dni = req.getParameter("dni");
		String nombre = req.getParameter("nomb");
		String apellidop = req.getParameter("apellp");
		String apellidom = req.getParameter("apellm");
		String direccion = req.getParameter("direccion");
		String email = req.getParameter("email");
		String username = req.getParameter("user");
		String password = req.getParameter("pass");
		String cel = req.getParameter("cel");
		String cestudios = req.getParameter("cestudios");
		String sexo = req.getParameter("sexo");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final User usuario = new User(dni, nombre, apellidop, apellidom, direccion, email, username, password, cel, cestudios, sexo);
		try{
			pm.makePersistent(usuario);
			resp.getWriter().println("Datos grabados correctamente.");
			resp.sendRedirect("/exito");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, vuelva a intentarlo.");
			resp.sendRedirect("/jsp/formulariohs.jsp");
		}finally{
			pm.close();
		}
	}
}

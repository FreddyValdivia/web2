package Redirigir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class IndexCerrarSesion extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException{
		resp.setContentType("text/plain");
		
		HttpSession sesion= req.getSession();
		sesion.invalidate(); //Cierra la sesion
		resp.sendRedirect("index.jsp");
	}
}

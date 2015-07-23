package Redirigir;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class IndexCerrarSesion extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		HttpSession misesion= request.getSession();		
		misesion.invalidate();
		
		response.sendRedirect("index.jsp");
	}
}
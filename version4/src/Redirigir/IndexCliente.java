package Redirigir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class IndexCliente extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException{
		resp.setContentType("text/plain");
		RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/WEB-INF/jsp/Index-cliente.jsp");
		rd1.forward(req, resp);	
	}
}

package Redirigir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class ExitoAdministrador extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		response.setContentType("text/plain");
		RequestDispatcher view= request.getRequestDispatcher("WEB-INF/jsp/registroExitoAdministrador.jsp");
		view.forward(request, response);
	}
}
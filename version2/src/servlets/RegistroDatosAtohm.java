package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class RegistroDatosAtohm extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		response.setContentType("text/plain");
		RequestDispatcher view= request.getRequestDispatcher("WEB-INF/jsp/athomDatosPersonales.jsp");
		view.forward(request, response);
	}
}

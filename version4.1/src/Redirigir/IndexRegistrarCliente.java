package Redirigir;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class IndexRegistrarCliente extends HttpServlet { 
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException,ServletException {
		RequestDispatcher view= req.getRequestDispatcher("WEB-INF/jsp/registroCliente.jsp");
		view.forward(req, resp);
	}
}
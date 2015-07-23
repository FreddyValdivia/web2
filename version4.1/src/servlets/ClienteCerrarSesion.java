package servlets;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@SuppressWarnings("serial")
public class ClienteCerrarSesion extends HttpServlet{	

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession misesion= req.getSession();
		misesion.invalidate();
		RequestDispatcher view= req.getRequestDispatcher("WEB-INF/jsp/atohmStore.jsp");
		view.forward(req, resp);
	}	
}
package servlets;

import java.io.IOException;

//import javax.jdo.PersistenceManager;
//import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.google.appengine.api.datastore.Key;
//import com.google.appengine.api.datastore.KeyFactory;

//import beans.*;


@SuppressWarnings("serial")
public class ModificarProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession sesion=req.getSession(true);
		String producto=req.getParameter("producto");
		sesion.setAttribute("producto", producto);
		System.out.println(producto);
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/registroModificarProducto.jsp");
		rd.forward(req, resp);
	}
}
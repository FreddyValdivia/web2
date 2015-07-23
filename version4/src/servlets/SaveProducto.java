package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import beans.PMF;
import beans.Producto;

@SuppressWarnings("serial")
public class SaveProducto extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		
		String name = req.getParameter("name");
		String costo = req.getParameter("costo");
		String imagen = req.getParameter("imagen");
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Producto c = new Producto(name,costo,imagen);
		try{
			pm.makePersistent(c);
			resp.getWriter().println("Producto grabado correctamente.");
			RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/registroExitoProducto.jsp");
			view.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/registroFalloProducto.jsp");
			view.forward(req, resp);
		}finally{
			pm.close();
		}
	}
}

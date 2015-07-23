package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

import beans.*;

@SuppressWarnings("serial")
public class RegistroModificarProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		HttpSession sesion=req.getSession(true);
		String producto = (String)sesion.getAttribute("producto");
		String name = req.getParameter("name");
		String costo = req.getParameter("costo");
		String imagen = req.getParameter("imagen");

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			Producto found;
			Key keyProducto = KeyFactory.stringToKey(producto);
			found = pm.getObjectById(Producto.class, keyProducto);
			found.setNombre(name);
			found.setCosto(costo);
			found.setImagen(imagen);
			try{
				System.out.println("Pedido modificado correctamente.");
				RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/Index-adminProductos.jsp");
				view.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
				System.out.println("Ocurrió un error, vuelva a intentarlo.");
				RequestDispatcher view=req.getRequestDispatcher("WEB-INF/jsp/registroFalloModificarProducto.jsp");
				view.forward(req, resp);
			}
			
		}catch(Exception e){
			System.out.println(e);
		}finally{
			pm.close();
		}
	}
}

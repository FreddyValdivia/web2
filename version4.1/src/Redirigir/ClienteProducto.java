package Redirigir;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import beans.PMF;
import beans.Producto;

@SuppressWarnings("serial")
public class ClienteProducto extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Producto.class);
		
		q.setOrdering("idProducto descending");
		//q.setRange(0, 10);
		try{
			@SuppressWarnings("unchecked")
			List<Producto> productos = (List<Producto>) q.execute();
			request.setAttribute("productos", productos);
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/clienteProducto.jsp");
			rd.forward(request, response);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close();
		}
	}
}
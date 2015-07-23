package Redirigir;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.PMF;
import beans.Producto;

@SuppressWarnings("serial")
public class IndexProducto extends HttpServlet { 
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException,ServletException {
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Producto.class);
		
		q.setOrdering("idProducto descending");
		try{
			@SuppressWarnings("unchecked")
			List<Producto> productos = (List<Producto>) q.execute();
			req.setAttribute("productos", productos);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/ClienteProductos.jsp");
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close();
		}
	}
}
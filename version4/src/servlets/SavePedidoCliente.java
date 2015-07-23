package servlets;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import beans.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@SuppressWarnings("serial")
public class SavePedidoCliente extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		HttpSession sesion= req.getSession(true);
		String[] productos = req.getParameterValues("productos");
		
		
		if(productos==null || (productos.length==0)){
			resp.sendRedirect("/clientePedidoFallo");
		}else{
			for (String producto : productos) {
				System.out.println(producto);
			}
			
			final PersistenceManager pm = PMF.get().getPersistenceManager();		
			
			try{
				Key key;
				Producto found;
				Cliente foundCliente;
				Pedido p = new Pedido();
				Key keyCliente = KeyFactory.stringToKey((String)sesion.getAttribute("cliente"));
				System.out.println("id de cliente: "+sesion.getAttribute("cliente"));
				if( req.getParameterValues("productos")!=null )
					for(int i=0;i<productos.length;i++){
						key = KeyFactory.stringToKey(productos[i]);
						found = pm.getObjectById(Producto.class, key);
						p.getProductos().add(found);
						foundCliente = pm.getObjectById(Cliente.class, keyCliente);
						p.setCliente(foundCliente);
					}
				try{
					pm.makePersistent(p);
					System.out.println("Pedido grabado correctamente.");
					resp.sendRedirect("/clientePedidoExito");
				}catch(Exception e){
					System.out.println(e);
					System.out.println("Ocurrió un error, vuelva a intentarlo.");
					resp.sendRedirect("/clientePedidoFallo");
				}
				
			}catch(Exception e){
				System.out.println(e);
				resp.sendRedirect("/clientePedidoFallo");
			}finally{
				pm.close();
			}
		}
		
	}
}


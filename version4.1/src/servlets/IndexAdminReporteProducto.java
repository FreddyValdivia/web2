package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.PMF;
import beans.Pedido;
import beans.Producto;

@SuppressWarnings("serial")
public class IndexAdminReporteProducto extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Producto.class);
		final Query q2 = pm.newQuery(Pedido.class);
		
		q.setOrdering("idProducto descending");
		q2.setOrdering("idPedido descending");
		//q.setRange(0, 10);
		try{
			@SuppressWarnings("unchecked")
			List<Producto> productos = (List<Producto>) q.execute();
			@SuppressWarnings("unchecked")
			List<Pedido> pedidos = (List<Pedido>) q2.execute();
			List<Integer> cantidades= new ArrayList<Integer>();
			for(int i=0;i<productos.size();i++){
				int temp=0;
				for(int j=0;j<pedidos.size();j++){
					List<Producto> productosComprados=pedidos.get(j).getProductos();
					for(int k=0;k<productosComprados.size();k++){
						if(productos.get(i).getNombre().equals(productosComprados.get(k).getNombre())){
							temp++;
						}
					}
				}
				cantidades.add(temp);
			}
			
			req.setAttribute("productos", productos);
			req.setAttribute("cantidades", cantidades);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/IndexAdminReporteProducto.jsp");
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close();
		}
			
	}
}


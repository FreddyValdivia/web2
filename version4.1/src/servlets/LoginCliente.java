package servlets;

import java.io.IOException;
//import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Cliente;
import beans.PMF;
//import beans.Producto;

@SuppressWarnings("serial")
public class LoginCliente extends HttpServlet
{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException, IOException
	{

		final PersistenceManager pm = PMF.get().getPersistenceManager();

		final Query q = pm.newQuery(Cliente.class);
		List<Cliente> clientes = (List<Cliente>) q.execute();

		String cliente = req.getParameter("username");
		String password = req.getParameter("password");
		if(cliente==null || password==null){
			resp.sendRedirect("/clienteNoRegistrado");
		}else{
			try{
				for(Cliente a: clientes){
					if(a.getUsername().equals(cliente) && a.getPassword().equals(password)){
							HttpSession sesion= req.getSession(true);
							sesion.setAttribute("cliente",a.getIdCliente());
							sesion.setAttribute("nombre",a.getNombre());
							sesion.setAttribute("apellidop", a.getApellidop());
							sesion.setAttribute("apellidom", a.getApellidom());
							System.out.println(a.getIdCliente());
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/Index-cliente.jsp");
							rd.forward(req, resp);
							//resp.sendRedirect("/indexCliente");				
					}
				}
				resp.sendRedirect("/clienteNoRegistrado");
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			q.closeAll();
		}
	}
}
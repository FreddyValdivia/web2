package servlets;

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
import beans.Administrador;

@SuppressWarnings("serial")
public class VerAdmin extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Administrador.class);

		if( req.getParameter("costo")!=null ){

			String nombre = req.getParameter("nombre");
			q.setOrdering("key descending");
			q.setRange(0, 10);
		

			try{

				@SuppressWarnings("unchecked")
				List<Administrador> admin = (List<Administrador>) q.execute(nombre);
				req.setAttribute("admin", admin);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verAdmin.jsp");
				rd.forward(req, resp);

			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}

		}else {
			q.setOrdering("key descending");
			q.setRange(0, 10);

			try{
				@SuppressWarnings("unchecked")
				List<Administrador> admin = (List<Administrador>) q.execute();
				req.setAttribute("admin", admin);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verAdmin.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
		}			
	}
}
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
import beans.Cursos;

@SuppressWarnings("serial")
public class VerCursosHS extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Cursos.class);

		if( req.getParameter("nombre")!=null ){

			String nombreC = req.getParameter("nombre");
			q.setOrdering("key descending");
			q.setRange(0, 10);
		

			try{

				@SuppressWarnings("unchecked")
				List<Cursos> cursos = (List<Cursos>) q.execute(nombreC);
				req.setAttribute("cursos", cursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verCursosHS.jsp");
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
				List<Cursos> cursos = (List<Cursos>) q.execute();
				req.setAttribute("cursos", cursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verCursosHS.jsp");
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
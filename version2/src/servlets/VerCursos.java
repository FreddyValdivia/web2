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
public class VerCursos extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q2 = pm.newQuery(Cursos.class);

		if( req.getParameter("nombre")!=null ){

			String nombreC = req.getParameter("nombre");
			q2.setOrdering("key descending");
			q2.setRange(0, 10);
		

			try{

				@SuppressWarnings("unchecked")
				List<Cursos> cursos = (List<Cursos>) q2.execute(nombreC);
				req.setAttribute("curso", cursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verCursos.jsp");
				rd.forward(req, resp);

			}catch(Exception e){
				System.out.println(e);
			}finally{
				q2.closeAll();
				pm.close();
			}

		}else {
			q2.setOrdering("key descending");
			q2.setRange(0, 10);

			try{
				@SuppressWarnings("unchecked")
				List<Cursos> cursos = (List<Cursos>) q2.execute();
				req.setAttribute("curso", cursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/verCursos.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q2.closeAll();
				pm.close();
			}
		}			
	}
}

	
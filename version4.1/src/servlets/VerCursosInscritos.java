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
import beans.UserCursos;

@SuppressWarnings("serial")
public class VerCursosInscritos extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(UserCursos.class);

		if( req.getParameter("cursos")!=null ){

			String nombreC = req.getParameter("cursos");
			q.setOrdering("key descending");
			q.setRange(0, 10);
		

			try{

				@SuppressWarnings("unchecked")
				List<UserCursos> Ucursos = (List<UserCursos>) q.execute(nombreC);
				req.setAttribute("cursos", Ucursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/cursosInscritos.jsp");
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
				List<UserCursos> Ucursos = (List<UserCursos>) q.execute();
				req.setAttribute("cursos", Ucursos);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/cursosInscritos.jsp");
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
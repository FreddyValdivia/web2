package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.Cursos;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveCursos extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException{

		String nombre=request.getParameter("nombre");
		String costo = request.getParameter("costo");	

		final PersistenceManager pm = PMF.get().getPersistenceManager();



		//if(!existe(nombre,curso)&& request.getParameter("nombre").equals(request.getParameter("nombre"))){

		final Cursos p = new Cursos(nombre,costo);
		try{
			pm.makePersistent(p);
			response.getWriter().println("Curso guardado correctamente");
			response.sendRedirect("/exitoCurso");
		}catch(Exception e){
			System.out.println(e);
			response.getWriter().println("Vuelva a intentarlo, quiza se perdio coneccion con las Base de Datos");
		}finally{
			pm.close();
		}
	/*}
	else{
		response.sendRedirect("/jsp/AgregarCursos.jsp");
	}*/
}
/*public boolean existe(String nombre,){
		boolean res=false;
		for(int i=0;i<curso.size();i++){
			if(curso.get(i).getNombre().equals(nombre))
				res=true;
		}
		return res;
	}*/
}

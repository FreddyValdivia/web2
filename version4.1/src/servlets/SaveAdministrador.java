package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.Administrador;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveAdministrador extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException{
		
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String username= request.getParameter("username");
		String password=request.getParameter("password");
		String celular=request.getParameter("celular");
		String dni=request.getParameter("dni");
		String estado=request.getParameter("estado");
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();



		//if(!existe(nombre,curso)&& request.getParameter("nombre").equals(request.getParameter("nombre"))){

		final Administrador p = new Administrador(nombre,apellido,username,password,celular,dni,estado);
		try{
			pm.makePersistent(p);
			response.getWriter().println("Curso guardado correctamente");
			response.sendRedirect("/exitoAdministrador");
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
package servlets;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import beans.Administrador;
import beans.PMF;

@SuppressWarnings("serial")
public class SaveAdministrador extends HttpServlet{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException{
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Administrador.class);
		List<Administrador> admin = (List<Administrador>) q.execute();
		request.setAttribute("admin", admin);
		
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String username=request.getParameter("username");
		String celular=request.getParameter("celular");
		String dni=request.getParameter("dni");
		String estado=request.getParameter("estado");
		
		if(!existe(username,admin)&& request.getParameter("password").equals(request.getParameter("passwords"))){
			String password = request.getParameter("password");
			
			final Administrador p = new Administrador(nombre,apellido,username,password,celular,dni,estado);
			try{
				pm.makePersistent(pm);
				response.sendRedirect("/getListAdmin");
			}catch(Exception e){
				System.out.println(e);
				response.getWriter().println("Vuelva a intentarlo, quiza se perdio coneccion con las Base de Datos");
			}finally{
				pm.close();
			}
		}
		else{
			response.sendRedirect("WEB-INF/jsp/AgregarAdmin.jsp");
		}
	}
	public boolean existe(String username,List<Administrador> admin){
		boolean res=false;
		for(int i=0;i<admin.size();i++){
			if(admin.get(i).getUsername().equals(username))
				res=true;
		}
		return res;
	}
}

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
import javax.servlet.http.HttpSession;

import beans.Administrador;
import beans.PMF;
//import beans.User;

@SuppressWarnings("serial")
public class LoginAdmin extends HttpServlet
{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException, IOException
	{

		final PersistenceManager pm = PMF.get().getPersistenceManager();

		final Query q = pm.newQuery(Administrador.class);
		List<Administrador> admin= (List<Administrador>) q.execute();
		req.setAttribute("user", admin);

		String usuario = req.getParameter("username");
		String password = req.getParameter("password");

		/*
		 *Administrador
		 * */
		if(usuario.equals("admin")&& password.equals("12345678"))
		{
			try{
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/Index-admin.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
			HttpSession misesion= req.getSession(true);
			misesion.setAttribute("user",usuario);
		}
		else{
			
			int res = esValidoAdmin(usuario,password,admin);

			switch (res)
			{
				case 0:
					resp.sendRedirect("/WEB-INF/jsp/noExisteAdmin.jsp");
					break;
				case 1:
					resp.sendRedirect("/WEB-INF/jsp/noExisteAdmin.jsp");
					break;
				case 2:
					HttpSession misesion= req.getSession(true);
					misesion.setAttribute("user",usuario);
					try{
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/Index-admin.jsp");
						rd.forward(req, resp);
					}catch(Exception e){
						System.out.println(e);
					}finally{
						q.closeAll();
						pm.close();
					}
					break;
			}
		}	
	}	

public int esValidoAdmin(String usuario,String pass,List<Administrador> admin)
{
	int res=0;
	int i=0;
	while(i<admin.size()&&!(admin.get(i).getUsername().equals(usuario)))
	{
		i++;
	}
	if(i<admin.size())
	{
		if(admin.get(i).getUsername().equals(usuario))
			res=1;
		if(admin.get(i).getUsername().equals(usuario)&&admin.get(i).getPassword().equals(pass))
			res=2;
	}
	return res;
}

}
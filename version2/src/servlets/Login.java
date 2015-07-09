package servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
import beans.User;

@SuppressWarnings("serial")
public class Login extends HttpServlet
{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException, IOException
	{

		final PersistenceManager pm = PMF.get().getPersistenceManager();

		final Query q = pm.newQuery(User.class);
		List<User> usuarios = (List<User>) q.execute();
		req.setAttribute("user", usuarios);

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
			/*
			 *Usuario
			 * */
			int res = esValido(usuario,password,usuarios);

			switch (res)
			{
				case 0:
					resp.sendRedirect("noEstasRegistrado.jsp");
					break;
				case 1:	
					resp.sendRedirect("contraIncorrecta.jsp");
					break;
				case 2:
					HttpSession misesion= req.getSession(true);
					misesion.setAttribute("user",usuario);
					try{
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/Index-user.jsp");
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

/*-----------------------------------------------------------------------------------
 * Este metodo permite saber si el email ya existe en la base de datos
 */

public boolean existe(String usuario,List<User> user)
{
	boolean res=false;
	for(int i=0;i<user.size();i++)
	{
		if(user.get(i).getUsername().equals(usuario))
			res=true;
	}
	return res;
}
/*-----------------------------------------------------------------------------------
 * Este metodo permite saber si el email y la contrase�a esta en la base de datos
 */

public int esValido(String usuario,String pass,List<User> user)
{
	int res=0;
	int i=0;
	while(i<user.size()&&!(user.get(i).getUsername().equals(usuario)))
	{
		i++;
	}
	if(i<user.size())
	{
		if(user.get(i).getUsername().equals(usuario))
			res=1;
		if(user.get(i).getUsername().equals(usuario)&&user.get(i).getPassword().equals(pass))
			res=2;
	}
	return res;
}
/*-----------------------------------------------------------------------------------
 */
}
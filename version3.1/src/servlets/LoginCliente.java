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

import beans.Cliente;
import beans.PMF;

@SuppressWarnings("serial")
public class LoginCliente extends HttpServlet
{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException, IOException
	{

		final PersistenceManager pm = PMF.get().getPersistenceManager();

		final Query q = pm.newQuery(Cliente.class);
		List<Cliente> usuarios = (List<Cliente>) q.execute();
		req.setAttribute("user", usuarios);

		String usuario = req.getParameter("username");
		String password = req.getParameter("password");

			/*
			 *Usuario
			 * */
			int res = esValidoUserPass(usuario,password,usuarios);

			switch (res)
			{
				case 0:
					RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/WEB-INF/jsp/noExisteCliente.jsp");
					rd1.forward(req, resp);
					break;
				case 1:
					RequestDispatcher rd2 = getServletContext().getRequestDispatcher("/WEB-INF/jsp/noExisteCliente.jsp");
					rd2.forward(req, resp);
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

public int esValidoUserPass(String usuario,String pass,List<Cliente> user)
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

}
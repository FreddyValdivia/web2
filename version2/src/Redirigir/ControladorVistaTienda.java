package Redirigir;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

import java.io.IOException;

@SuppressWarnings("serial")
public class ControladorVistaTienda extends HttpServlet { 
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException,ServletException {
		String opcion=req.getParameter("botonSeleccionado");
		resp.setContentType("text/plain");
		if(opcion.equals("inicio")){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/atohmStore.jsp");
			view.forward(req, resp);
		}else if(opcion.equals("productos")){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/productos.jsp");
			view.forward(req, resp);
		}else if(opcion.equals("registro")){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/atohmStore.jsp");
			view.forward(req, resp);
		}else if(opcion.equals("contacto")){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/contacto.jsp");
			view.forward(req, resp);
		}else if(opcion.equals("hackerscholar")){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/hackerscholar.jsp");
			view.forward(req, resp);
		}else if(opcion.equals("hackerspace")){
			RequestDispatcher view= req.getRequestDispatcher("/index.jsp");
			view.forward(req, resp);
		}
		resp.getWriter().println(opcion);
	}
}
package Redirigir;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GetInstructionsFormAthomDatosPersonales extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException { 
			try{
				RequestDispatcher rd;
				rd= getServletContext().getRequestDispatcher(
						"/WEB-INF/jsp/instructionsFormAthomDatosPersonales.jsp"
						);
				
				rd.forward(req, resp);
			}catch(Exception e){
				resp.getWriter().println(e.getMessage());
			}
	}
}

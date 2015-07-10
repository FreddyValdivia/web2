package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import beans.Cliente;
import beans.PMF;

@SuppressWarnings("serial")
public class Save extends HttpServlet {
	public boolean isEmpty(
			String name,
			String lastName,
			String dni,
			String province,
			String district,
			String avenueOrStreet,
			String nameAvenueOrStreet,
			String houseNumber,
			String telephone,
			String cellphone,
			String email) {
		
		return
				name.trim().isEmpty()
				|| lastName.trim().isEmpty()
				|| dni.trim().isEmpty()
				|| province.trim().isEmpty()
				|| district.trim().isEmpty()
				|| avenueOrStreet.trim().isEmpty()
				|| nameAvenueOrStreet.trim().isEmpty()
				|| houseNumber.trim().isEmpty()
				|| (telephone.trim().isEmpty() && cellphone.trim().isEmpty())
				|| email.trim().isEmpty();

	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		// Recibiendo los valores ingresados
		// desde el formulario athomDatosPersonales.jsp
		String name = req.getParameter("name");
		String lastName = req.getParameter("lastName");
		String dni = req.getParameter("dni");
		String province = req.getParameter("province");
		String district = req.getParameter("district");
		String avenueOrStreet = req.getParameter("avenueOrStreet");
		String nameAvenueOrStreet = req.getParameter("nameAvenueOrStreet");
		String houseNumber = req.getParameter("houseNumber");
		String telephone = req.getParameter("telephone");
		String cellphone = req.getParameter("cellphone");
		String email = req.getParameter("email");
		
		boolean isEmpty = isEmpty(
				name,
				lastName,
				dni,
				province,
				district,
				avenueOrStreet,
				nameAvenueOrStreet,
				houseNumber,
				telephone,
				cellphone,
				email);
		if(isEmpty) {
			try {
				RequestDispatcher rd;
				rd= getServletContext().getRequestDispatcher(
						"/WEB-INF/jsp/errorAthomDP.jsp"
						);
				rd.forward(req, resp);
			}
			catch(Exception e) {
				resp.getWriter().println(e.getMessage());
			}
		}
		else {
			// Administrador de persistencia
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			
			// Creación del objeto persona
			final Cliente p = new Cliente();
			
			p.setName(name);  
			p.setLastName(lastName);
			p.setDni(dni);
			p.setProvince(province);
			p.setDistrict(district);
			p.setAvenueOrStreet(avenueOrStreet);
			p.setNameAvenueOrStreet(nameAvenueOrStreet);
			p.setHouseNumber(houseNumber);
			p.setTelephone(telephone);
			p.setCellphone(cellphone);
			p.setEmail(email);
			try{
				pm.makePersistent(p);
				RequestDispatcher rd;
				rd= getServletContext().getRequestDispatcher(
						"/WEB-INF/jsp/exitoAthomDP.html"
						);
				rd.forward(req, resp);
			}catch(Exception e){
				resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			}finally{
				pm.close();
			}
		}
	}
}

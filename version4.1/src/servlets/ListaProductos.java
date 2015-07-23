package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Cliente;
import beans.PMF;
import beans.Producto;
import java.util.ArrayList;

@SuppressWarnings("serial")
public class ListaProductos extends HttpServlet { 
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException,ServletException {
		String raspBerryPiB=req.getParameter("raspBerryPiB");
		String arduinoMega=req.getParameter("arduinoMega");
		String ethernetShield=req.getParameter("ethernetShield");
		String arduinoUno=req.getParameter("arduinoUno");
		String arduinoNano=req.getParameter("arduinoNano");
		String arduinoMiniPro=req.getParameter("arduinoMiniPro");
		String imuMpu=req.getParameter("imuMpu");
		String adaptadorUSBSerial=req.getParameter("adaptadorUSBSerial");
		String moduloUltrasonido=req.getParameter("moduloUltrasonido");
		String moduloShieldL293D=req.getParameter("moduloShieldL293D");
		String reductorVoltajeLM2596=req.getParameter("reductorVoltajeLM2596");
		String driverL298N=req.getParameter("driverL298N");
		String reductorVoltajeMini360=req.getParameter("reductorVoltajeMini360");
		
		/*resp.setContentType("text/plain");
		ArrayList<Producto> productos = new ArrayList<Producto>();
		if(raspBerryPiB!=null){
			productos.add(new Producto("Raspberry Pi B+", "170"));
		}
		if(arduinoMega!=null){
			productos.add(new Producto("Arduino Mega 2560","70"));
		}
		if(ethernetShield!=null){
			productos.add(new Producto("Ethernet Shield","50"));
		}
		if(arduinoUno!=null){
			productos.add(new Producto("Arduino Uno R3","55"));
		}
		if(arduinoNano!=null){
			productos.add(new Producto("ArduinoNano","30"));
		}
		if(arduinoMiniPro!=null){
			productos.add(new Producto("Arduino MiniPro","20"));
		}
		if(imuMpu!=null){
			productos.add(new Producto("IMU MPU-6050","20"));
		}
		if(adaptadorUSBSerial!=null){
			productos.add(new Producto("Adaptador USB-Serial","15"));
		}
		if(moduloUltrasonido!=null){
			productos.add(new Producto("M&oacute;dulo Ultras&oacute;nico SH-04","10"));
		}
		if(moduloShieldL293D!=null){
			productos.add(new Producto("M&oacutedulo shield con driver L293D","20"));
		}
		if(reductorVoltajeLM2596!=null){
			productos.add(new Producto("Reductor de Voltaje LM 2596","10"));
		}
		if(driverL298N!=null){
			productos.add(new Producto("Driver para motor DC y PAP con L298N","20"));
		}
		if(reductorVoltajeMini360!=null){
			productos.add(new Producto("Reductor de Voltaje Mini 360","10"));
		}
		if(productos.isEmpty()){
			RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/productos.jsp");
			view.forward(req, resp);
		}else{
		
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Cliente nuevoCliente = new Cliente();
			nuevoCliente.setProductos(productos);
			System.out.println(productos);
			try{
				pm.makePersistent(nuevoCliente);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/athomDatosPersonales.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				RequestDispatcher view= req.getRequestDispatcher("/WEB-INF/jsp/productos.jsp");
				view.forward(req, resp);
				System.out.print(e);
			}finally{
				pm.close();
			}
		}*/
	}
}
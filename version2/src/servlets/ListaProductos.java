package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

import beans.Cliente;
import beans.PMF;
import beans.Producto;
import beans.User;

import java.io.IOException;
import java.util.List;

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
		
		resp.setContentType("text/plain");
		
		List<Producto> productos = null;
		if(raspBerryPiB.equals("on")){
			productos.add(new Producto("Raspberry Pi B+","170"));
		}
		if(arduinoMega.equals("on")){
			productos.add(new Producto("Arduino Mega 2560","70"));
		}
		if(ethernetShield.equals("on")){
			productos.add(new Producto("Ethernet Shield","50"));
		}
		if(arduinoUno.equals("on")){
			productos.add(new Producto("Arduino Uno R3","55"));
		}
		if(arduinoNano.equals("on")){
			productos.add(new Producto("ArduinoNano","30"));
		}
		if(arduinoMiniPro.equals("on")){
			productos.add(new Producto("Arduino MiniPro","20"));
		}
		if(imuMpu.equals("on")){
			productos.add(new Producto("IMU MPU-6050","20"));
		}
		if(adaptadorUSBSerial.equals("on")){
			productos.add(new Producto("Adaptador USB-Serial","15"));
		}
		if(moduloUltrasonido.equals("on")){
			productos.add(new Producto("M&oacute;dulo Ultras&oacute;nico SH-04","10"));
		}
		if(moduloShieldL293D.equals("on")){
			productos.add(new Producto("M&oacutedulo shield con driver L293D","20"));
		}
		if(reductorVoltajeLM2596.equals("on")){
			productos.add(new Producto("Reductor de Voltaje LM 2596","10"));
		}
		if(driverL298N.equals("on")){
			productos.add(new Producto("Driver para motor DC y PAP con L298N","20"));
		}
		if(reductorVoltajeMini360.equals("on")){
			productos.add(new Producto("Reductor de Voltaje Mini 360","10"));
		}
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Cliente nuevoCliente = new Cliente();
		nuevoCliente.setProductos(productos);
		
		try{
			pm.makePersistent(nuevoCliente);
			resp.getWriter().println("Datos grabados correctamente.");
			resp.sendRedirect("WEB-INF/jsp/athomDatosPersonales.jsp");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			resp.sendRedirect("WEB-INF/jsp/productos.jsp");
		}finally{
			pm.close();
		}
	}
}

package beans;

import java.util.ArrayList;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;


//import com.google.appengine.api.datastore.Key;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Cliente {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	//private Long key;
	private Key idCliente;
	
	@Persistent
	private String dni;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String apellidop;
	
	@Persistent
	private String apellidom;
	
	@Persistent
	private String direccion;
	
	@Persistent
	private String email;
	
	@Persistent
	private String username;
	
	@Persistent
	private String password;
	
	@Persistent
	private String celular;
	
	@Persistent
	private String ce;
	
	@Persistent
	private String sexo;
	
	@Persistent
	private ArrayList<Producto> productos;
	
	public Cliente(){
		super();
	}

	public Cliente(String dni, String nombre, String apellidop, String apellidom, String direccion, String email, String username, String password, String celular, String ce, String sexo) {
		super();
		this.dni = dni;
		this.nombre = nombre;
		this.apellidop = apellidop;
		this.apellidom = apellidom;
		this.direccion = direccion;
		this.email = email;
		this.username = username;
		this.password = password;
		this.celular = celular;
		this.ce = ce;
		this.sexo = sexo;
	}

	public String getDNI(){
		return dni;
	}
	public void setDNI(String dni){
		this.dni=dni;
	}
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidop(){
		return apellidop;
	}
	public void setApellidop(String apellidop) {
		this.apellidop = apellidop;
	}
	
	public String getApellidom(){
		return apellidom;
	}
	public void setApellidom(String apellidom){
		this.apellidom = apellidom;
	}
	
	public String getDireccion(){
		return direccion;
	}
	public void setDireccion(String direccion){
		this.direccion = direccion;
	}
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getCelular(){
		return celular;
	}
	public void setCelular(String celular){
		this.celular = celular;
	}
	
	public String getCEstudios(){
		return ce;
	}
	public void setCEstudios(String ce){
		this.ce = ce;
	}
	
	public String getSexo(){
		return sexo;
	}
	public void setSexo(String sexo){
		this.sexo = sexo;
	}

	public String getIdCliente() {
		return KeyFactory.keyToString(idCliente);
	}

	public void setIdCliente(String idCliente) {
		Key keyCliente = KeyFactory.stringToKey(idCliente);
		this.idCliente = KeyFactory.createKey(keyCliente,
		Cliente.class.getSimpleName(), java.util.UUID.randomUUID().toString());
	}
	
	public ArrayList<Producto> getProductos() {
		return productos;
	}

	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}
}
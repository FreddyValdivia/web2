package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Administrador {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String apellido;
	
	@Persistent
	private String username;
	
	@Persistent
	private String password;
	
	@Persistent
	private String celular;
	
	@Persistent
	private String dni;
	
	@Persistent
	private String estado;
	
	public Administrador(String nombre, String apellido, String username, String password, String celular, String dni, String estado){
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.username = username;
		this.password = password;
		this.celular = celular;
		this.dni = dni;
		this.estado = estado;
	}
	
	public Long getKey(){
		return key;
	}
	
	public String getNombre(){
		return this.nombre;
	}
	public void setNombre(String nombre){
		this.nombre = nombre;
	}
	public String getApellido(){
		return this.apellido;
	}
	public void setApellido(String apellido){
		this.apellido = apellido;
	}
	public String getUsername(){
		return this.username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	public String getPassword(){
		return this.password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	public String getCelular(){
		return this.celular;
	}
	public void setCelular(String celular){
		this.celular = celular;
	}
	public String getDni(){
		return this.dni;
	}
	public void setDni(String dni){
		this.dni = dni;
	}
	public String getEstado(){
		return this.estado;
	}
	public void setEstado(String estado){
		this.estado = estado;
	}
	public void setKey(Long key){
		this.key = key;
	}
}
package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class UserCursos {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long key;

	@Persistent
	private String nombre;
	
	@Persistent
	private String apellidop;
	
	@Persistent
	private String apellidom;

	@Persistent
	private String email;
	
	@Persistent
	private String curso;
	
	public UserCursos(String nombre, String apellidop, String apellidom, String email,String curso) {
		super();
		this.nombre = nombre;
		this.apellidop = apellidop;
		this.apellidom = apellidom;
		this.email = email;
		this.curso = curso;
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
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCurso(){
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}

	public Long getKey() {
		return key;
	}
	
}
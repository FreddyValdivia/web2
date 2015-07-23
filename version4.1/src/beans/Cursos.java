package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Cursos {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String costo;
	
	public Cursos(String nombre, String costo){
		super();
		this.nombre = nombre;
		this.costo = costo;
	}
	
	public Cursos(String nombre){
		super();
		this.nombre = nombre;
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
	
	public String getCosto(){
		return this.costo;
	}
	
	public void setCosto(String costo){
		this.costo = costo;
	}
	public void setKey(Long key){
		this.key = key;
	}
}

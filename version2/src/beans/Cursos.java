package beans;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Cursos {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idCurso;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String costo;
	
	public Cursos(String nombre, String costo){
		super();
		this.nombre = nombre;
		this.costo = costo;
	}
	
	public String getIdCurso(){
		return KeyFactory.keyToString(idCurso);
	}
	
	public void setIdCurso(String idCurso){
		Key keyCurso = KeyFactory.stringToKey(idCurso);
		this.idCurso = KeyFactory.createKey(keyCurso,Cursos.class.getSimpleName(),java.util.UUID.randomUUID().toString());
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
	
}

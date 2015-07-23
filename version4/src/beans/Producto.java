package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@PersistenceCapable(identityType = IdentityType.APPLICATION)

public class Producto {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idProducto;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String costo;
	
	@Persistent
	private String imagen;
	
	

	public Producto(String nombre,String costo, String imagen){
		super();
		this.nombre = nombre;
		this.costo = costo;
		this.imagen=imagen;
	}
	
	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getIdProducto(){
		return KeyFactory.keyToString(idProducto);
	}
	
	public void setIdProducto(String idProducto){
		Key keyProducto = KeyFactory.stringToKey(idProducto);
		this.idProducto = KeyFactory.createKey(keyProducto,Administrador.class.getSimpleName(),java.util.UUID.randomUUID().toString());
	}
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCosto() {
		return costo;
	}
	public void setCosto(String costo) {
		this.costo = costo;
	}
}

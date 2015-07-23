package beans;

import java.util.ArrayList;
import java.util.List;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.datanucleus.annotations.Unowned;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Pedido {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key idPedido;
	
	/*@Persistent
	private String numPedido;*/
	
	@Persistent
	@Unowned
	private Cliente cliente;

	@Persistent
	@Unowned
	private List<Producto> productos = new ArrayList<Producto>();

	/*public Pedido(String numPedido, Cliente cliente , List<Producto> productos) {
		super();
		this.numPedido = numPedido;
		this.cliente = cliente;
		this.productos = productos;
	}*/
	
	public Pedido() {
		super();
	}
	
	public String getIdPedido() {
		return KeyFactory.keyToString(idPedido);
	}

	public void setIdPedido(String idPedido) {
		Key keyPedido = KeyFactory.stringToKey(idPedido);
		this.idPedido = KeyFactory.createKey(keyPedido,
		Pedido.class.getSimpleName(), java.util.UUID.randomUUID().toString());
	}

	/*public String getNumPedido() {
		return numPedido;
	}

	public void setNumPedido(String numPedido) {
		this.numPedido = numPedido;
	}*/

	public Cliente getCliente() {
		return cliente;
	}
	
	public String getNombreCliente() {
		return ""+cliente.getNombre()+cliente.getApellidop()+cliente.getApellidom();
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public List<Producto> getProductos() {
		return productos;
	}
	public String getListaProductos() {
		String respuesta="";
		for (Producto producto : productos) {
			respuesta=respuesta+producto.getNombre()+",";
		}
		return respuesta;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}
	
}
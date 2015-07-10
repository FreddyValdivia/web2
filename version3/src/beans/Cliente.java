package beans;

import java.util.ArrayList;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

//import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Cliente {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String lastName;
	
	@Persistent
	private String dni;
	
	@Persistent
	private String province;
	
	@Persistent
	private String district;
	
	@Persistent
	private String avenueOrStreet;
	
	@Persistent
	private String nameAvenueOrStreet;
	
	@Persistent
	private String houseNumber;
	
	@Persistent
	private String telephone;
	
	@Persistent
	private String cellphone;
	
	@Persistent
	private String email;
	
	@Persistent
	private ArrayList<Producto> productos;

	public Cliente() {
		super();
	}
	
	public Long getKey() {
		return key;
	}
	
	public ArrayList<Producto> getProductos() {
		return productos;
	}

	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}

	public void setKey(Long key) {
		this.key = key;
	}

	// name
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	// apellidos
	public void setLastName(String a) {
		this.lastName = a;
	}
	public String getLastName() {
		return lastName;
	}
	
	// dni
	public void setDni(String x) {
		this.dni = x;
	}
	public String getDni() {
		return dni;
	}
	
	// province
	public void setProvince(String x) {
		this.province = x;
	}
	public String getProvince() {
		return province;
	}
	
	// district
	public void setDistrict(String x) {
		this.district = x;
	}
	public String getDistrict() {
		return district;
	}
	
	// avenue or street
	public void setAvenueOrStreet(String x) {
		this.avenueOrStreet = x;
	}
	public String getAvenueOrStreet() {
		return avenueOrStreet;
	}
	
	//nombre de la avenida or calle
	public void setNameAvenueOrStreet(String x) {
		this.nameAvenueOrStreet = x;
	}
	public String getNameAvenueOrStreet() {
		return nameAvenueOrStreet;
	}
	
	// número de domicilio
	public void setHouseNumber(String x) {
		this.houseNumber = x;
	}
	
	public String getHouseNumber() {
		return houseNumber;
	}
	
	// telephone
	public void setTelephone(String x) {
		this.telephone = x;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	// cellphone
	public void setCellphone(String x) {
		this.cellphone = x;
	}
	
	public String getCellphone() {
		return cellphone;
	}
	
	// email
	public void setEmail(String e) {
		this.email = e;
	}
	
	public String getEmail() {
		return email;
	}

}
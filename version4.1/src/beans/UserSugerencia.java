package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class UserSugerencia {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long key;
	
	@Persistent
	private String email;
	
	@Persistent
	private String celular;
	
	@Persistent
	private String username;
	
	@Persistent
	private String sugerencia;
	
	public UserSugerencia(String username, String sugerencia) {
		super();
		this.username = username;
		this.sugerencia = sugerencia;
	}
	
	public UserSugerencia(String email, String celular, String sugerencia) {
		super();
		this.email = email;
		this.celular = celular;
		this.sugerencia = sugerencia;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getCelular(){
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getSugerencia(){
		return sugerencia;
	}
	public void setSugerencia(String sugerencia){
		this.sugerencia = sugerencia;
	}

	public Long getKey() {
		return key;
	}
}	

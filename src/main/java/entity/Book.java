package entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.olingo.odata2.api.annotation.edm.EdmEntityType;

@Entity
@Table(name="book")
@EdmEntityType(namespace = "OData")
public class Book {
	@Id
	private Integer id;
	@Basic
	private String title;
	@Basic
	private double costo;
	@Basic
	private String descripcion;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public double getCosto() {
		return costo;
	}
	public void setCosto(double cost) {
		this.costo = cost;
	}
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String description) {
		this.descripcion = description;
	}
	
	
}

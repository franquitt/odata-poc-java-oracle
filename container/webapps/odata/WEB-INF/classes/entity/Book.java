package entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {
	@Id
	private Integer id;
	@Basic
	private String book;
	@Basic
	private double cost;
	@Basic
	private String description;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}

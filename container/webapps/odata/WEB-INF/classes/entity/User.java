package entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.olingo.odata2.api.annotation.edm.EdmEntityType;
import org.apache.olingo.odata2.api.annotation.edm.EdmNavigationProperty;
import org.apache.olingo.odata2.api.annotation.edm.EdmNavigationProperty.Multiplicity;
import org.apache.olingo.odata2.api.annotation.edm.EdmProperty;


/**
 * User entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
@Entity
@Table(name="USUARIO")
@EdmEntityType(namespace = "OData")
public class User implements java.io.Serializable {

	// Fields
	@Id
	private Integer userId;
	@Basic
	private String userName;
	private String passWord;
	private boolean male;
	private Timestamp birthDate;
	private double locLon;
	@EdmProperty
	private double locLat;
	
	/*@EdmNavigationProperty(name = "Book", toType = Book.class, toMultiplicity = Multiplicity.MANY)*/

	private List<Book> librosRecomendados = new ArrayList<Book>();

	// Constructors

	/** default constructor */
	public User() {
	}
	/** full constructor */
	public User(String userName, String passWord, boolean male,
			Timestamp birthDate, double locLon, double locLat, List<Book> librosRecomendados) {
		this.userName = userName;
		this.passWord = passWord;
		this.male = male;
		this.birthDate = birthDate;
		this.locLon = locLon;
		this.locLat = locLat;
		this.librosRecomendados = librosRecomendados;
		
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public boolean isMale() {
		return this.male;
	}

	public void setMale(boolean male) {
		this.male = male;
	}

	public Timestamp getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Timestamp birthDate) {
		this.birthDate = birthDate;
	}

	public double getLocLon() {
		return this.locLon;
	}

	public void setLocLon(double locLon) {
		this.locLon = locLon;
	}

	public double getLocLat() {
		return this.locLat;	
	}

	public void setLocLat(double locLat) {
		this.locLat = locLat;
	}
	
	public List<Book> getLibrosRecomendados() {
		return librosRecomendados;
	}
	
	
	public void setLibrosRecomendados(List<Book> libros) {
		librosRecomendados = libros;
	}

}
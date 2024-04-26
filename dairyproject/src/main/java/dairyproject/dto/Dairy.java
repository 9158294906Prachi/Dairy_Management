package dairyproject.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.ManyToAny;

import lombok.Data;

@Entity
@Data
public class Dairy {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ownerId;
	private String DairyName;
	@Column(unique = true)
	private long dairyPhone;
	private String dairyAddress;
	private String password;
	
	@OneToMany
	private List<Products> productList;
}

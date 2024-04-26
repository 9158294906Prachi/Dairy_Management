package dairyproject.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import lombok.Data;

@Entity
@Data
public class Customer {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;
	private String customerName;
	@Column(unique = true)
	private long customerPhone;
	@Column(unique = true)
	private String customerEmail;
	private String customerPassword;
	
	@ManyToMany
	private List<Products> productList;
}

package dairyproject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dairyproject.dto.Customer;
import dairyproject.dto.Dairy;
import dairyproject.dto.Products;

public class CustomerDao {
	

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("prasad");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public int saveCustomer(Customer customer) {
		try {
			transaction.begin();
			manager.persist(customer);
			transaction.commit();
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	public List<Dairy> showAllDairy() {
		String jpql="Select d From Dairy d";
		Query query=manager.createQuery(jpql);
		return query.getResultList();
	}
	
	public int customerLogin(String email, String password) {
		String jpql ="Select c from Customer c where c.customerEmail=?1";
		Query query=manager.createQuery(jpql);
		query.setParameter(1, email);
		Customer customer=(Customer) query.getSingleResult();
		if (customer == null) {
			return 0;
		} else {
			if (customer.getCustomerPassword().equals(password)) {
				return 1;
			} else {
				return 2;
			}
		}
	}
	
	public Customer findCustomer(String email) {
		String jpql ="Select c from Customer c where c.customerEmail=?1";
		Query query=manager.createQuery(jpql);
		query.setParameter(1, email);
		Customer customer=(Customer) query.getSingleResult();
		return customer;
	}
	
	public int addProductToCustomerCart(int id,Customer customer) {
		try {
			Products products=manager.find(Products.class, id);
			List<Products> list=customer.getProductList();
			list.add(products);
			customer.setProductList(list);
			transaction.begin();
			manager.merge(customer);
			transaction.commit();
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	public int deleteProductFromCustomer(int id,Customer customer) {
		Products products=manager.find(Products.class, id);
		if (products!=null) {
			List<Products> list=customer.getProductList();
			list.remove(products);
			customer.setProductList(list);
			transaction.begin();
			manager.merge(customer);
			transaction.commit();
			return 1;
		} else {
			return 0;
		}
	}
	
	public Customer findByEmail(String email){
		String jpql ="Select c from Customer c where c.customerEmail=?1";
		Query query=manager.createQuery(jpql);
		query.setParameter(1, email);

		try {
			Customer customer=(Customer) query.getSingleResult();
			return customer;
		} catch (Exception e) {
			return null;
		}
		
	}
	
	public void forgotPasswordC(Customer customer, String newPassword){
		
		customer.setCustomerPassword(newPassword);	
		transaction.begin();
		manager.merge(customer);		
		transaction.commit();
	}

}

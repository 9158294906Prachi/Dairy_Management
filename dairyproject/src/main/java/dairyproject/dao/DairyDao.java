package dairyproject.dao;

import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dairyproject.dto.Customer;
import dairyproject.dto.Dairy;
import dairyproject.dto.Products;

public class DairyDao {
	
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("prasad");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public int saveDairy(Dairy dairy) {
		try {
			transaction.begin();
			manager.persist(dairy);
			transaction.commit();
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	public int loginDairy(long phone, String password) {
		Dairy dairy = findByPhone(phone);
		if (dairy == null) {
			return 0;
		} else {
			if (dairy.getPassword().equals(password)) {
				return 1;
			} else {
				return 2;
			}
		}
	}
	
	public Dairy findDairy(int id) {
	    return manager.find(Dairy.class, id);
	}
	
	public List<Products> saveProductToDairy(Dairy dairy, Products products) {
		try {
			transaction.begin();
			List<Products> list=dairy.getProductList();
			manager.persist(products);
			list.add(products);
			dairy.setProductList(list);
			manager.merge(dairy);
			transaction.commit();
			return dairy.getProductList();
		} catch (Exception e) {
			return dairy.getProductList();
		}
	}
	
	public int deleteProduct(int id,Dairy dairy) {
		Products products=manager.find(Products.class, id);
		
		if (products!=null) {
			List<Products> list=dairy.getProductList();
			list.remove(products);
			dairy.setProductList(list);
			transaction.begin();
			manager.merge(dairy);
			manager.remove(products);
			transaction.commit();
			return 1;
		} else {
			return 0;
		}
	}
	public List<Products> getAllProduct(Dairy dairy) {
		return dairy.getProductList();
	}

	public int updateProduct(int id,Products products, Dairy dairy) {
		Products dbProducts=manager.find(Products.class, id);
		if (dbProducts!=null) {
			products.setProductId(id);
			List<Products> list=dairy.getProductList();
			Collections.replaceAll(list, dbProducts, products);
			dairy.setProductList(list);
			transaction.begin();
			manager.merge(products);
			manager.merge(dairy);
			transaction.commit();
			return 1;
		}
		else {
			return 0;
		}
	}
	
	public Products getProductsById(int id) {
		return manager.find(Products.class, id);
		
	}
	
	public Dairy findByPhone(long phone){
		String jpql ="Select d from Dairy d where d.dairyPhone=?1";
		Query query=manager.createQuery(jpql);
		query.setParameter(1, phone);

		try {
			Dairy dairy=(Dairy) query.getSingleResult();
			return dairy;
		} catch (Exception e) {
			return null;
		}
		
	}
	
	public void forgotPassword(Dairy dairy, String newPassword){
		
		dairy.setPassword(newPassword);	
		transaction.begin();
		manager.merge(dairy);		
		transaction.commit();
	}
}

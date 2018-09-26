/**
 * 
 */
package products.services.impl;

import java.util.List;

import entities.Product;
import products.repositories.ProductRepositories;
import products.services.ProductServices;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Saber
 *
 */
@Service
public class ProductServicesImpl implements ProductServices {
	@Autowired
	ProductRepositories productDao;
	@Autowired
	SessionFactory ssfactory;

	@Transactional(readOnly=true)
	public List<Product> getListProducts() {
		return productDao.getListProduct(ssfactory.getCurrentSession());
	}
	
	
	@Override
	@Transactional(readOnly=true)
	public List<Product> getProductByPage(int start,String categoryId) {
		return productDao.getListProductByPage(ssfactory.getCurrentSession(),start,categoryId);
	}


	@Override
	@Transactional(readOnly=true)
	public Product getProductById(int pID) {
		return productDao.getListProductById(ssfactory.getCurrentSession(),pID);
	}


	@Override
	@Transactional
	public boolean insertProduct(Product product) {
		return productDao.insert(ssfactory.getCurrentSession(),product);
	}


	@Override
	@Transactional(readOnly=true)
	public List<Product> getByPage(int start) {
		return productDao.getByPage(ssfactory.getCurrentSession(),start);
	}


	@Override
	@Transactional(readOnly=true)
	public List<Product> getProductByCategory(String category) {
		return productDao.getListProductByCategory(ssfactory.getCurrentSession(),category);
	}


}

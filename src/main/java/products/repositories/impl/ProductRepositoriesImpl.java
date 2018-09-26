package products.repositories.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import entities.Product;
import products.repositories.ProductRepositories;

@Repository
public class ProductRepositoriesImpl implements ProductRepositories {

	@SuppressWarnings("unchecked")
	public List<Product> getListProduct(Session session) {
		try {
			String hql = "from Product";
			Query query = session.createQuery(hql);
			if (query.list() != null) {
				return query.list();
			} else {
				return new ArrayList<Product>();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Product>();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getListProductByPage(Session session, int start, String categoryId) {
		try {
			String hql = "from Product where categoryId.id =:categoryId";
			Query query = session.createQuery(hql);
			query.setParameter("categoryId", categoryId);
			query.setFirstResult(start);
			query.setMaxResults(9);
			if (query.list() != null) {
				return query.list();
			} else {
				return new ArrayList<Product>();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Product>();
		}
	}

	@Override
	public Product getListProductById(Session session, int pID) {
		try {
			String hql = "from Product where id =:pID";
			Query query = session.createQuery(hql);
			query.setInteger("pID", pID);
			Product product = (Product) query.uniqueResult();
			if (product != null) {
				return product;
			} else {
				return new Product();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new Product();
		}
	}

	@Override
	public boolean insert(Session session, Product product) {
		try {
			session.save(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByPage(Session currentSession, int start) {
		try {
			String hql = "from Product";
			Query query = currentSession.createQuery(hql);
			query.setFirstResult(start);
			query.setMaxResults(10);
			if (query.list() != null) {
				return query.list();
			} else {
				return new ArrayList<Product>();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Product>();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getListProductByCategory(Session currentSession, String category) {
		try {
			String hql = "from Product where categoryId.id =:categoryId";
			Query query = currentSession.createQuery(hql);
			query.setParameter("categoryId", category);
			query.setMaxResults(9);
			if (query.list() != null) {
				return query.list();
			} else {
				return new ArrayList<Product>();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Product>();
		}
	}

}

package products.repositories;

import java.util.List;

import org.hibernate.Session;

import entities.Product;

public interface ProductRepositories {
 List<Product> getListProduct(Session session);

List<Product> getListProductByPage(Session session, int start,String categoryId);

Product getListProductById(Session session, int pID);

boolean insert(Session session,Product product);
}

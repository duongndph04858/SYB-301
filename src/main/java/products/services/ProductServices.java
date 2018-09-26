package products.services;

import java.util.List;

import entities.Product;

public interface ProductServices {
List<Product> getListProducts();
List<Product> getProductByPage(int start,String categoryId);
Product getProductById(int pID);
boolean insertProduct(Product product);
List<Product> getByPage(int start);
List<Product> getProductByCategory(String category);
}

package entities;

public class Cart {
 private int productId;
 private Product products;
 private int quantity;
/**
 * 
 */
public Cart() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param productId
 * @param products
 * @param quantity
 */

/**
 * @return the productId
 */
public int getProductId() {
	return productId;
}
/**
 * @param productId
 * @param products
 * @param quantity
 */
public Cart(int productId, Product products, int quantity) {
	super();
	this.productId = productId;
	this.products = products;
	this.quantity = quantity;
}
/**
 * @param productId the productId to set
 */
public void setProductId(int productId) {
	this.productId = productId;
}
/**
 * @return the products
 */
public Product getProducts() {
	return products;
}
/**
 * @param products the products to set
 */
public void setProducts(Product products) {
	this.products = products;
}
/**
 * @return the quantity
 */
public int getQuantity() {
	return quantity;
}
/**
 * @param quantity the quantity to set
 */
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
 
 
}

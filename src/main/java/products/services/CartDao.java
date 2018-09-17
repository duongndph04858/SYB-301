package products.services;

import java.util.HashMap;

import org.springframework.stereotype.Component;
import entities.Cart;
import entities.Product;

@Component
public class CartDao extends HashMap<Integer, Cart> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void addToCart(Product product) {
		if (this.containsKey(product.getId())) {
			int oldQuantity = this.get(product.getId()).getQuantity();
			this.get(product.getId()).setQuantity(oldQuantity+1);
		} else {
			this.put(product.getId(), new Cart(product.getId(), product, 1));
		}
	}

	public void removeToCart(int id) {
		if (this.containsKey(id)) {
			this.remove(id);
		}
	}

	public long getTotalPrice() {
		long totalPrice = 0;
		for (int product : this.keySet()) {
			totalPrice += this.get(product).getProducts().getAmount() * this.get(product).getProducts().getPrice()
					* this.get(product).getQuantity();
		}
		return totalPrice;
	}
}

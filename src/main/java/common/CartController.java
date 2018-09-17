package common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

	@RequestMapping("cart")
	public String cart() {
		return "users/cart";
	}
	
	@RequestMapping("order-info")
	public String orderInfo() {
		return "users/order-info";
	}
	
	@RequestMapping("payment")
	public String payment() {
		return "users/payment";
	}
}

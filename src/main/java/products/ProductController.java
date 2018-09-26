package products;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import entities.Product;
import products.services.CartDao;
import products.services.ProductServices;

/*Controller for products*/

@Controller
public class ProductController {
	@Autowired
	ProductServices pServices;

	@Autowired
	CartDao cartDao;

	@RequestMapping(value = "product", params = { "category", "start" })
	public String getProductsByCategory(ModelMap md, @RequestParam int start, @RequestParam String category) {
		List<Product> lst = pServices.getProductByPage(start, category);
		md.addAttribute("product", lst);
		int page = Math.round(lst.size() / 9);
		md.addAttribute("page", page);
		return "users/product";
	}

	@RequestMapping("addToCart")
	public String addToCart(HttpSession session, ModelMap md, @RequestParam int pID, HttpServletRequest request) {
		session = request.getSession(true);
		cartDao = (CartDao) session.getAttribute("cart");
		Product product = pServices.getProductById(pID);
		if (cartDao == null) {
			cartDao = new CartDao();
		}
		cartDao.addToCart(product);
		session.setAttribute("cart", cartDao);
		session.setAttribute("total", cartDao.getTotalPrice());
		return "users/cart";

	}

	@RequestMapping("cart")
	public String cart() {
		return "users/cart";
	}

	@RequestMapping("remove-to-cart")
	public String removeToCart(@RequestParam int pID) {
		cartDao.removeToCart(pID);
		return "users/cart";
	}
}

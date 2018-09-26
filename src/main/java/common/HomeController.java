package common;

import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entities.OrderDetail;
import entities.Orders;
import orders.services.OrderServices;
import products.services.CartDao;

@Controller
public class HomeController {
	@Autowired
	OrderServices orderServices;

	@RequestMapping(value = "home")
	public String getListProduct(ModelMap md) {
		return "users/home";
	}

	@RequestMapping(value = "/")
	public String home(ModelMap md) {
		return "users/home";
	}

	@RequestMapping("order-info")
	public String orderInfo(HttpSession session, HttpServletRequest request) {
		session = request.getSession();
		CartDao cart = (CartDao) session.getAttribute("cart");
		if (cart.size() <= 0) {
			return "users/cart";
		} else {
			return "users/order-info";
		}
	}

	@RequestMapping("payment")
	public String payMent(HttpSession session, HttpServletRequest request, @RequestParam String homeNumber,
			@RequestParam String username, @RequestParam String street, @RequestParam String phone,
			@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "facebook", required = false) String facebook, @RequestParam String province,
			@RequestParam String distric, ModelMap md) {
		session = request.getSession();
		Orders order = (Orders) session.getAttribute("order");
		long totalPrice = (long) session.getAttribute("total");
		if (order == null) {
			order = new Orders();
		}
		if (homeNumber.isEmpty() || username.isEmpty() || street.isEmpty() || phone.isEmpty() || province.isEmpty()
				|| distric.isEmpty()) {
			md.addAttribute("notice", "Vui lòng nhập đủ các trường yêu cầu(*)!");
			return "users/order-info";
		} else {
			order.setDateCreate(new Date());
			order.setUserId("user");
			order.setEmail(email);
			order.setFacebook(facebook);
			order.setPhone(phone);
			order.setShipAddress(homeNumber + " " + street + " " + distric + " " + province);
			order.setStatus("Đang xử lý");
			order.setUsername(username);
			order.setTotalPrice(totalPrice+30000);
			session.setAttribute("order", order);
		}
		return "users/payment";
	}

	@RequestMapping("pay")
	public String pay(HttpSession session, HttpServletRequest request, ModelMap md) {
		session = request.getSession();
		Orders order = (Orders) session.getAttribute("order");
		CartDao cart = (CartDao) session.getAttribute("cart");
		boolean kq1 = orderServices.insert(order);
		boolean kq2 = false;
		for (int x : cart.keySet()) {
			kq2 = orderServices.insertOrderDetail(new OrderDetail(order, cart.get(x).getProducts().getPrice(),
					cart.get(x).getQuantity(), cart.get(x).getProducts()));
		}
		if (kq1 == true && kq2 == true) {
			session.removeAttribute("order");
			session.removeAttribute("cart");
			md.addAttribute("notice", "Đặt hàng thành công!");
			return "users/cart";
		} else {
			md.addAttribute("notice", "Đặt hàng thất bại, thử lại sau!");
			return "users/payment";
		}
	}
}

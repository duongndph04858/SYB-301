package dashboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entities.Orders;
import orders.services.OrderServices;

@Controller
@RequestMapping("admin/dashboard/order")
public class DashboardOrder {

	@Autowired
	OrderServices orderServices;

	@RequestMapping("view-order")
	public String view(ModelMap md) {
		List<Orders> lst = orderServices.getAll();
		md.addAttribute("listO", lst);
		md.addAttribute("pageO", Math.round(lst.size() / 5));
		return "admin/dashboard/order";
	}
	@RequestMapping("order-detail")
	public String orderDetail(@RequestParam int orderNo,ModelMap md) {
		Orders order = orderServices.getById(orderNo);
		md.addAttribute("orderDetail", order);
		return "admin/dashboard/order-detail";
	}
}

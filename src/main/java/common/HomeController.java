package common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home")
	public String getListProduct(ModelMap md) {
		return "users/home";
	}
	@RequestMapping(value="/")
	public String home(ModelMap md) {
		return "users/home";
	}
}

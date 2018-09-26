package dashboard;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class DashboardController {

	@RequestMapping("login")
	public String login() {
		return "admin/login";
	}

	@RequestMapping("dashboard/home")
	public String home() {
		return "admin/dashboard/overview";
	}

	@RequestMapping("authentication")
	public String authentication(@RequestParam String username, @RequestParam String password, ModelMap md,
			HttpSession session) {
		if (username.equals("admin") && password.equals("123")) {
			session.setAttribute("authentication", "admin");
			return "redirect:/admin/dashboard/home";
		} else {
			if (username.isEmpty()) {
				md.addAttribute("userErr", "Vui lòng nhập tài khoản!");
			}
			if (password.isEmpty()) {
				md.addAttribute("passErr", "Vui lòng nhập mật khẩu!");
			}
			if (!username.equals("admin") && !username.isEmpty()) {
				md.addAttribute("userErr", "Tài khoản không tồn tại!");
			}
			if (username.equals("admin") && !password.equals("123")) {
				md.addAttribute("passErr", "Mật khẩu không chính xác!");
			}
			return "admin/login";
		}
	}

}

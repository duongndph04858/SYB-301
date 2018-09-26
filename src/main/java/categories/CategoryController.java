package categories;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import categories.services.CategoryServices;
import entities.Category;

@Controller
@RequestMapping("admin/dashboard/category")
public class CategoryController {
	@Autowired
	CategoryServices categoryServices;

	@RequestMapping("category-management")
	public String show(ModelMap md) {
		List<Category> lst = categoryServices.getAll();
		md.addAttribute("listC", lst);
		return "admin/dashboard/category";
	}

	@RequestMapping("insert-category")
	public String insertCategory(@RequestParam String id, @RequestParam String name, RedirectAttributes redirect) {
		List<String> lstId = categoryServices.getId();
		boolean flag = true;
		if (id.isEmpty()) {
			flag = false;
			redirect.addFlashAttribute("idErr", "Vui lòng nhập mã danh mục!");
		}
		if (name.isEmpty()) {
			flag = false;
			redirect.addFlashAttribute("nameErr", "Vui lòng nhập tên danh mục!");
		}
		if (lstId.contains(id)) {
			flag = false;
			redirect.addFlashAttribute("idErr", "Mã danh mục đã tồn tại!");

		}
		if (flag == true) {
			Category c = new Category();
			c.setId(id);
			c.setName(name);
			categoryServices.insertCategory(c);
			redirect.addFlashAttribute("notice", "success");
		}
		return "redirect:/admin/dashboard/category/category-management";
	}
}

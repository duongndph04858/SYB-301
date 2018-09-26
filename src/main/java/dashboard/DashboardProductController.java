package dashboard;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import categories.services.CategoryServices;
import entities.Category;
import entities.Product;
import products.services.ProductServices;

@Controller
@RequestMapping("admin/dashboard/product")
public class DashboardProductController {
	@Autowired
	CategoryServices categoryServices;

	@Autowired
	ProductServices productServices;

	@Autowired
	ServletContext context;

	@RequestMapping("product-management")
	public String product(ModelMap md) {
		List<Product> listP = productServices.getListProducts();
		md.addAttribute("listP", listP);
		return "admin/dashboard/product-management";
	}

	@RequestMapping("insert-product")
	public String insertInput(ModelMap md) {
		List<Category> lstC = categoryServices.getAll();
		md.addAttribute("listC", lstC);
		return "admin/dashboard/insert-product";
	}

	@RequestMapping(value="insert",method=RequestMethod.POST)
	public String insert(@RequestParam String name, @RequestParam String category, @RequestParam MultipartFile image,
			@RequestParam double amount, @RequestParam String priceUnit, @RequestParam double amountUnit,
			@RequestParam String amountUnitType, @RequestParam String quality, @RequestParam long price,
			RedirectAttributes redirect, ModelMap md) {
		System.out.println(name);
		try {
			if (!image.isEmpty()) {
				String imgPath = context.getRealPath("/resources/images/" + image.getOriginalFilename());
				image.transferTo(new File(imgPath));
			}
			Product p = new Product();
			Category c = categoryServices.getById(category);
			p.setName(name);	
			p.setCategoryId(c);
			p.setImage(image.getOriginalFilename());
			p.setAmount(amount);
			p.setPriceUnit(priceUnit);
			p.setAmountUnit(amountUnit);
			p.setAmountUnitType(amountUnitType);
			p.setQuality(quality);
			p.setPrice(price);
			p.setStatus("Còn hàng");
			boolean result = productServices.insertProduct(p);
			if (result == true) {
				redirect.addFlashAttribute("notice", "Thêm sản phẩm mới thành công!");
				return "redirect:/admin/dashboard/product/product-management";
			} else {
				List<Category> lstC = categoryServices.getAll();
				md.addAttribute("listC", lstC);
				md.addAttribute("notice", "Thêm sản phẩm thất bại!");
				return "admin/dashboard/insert-product";
			}
		} catch (Exception e) {
			redirect.addFlashAttribute("notice", "Lỗi hệ thống, vui lòng thử lại sau!");
			return "redirect:/admin/dashboard/product/product-management";
		}

	}
}

package categories.services;

import java.util.List;

import entities.Category;

public interface CategoryServices {

	List<Category> getAll();

	boolean insertCategory(Category c);

	List<String> getId();

	Category getById(String id);
}

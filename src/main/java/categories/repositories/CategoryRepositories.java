package categories.repositories;

import java.util.List;

import org.hibernate.Session;

import entities.Category;

public interface CategoryRepositories {

	List<Category> getAll(Session session);

	boolean insert(Session session, Category c);

	List<String> getAllId(Session session);

	Category getById(Session session, String id);

}

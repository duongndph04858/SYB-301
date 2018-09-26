package categories.services.impl;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import categories.repositories.CategoryRepositories;
import categories.services.CategoryServices;
import entities.Category;

@Service
public class CategoryServicesImpl implements CategoryServices {
	@Autowired
	SessionFactory ssfac;
	@Autowired
	CategoryRepositories categoryDao;

	@Override
	@Transactional(readOnly=true)
	public List<Category> getAll() {
		return categoryDao.getAll(ssfac.getCurrentSession());
	}

	@Override
	@Transactional
	public boolean insertCategory(Category c) {
		return categoryDao.insert(ssfac.getCurrentSession(),c);
	}

	@Override
	@Transactional(readOnly=true)
	public List<String> getId() {
		return categoryDao.getAllId(ssfac.getCurrentSession());
	}

	@Override
	@Transactional(readOnly=true)
	public Category getById(String id) {
		return categoryDao.getById(ssfac.getCurrentSession(),id);
	}

}

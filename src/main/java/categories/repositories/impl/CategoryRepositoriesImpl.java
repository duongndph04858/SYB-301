package categories.repositories.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import categories.repositories.CategoryRepositories;
import entities.Category;

@Repository
public class CategoryRepositoriesImpl implements CategoryRepositories {

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getAll(Session session) {
		try {
			String hql = "from Category";
			Query query = session.createQuery(hql);
			if (query.list() == null) {
				return new ArrayList<>();
			}
			return query.list();
		} catch (Exception e) {
			return new ArrayList<>();
		}
	}

	@Override
	public boolean insert(Session session, Category c) {
		try {
			session.save(c);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllId(Session session) {
		try {
			String hql = "select id from Category";
			Query query = session.createQuery(hql);
			if (query.list() == null) {
				return new ArrayList<>();
			}
			return query.list();
		} catch (Exception e) {
			return new ArrayList<>();
		}
	}

	@Override
	public Category getById(Session session, String id) {
		try {
			String hql = "from Category where id=:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			Category c = (Category) query.uniqueResult();
			if (c == null) {
				return new Category();
			}
			return c;
		} catch (Exception e) {
			e.printStackTrace();
			return new Category();
		}
	}

}

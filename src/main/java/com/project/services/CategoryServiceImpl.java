package com.project.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Category;
import com.project.repository.CategoryRepo;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private CategoryRepo cateRepo;

	@Override
	public Iterable<Category> findAll() {
		return cateRepo.findAll();
	}

	@Override
	public List<Category> search(String name) {
		return cateRepo.findByCategoryName(name);
	}

	@Override
	public Category findOne(int id) {
		return cateRepo.findOne(id);
	}

	@Override
	public void save(Category category) {
		cateRepo.save(category);
	}

	@Override
	public void delete(int id) {
		cateRepo.delete(id);
	}

	@Override
	public boolean findCategoryByName(String name) {

		String hql = "FROM category WHERE category_name = '" + name + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		if (query.list().isEmpty())
			return false;
		return true;
	}
}

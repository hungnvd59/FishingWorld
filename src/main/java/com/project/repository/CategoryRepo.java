package com.project.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.Category;

@Repository
public interface CategoryRepo extends CrudRepository<Category, Integer> {

	List<Category> findByCategoryName(String name);

}

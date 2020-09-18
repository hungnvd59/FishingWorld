package com.project.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.Admin;

@Repository
public interface AdminRepo extends CrudRepository<Admin, Integer> {

	List<Admin> findByName(String name);

}

package com.project.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.Order;

@Repository
public interface OrderRepo extends CrudRepository<Order, Integer>  {

}

package com.project.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Order;
import com.project.entities.Report;
import com.project.repository.OrderRepo;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepo orderRepo;

	@Autowired
	private SessionFactory factory;

	@Override
	public Iterable<Order> findAll() {

		return orderRepo.findAll();
	}

	@Override
	public Order findOne(int id) {

		return orderRepo.findOne(id);
	}

	@Override
	public void save(Order order) {

		orderRepo.save(order);
	}

	@Override
	public void update(Order order) {

		orderRepo.save(order);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Order> getNewOrder() {

		String hql = "FROM order_detail WHERE status = 0";
		return factory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Order> getCheckedOrder() {

		String hql = "FROM order_detail WHERE status = 1";
		return factory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Report> getOrderByCategory() {

		List<Report> list = new ArrayList<Report>();
		String hql = "SELECT category.categoryName as name,count(*) as num  FROM order_detail_main INNER JOIN product on order_detail_main.product_id=product.product_id INNER join category ON product.category_id=category.category_id group by category.category_name";
		SQLQuery query = factory.getCurrentSession().createSQLQuery(hql).addScalar("name", new StringType())
				.addScalar("num", new IntegerType());
		List<Object[]> rows = query.list();
		for (Object[] row : rows) {
			Report ord = new Report();
			ord.setname(row[0].toString());
			ord.setNum(Integer.parseInt(row[1].toString()));
			list.add(ord);

		}

		System.out.println(list.get(1).getname());
		return list;

	}

}

package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.OrderDetail;

@Service
@Transactional
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private SessionFactory factory;

	@Override
	@SuppressWarnings("unchecked")
	public List<OrderDetail> findByOrderID(int id) {

		String hql = "FROM order_detail_main WHERE order.order_id = " + id;
		return factory.openSession().createQuery(hql).list();
	}

	@Override
	public void save(OrderDetail orderDetail) {

		Session session = factory.openSession();
		Transaction tst = session.beginTransaction();
		try {
			session.save(orderDetail);
			tst.commit();
		} catch (Exception e) {

			tst.rollback();
		} finally {
			session.close();
		}
	}

	@Override
	public void update(OrderDetail orderDetail) {

		Session session = factory.openSession();
		Transaction tst = session.beginTransaction();
		try {
			session.update(orderDetail);
			tst.commit();
		} catch (Exception e) {
			tst.rollback();
		} finally {
			session.close();
		}
	}

}

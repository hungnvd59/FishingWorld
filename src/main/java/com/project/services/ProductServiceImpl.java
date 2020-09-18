package com.project.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Product;
import com.project.entities.Report;
import com.project.repository.ProductRepo;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepo productRepo;

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Iterable<Product> findAll() {

		return productRepo.findAll();
	}

	@Override
	public List<Product> search(String name) {

		return productRepo.findByProductName(name);
	}

	@Override
	public Product findOne(int id) {

		return productRepo.findOne(id);
	}

	@Override
	public void save(Product product) {

		productRepo.save(product);
	}

	@Override
	public void delete(int id) {

		productRepo.delete(id);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> searchByCateID(int id) {

		String query = "from Product where category.category_id = " + id;
		return sessionFactory.getCurrentSession().createQuery(query).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> SearchByPriceRange(long from, long to) {

		String query = "from Product where price between " + from + " and " + to;
		return sessionFactory.getCurrentSession().createQuery(query).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> SearchByCateAndPriceRange(int id, long from, long to) {

		String query = "from Product where category.category_id = " + id + " and price between " + from + " and " + to;
		return sessionFactory.getCurrentSession().createQuery(query).list();
	}

	@Override
	public void update(Product product) {

		Session session = sessionFactory.openSession();
		Transaction tst = session.beginTransaction();
		try {
			session.update(product);
			tst.commit();
		} catch (Exception e) {
			tst.rollback();
		} finally {
			session.close();
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getByBestSeller(int topNumber) {
		List<Product> list = new ArrayList<Product>();
		String hql = "select product_name,price,image from product WHERE product_id IN (SELECT product_id FROM order_detail_main GROUP by product_id ORDER By COUNT(*) DESC)";
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(hql)
				.addScalar("product_name", new StringType()).addScalar("price", new IntegerType())
				.addScalar("image", new StringType());
		query.setFirstResult(0);
		query.setMaxResults(topNumber);
		List<Object[]> rows = query.list();
		for (Object[] row : rows) {
			Product pro = new Product();
			pro.setProductName(row[0].toString());
			pro.setPrice(Long.parseLong(row[1].toString()));
			pro.setImage(row[2].toString());
			list.add(pro);

		}
		System.out.println(list.get(1).getProductName());
		return list;

	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getByMostViews(int topNumber) {

		List<Product> list = new ArrayList<Product>();

		//
		String hql = "select product_name,price,image, views from product ORDER BY views DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(topNumber);

		List<Object[]> rows = query.list();

		for (Object[] row : rows) {
			Product pro = new Product();
			pro.setProductName(row[0].toString());
			pro.setPrice(Long.parseLong(row[1].toString()));
			pro.setImage(row[2].toString());
			pro.setViews(Integer.parseInt(row[3].toString()));
			list.add(pro);
		}

		System.out.println("ProductName: " + list.get(0).getProductName());
		return list;

	}

	@Override
	public Product findByName(String name) {

		String hql = "FROM product WHERE product_name = '" + name + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return (Product) query.list().get(0);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> forBlog() {

		String hql = "FROM Product WHERE blog is not null";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Report> productCategory() {

		List<Report> list = new ArrayList<Report>();
		String hql = "SELECT category.category_name as name,count(*) as num  FROM  product INNER join category ON product.category_id=category.category_id group by category.category_name";
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(hql).addScalar("name", new StringType())
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

package orders.repositories.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import entities.OrderDetail;
import entities.Orders;
import orders.repositories.OrderRepositories;

@Repository
public class OrderRepositoriesImpl implements OrderRepositories {

	@Override
	public boolean insert(Session session, Orders order) {
		try {
			session.save(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean insertDetail(Session session, OrderDetail orderDetail) {
		try {
			session.save(orderDetail);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getAll(Session session) {
		try {
			String hql = "from Orders";
			Query query = session.createQuery(hql);
			if (query.list() != null) {
				return query.list();
			} else {
				return new ArrayList<Orders>();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Orders>();
		}
	}

}

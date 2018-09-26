package orders.services.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entities.OrderDetail;
import entities.Orders;
import orders.repositories.OrderRepositories;
import orders.services.OrderServices;

@Service
public class OrderServicesImpl implements OrderServices {
	@Autowired
	SessionFactory ssfac;
	@Autowired
	OrderRepositories orderDao;

	@Override
	@Transactional
	public boolean insert(Orders order) {
		return orderDao.insert(ssfac.getCurrentSession(),order);
	}

	@Override
	@Transactional
	public boolean insertOrderDetail(OrderDetail orderDetail) {
		return orderDao.insertDetail(ssfac.getCurrentSession(),orderDetail);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Orders> getAll() {
		return orderDao.getAll(ssfac.getCurrentSession());
	}

}

package orders.repositories;

import java.util.List;

import org.hibernate.Session;

import entities.OrderDetail;
import entities.Orders;

public interface OrderRepositories {

	boolean insert(Session session, Orders order);

	boolean insertDetail(Session session, OrderDetail orderDetail);

	List<Orders> getAll(Session session);

}

package orders.services;

import java.util.List;

import entities.OrderDetail;
import entities.Orders;

public interface OrderServices {

	boolean insert(Orders order);

	boolean insertOrderDetail(OrderDetail orderDetail);

	List<Orders> getAll();

}

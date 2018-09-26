package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "OrderDetail")
public class OrderDetail {

	@Id
	@Column(name = "id")
	@GeneratedValue
	private int id;
	@ManyToOne
	@JoinColumn(name = "order_no")
	private Orders orderNo;
	@Column(name = "price")
	private long price;
	@Column(name = "amount")
	private int amount;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product productId;

	/**
	 * 
	 */
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param orderNo
	 * @param price
	 * @param amount
	 * @param productId
	 */
	public OrderDetail(Orders orderNo, long price, int amount, Product productId) {
		super();
		this.orderNo = orderNo;
		this.price = price;
		this.amount = amount;
		this.productId = productId;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the orderNo
	 */
	public Orders getOrderNo() {
		return orderNo;
	}

	/**
	 * @param orderNo the orderNo to set
	 */
	public void setOrderNo(Orders orderNo) {
		this.orderNo = orderNo;
	}

	/**
	 * @return the price
	 */
	public long getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(long price) {
		this.price = price;
	}

	/**
	 * @return the amount
	 */
	public int getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(int amount) {
		this.amount = amount;
	}

	/**
	 * @return the productId
	 */
	public Product getProductId() {
		return productId;
	}

	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Product productId) {
		this.productId = productId;
	}

}

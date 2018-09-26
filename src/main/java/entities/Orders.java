package entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Orders")
public class Orders {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@OneToMany(mappedBy = "orderNo", fetch = FetchType.EAGER)
	private List<OrderDetail> orderDetails;
	@Column(name = "userId")
	private String userId;
	@Column(name = "shipAddress")
	private String shipAddress;
	@Column(name = "phone")
	private String phone;
	@Column(name = "status")
	private String status;
	@Column(name = "email")
	private String email;
	@Column(name = "facebook")
	private String facebook;
	@Column(name = "username")
	private String username;
	@Column(name = "dateCreate")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateCreate;
	@Column(name="totalPrice")
	private long totalPrice;

	/**
	 * 
	 */
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param orderDetails
	 * @param userId
	 * @param shipAddress
	 * @param phone
	 * @param status
	 * @param email
	 * @param facebook
	 * @param username
	 * @param dateCreate
	 * @param totalPrice
	 */
	public Orders(int id, List<OrderDetail> orderDetails, String userId, String shipAddress, String phone,
			String status, String email, String facebook, String username, Date dateCreate, long totalPrice) {
		super();
		this.id = id;
		this.orderDetails = orderDetails;
		this.userId = userId;
		this.shipAddress = shipAddress;
		this.phone = phone;
		this.status = status;
		this.email = email;
		this.facebook = facebook;
		this.username = username;
		this.dateCreate = dateCreate;
		this.totalPrice = totalPrice;
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
	 * @return the orderDetails
	 */
	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	/**
	 * @param orderDetails the orderDetails to set
	 */
	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the shipAddress
	 */
	public String getShipAddress() {
		return shipAddress;
	}

	/**
	 * @param shipAddress the shipAddress to set
	 */
	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the facebook
	 */
	public String getFacebook() {
		return facebook;
	}

	/**
	 * @param facebook the facebook to set
	 */
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the dateCreate
	 */
	public Date getDateCreate() {
		return dateCreate;
	}

	/**
	 * @param dateCreate the dateCreate to set
	 */
	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	/**
	 * @return the totalPrice
	 */
	public long getTotalPrice() {
		return totalPrice;
	}

	/**
	 * @param totalPrice the totalPrice to set
	 */
	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	
}

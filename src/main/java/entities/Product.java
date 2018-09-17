package entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "\"Product\"")
public class Product {

	@Id
	@GeneratedValue
	@Column(name = "\"id\"")
	private int id;
	@Column(name = "\"name\"")
	private String name;
	@ManyToOne
	@JoinColumn(name = "\"category_id\"")
	private Category categoryId;
	@Column(name = "\"amount\"")
	private double amount;
	@Column(name = "\"price\"")
	private long price;
	@Column(name = "\"quality\"")
	private String quality;
	@Column(name = "\"price_unit\"")
	private String priceUnit;
	@Column(name = "\"amount_unit\"")
	private double amountUnit;
	@Column(name = "\"image\"")
	private String image;
	@Column(name = "\"amount_unitType\"")
	private String amountUnitType;
	@Column(name = "\"status\"")
	private String status;

	/**
	 * 
	 */
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param name
	 * @param categoryId
	 * @param amount
	 * @param price
	 * @param quality
	 * @param priceUnit
	 * @param amountUnit
	 * @param image
	 * @param amountUnitType
	 * @param status
	 */
	public Product(int id, String name, Category categoryId, double amount, long price, String quality,
			String priceUnit, double amountUnit, String image, String amountUnitType, String status) {
		super();
		this.id = id;
		this.name = name;
		this.categoryId = categoryId;
		this.amount = amount;
		this.price = price;
		this.quality = quality;
		this.priceUnit = priceUnit;
		this.amountUnit = amountUnit;
		this.image = image;
		this.amountUnitType = amountUnitType;
		this.status = status;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the categoryId
	 */
	public Category getCategoryId() {
		return categoryId;
	}

	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}

	/**
	 * @return the amount
	 */
	public double getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(double amount) {
		this.amount = amount;
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
	 * @return the quality
	 */
	public String getQuality() {
		return quality;
	}

	/**
	 * @param quality the quality to set
	 */
	public void setQuality(String quality) {
		this.quality = quality;
	}

	/**
	 * @return the priceUnit
	 */
	public String getPriceUnit() {
		return priceUnit;
	}

	/**
	 * @param priceUnit the priceUnit to set
	 */
	public void setPriceUnit(String priceUnit) {
		this.priceUnit = priceUnit;
	}

	/**
	 * @return the amountUnit
	 */
	public double getAmountUnit() {
		return amountUnit;
	}

	/**
	 * @param amountUnit the amountUnit to set
	 */
	public void setAmountUnit(double amountUnit) {
		this.amountUnit = amountUnit;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @return the amountUnitType
	 */
	public String getAmountUnitType() {
		return amountUnitType;
	}

	/**
	 * @param amountUnitType the amountUnitType to set
	 */
	public void setAmountUnitType(String amountUnitType) {
		this.amountUnitType = amountUnitType;
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

}

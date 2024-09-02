package net.javaguides.usermanagement.model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
	protected int transactionId;
	protected String name;
	protected String email;
	protected String reason;
	
	public User() {
	}
	
	public User(String name, String email, String reason) {
		super();
		this.name = name;
		this.email = email;
		this.reason = reason;
	}

	public User(int transactionId, String name, String email, String reason) {
		super();
		this.transactionId = transactionId;
		this.name = name;
		this.email = email;
		this.reason = reason;
	}

	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
}
package com.soapdiy.po;

public class Address {
	private int add_id;
	private Customer customer;
	private int telephone;
	private String name;
	private String address;
	public int getAdd_id() {
		return add_id;
	}
	public void setAdd_id(int add_id) {
		this.add_id = add_id;
	}

	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Address [add_id=" + add_id + ", customer=" + customer + ", telephone=" + telephone + ", name=" + name
				+ ", address=" + address + "]";
	}

	
}

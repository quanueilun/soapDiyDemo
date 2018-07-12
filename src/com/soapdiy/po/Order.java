package com.soapdiy.po;

import java.util.Date;
import java.util.List;

public class Order {
	private int o_id;
	private Customer customer;
	private Address address;
	private double money;
	private String date;
	private int state;
	private int count;
	private List<OrderDetail> orderDetail;
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	@Override
	public String toString() {
		return "Order [o_id=" + o_id + ", customer=" + customer + ", address=" + address + ", money=" + money
				+ ", date=" + date + ", state=" + state + ", orderDetail=" + orderDetail + "]";
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	
}

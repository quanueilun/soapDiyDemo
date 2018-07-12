package com.soapdiy.po;

import java.util.List;

public class OrderCustom {
	private List<Order> order_all;
	private List<Order> order_unPay;
	private List<Order> order_unSend;
	private List<Order> order_unGet;
	public List<Order> getOrder_all() {
		return order_all;
	}
	public void setOrder_all(List<Order> order_all) {
		this.order_all = order_all;
	}
	public List<Order> getOrder_unPay() {
		return order_unPay;
	}
	public void setOrder_unPay(List<Order> order_unPay) {
		this.order_unPay = order_unPay;
	}
	public List<Order> getOrder_unSend() {
		return order_unSend;
	}
	public void setOrder_unSend(List<Order> order_unSend) {
		this.order_unSend = order_unSend;
	}
	public List<Order> getOrder_unGet() {
		return order_unGet;
	}
	public void setOrder_unGet(List<Order> order_unGet) {
		this.order_unGet = order_unGet;
	}
	
}

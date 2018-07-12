package com.soapdiy.po;

public class OrderDetail {
	private int od_id;
	private int o_id;
	private Good good;
	private int count;
	private int state;
	
	public int getOd_id() {
		return od_id;
	}
	public void setOd_id(int od_id) {
		this.od_id = od_id;
	}
	public int getOrder() {
		return o_id;
	}
	public void setOrder(int o_id) {
		this.o_id = o_id;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "OrderDetail [od_id=" + od_id + ", o_id=" + o_id + ", good=" + good + ", count=" + count + ", state="
				+ state + "]";
	}
}

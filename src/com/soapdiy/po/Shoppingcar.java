package com.soapdiy.po;

public class Shoppingcar {
	private int sh_id;
	private int c_id;
	private Good good;
	private int count;
	
	public int getSh_id() {
		return sh_id;
	}
	public void setSh_id(int sh_id) {
		this.sh_id = sh_id;
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
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return "Shoppingcar [sh_id=" + sh_id + ", c_id=" + c_id + ", good=" + good + ", count=" + count + "]";
	}

}

package com.soapdiy.mapper;

import java.util.List;

import com.soapdiy.po.Order;

public interface OrderMapper {
	public Order fineOrderById(int o_id);
	
	public int addOrder(Order order);
	
	public List<Order> fineOrdersByCustomer(int c_id);
	
	
}

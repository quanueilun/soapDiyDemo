package com.soapdiy.service;

import java.util.Date;
import java.util.List;

import com.soapdiy.po.Order;
import com.soapdiy.po.OrderCustom;

public interface OrderService {
	public int addOrder(Order order);
	
	public Order fineOrderById(int o_id);
	
	public OrderCustom fineOrdersByCustomer(int c_id);
}

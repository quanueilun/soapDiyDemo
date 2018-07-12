package com.soapdiy.service.imlp;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soapdiy.mapper.CustomerMapper;
import com.soapdiy.mapper.OrderMapper;
import com.soapdiy.po.Customer;
import com.soapdiy.po.Order;
import com.soapdiy.po.OrderCustom;
import com.soapdiy.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public int addOrder(Order order) {
		return orderMapper.addOrder(order);
	}
	@Override
	public Order fineOrderById(int o_id) {
		return orderMapper.fineOrderById(o_id);
	}
	@Override
	public OrderCustom fineOrdersByCustomer(int c_id) {
		List<Order> order_All = orderMapper.fineOrdersByCustomer(c_id);
		List<Order> order_unPay = new ArrayList<Order>();
		List<Order> order_unSend = new ArrayList<Order>();
		List<Order> order_unGet = new ArrayList<Order>();
		for (Iterator iterator = order_All.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			int state = order.getState();
			if(state == 1) {
				order_unPay.add(order);
			}
			if(state == 2) {
				order_unSend.add(order);
			}
			if(state == 3) {
				order_unGet.add(order);
			}
		}
		OrderCustom orderCustom = new OrderCustom();
		orderCustom.setOrder_all(order_All);
		orderCustom.setOrder_unPay(order_unPay);
		orderCustom.setOrder_unSend(order_unSend);
		orderCustom.setOrder_unGet(order_unGet);
		return orderCustom;
	}
	

}

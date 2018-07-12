package com.soapdiy.service;

import com.soapdiy.po.OrderDetail;

public interface OrderDetailService {
	public int addOrderDetail(OrderDetail orderDetail);
	
	public OrderDetail fineOrderDetailById(int od_id);
}

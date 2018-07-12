package com.soapdiy.mapper;

import java.util.List;

import com.soapdiy.po.OrderDetail;

public interface OrderDetailMapper {
	public int addOrderDetail(OrderDetail orderDetail);
	
	public OrderDetail fineOrderDetailById(int od_id);
	
	public List<OrderDetail> fineOrderDetailByOrderId(int o_id);
	
}

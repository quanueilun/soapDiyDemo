package com.soapdiy.service.imlp;

import org.springframework.beans.factory.annotation.Autowired;

import com.soapdiy.mapper.OrderDetailMapper;
import com.soapdiy.po.OrderDetail;
import com.soapdiy.service.OrderDetailService;

public class OrderDetailServiceImpl implements OrderDetailService {


	@Autowired
	private OrderDetailMapper orderDetailMapper;
	@Override
	public OrderDetail fineOrderDetailById(int od_id) {
		// TODO Auto-generated method stub
		return orderDetailMapper.fineOrderDetailById(od_id);
	}

	@Override
	public int addOrderDetail(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		return orderDetailMapper.addOrderDetail(orderDetail);
	}

}

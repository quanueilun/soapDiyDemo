package com.soapdiy.service.imlp;

import org.springframework.beans.factory.annotation.Autowired;

import com.soapdiy.mapper.GoodMapper;
import com.soapdiy.po.Good;
import com.soapdiy.service.GoodService;

public class GoodServiceImpl implements GoodService {
	@Autowired
	private GoodMapper goodMapper;
	@Override
	public int addGood(Good good) {
		// TODO Auto-generated method stub
		return goodMapper.addGood(good);
	}

	@Override
	public Good fineGoodById(int g_id) {
		// TODO Auto-generated method stub
		return goodMapper.fineGoodById(g_id);
	}

}

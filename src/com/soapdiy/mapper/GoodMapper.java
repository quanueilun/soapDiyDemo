package com.soapdiy.mapper;

import com.soapdiy.po.Good;

public interface GoodMapper {
	public int addGood(Good good);
	
	public Good fineGoodById(int g_id);
}

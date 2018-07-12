package com.soapdiy.service;

import com.soapdiy.po.Good;

public interface GoodService {
	public int addGood(Good good);
	
	public Good fineGoodById(int g_id);
}

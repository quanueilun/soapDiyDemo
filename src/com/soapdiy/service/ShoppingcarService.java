package com.soapdiy.service;

import java.util.List;

import com.soapdiy.po.Shoppingcar;

public interface ShoppingcarService {
	public Shoppingcar fineShoppingcarById(int sh_id);
	
	public List<Shoppingcar> fineShoppingcarByCustomer(int c_id);
	
	public int addShoppingcar(Shoppingcar shoppingcar);
	
	public int changeCount(Shoppingcar shoppingcar, int count);
	
	public int deleteShoppingcar(int sh_id);
}

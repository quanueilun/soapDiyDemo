package com.soapdiy.mapper;

import java.util.List;

import com.soapdiy.po.Shoppingcar;

public interface ShoppingcarMapper {
	public Shoppingcar fineShoppingcarById(int sh_id);
	
	public List<Shoppingcar> fineShoppingcarByCustomer(int c_id);
	
	public int addShoppingcar(Shoppingcar shoppingcar);
	
	public int updateShoppingcar(Shoppingcar shoppingcar);
	
	public int deleteShoppingcar(int sh_id);
}

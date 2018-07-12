package com.soapdiy.service.imlp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soapdiy.mapper.ShoppingcarMapper;
import com.soapdiy.po.Shoppingcar;
import com.soapdiy.service.ShoppingcarService;

@Service("shoppingcarService")
public class ShoppingServiceImpl implements ShoppingcarService {
	@Autowired
	private ShoppingcarMapper shoppingcarMapper;
	@Override
	public Shoppingcar fineShoppingcarById(int sh_id) {
		// TODO Auto-generated method stub
		return shoppingcarMapper.fineShoppingcarById(sh_id);
	}

	@Override
	public int addShoppingcar(Shoppingcar shoppingcar) {
		return shoppingcarMapper.addShoppingcar(shoppingcar);
	}

	@Override
	public List<Shoppingcar> fineShoppingcarByCustomer(int c_id) {
		return shoppingcarMapper.fineShoppingcarByCustomer(c_id);
	}

	@Override
	public int changeCount(Shoppingcar shoppingcar, int count) {
		shoppingcar.setCount(count);
		return shoppingcarMapper.updateShoppingcar(shoppingcar);
	}

	@Override
	public int deleteShoppingcar(int sh_id) {
		return shoppingcarMapper.deleteShoppingcar(sh_id);
	}

}

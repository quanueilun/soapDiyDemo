package com.soapdiy.service.imlp;

import org.springframework.beans.factory.annotation.Autowired;

import com.soapdiy.mapper.AddressMapper;
import com.soapdiy.po.Address;
import com.soapdiy.service.AddressService;

public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressMapper addressMapper;
	@Override
	public Address fineAddressById(int add_id) {
		// TODO Auto-generated method stub
		return addressMapper.fineAddressById(add_id);
	}

	@Override
	public int addAddress(Address address) {
		// TODO Auto-generated method stub
		return addressMapper.addAddress(address);
	}

}

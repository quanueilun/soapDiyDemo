package com.soapdiy.service;

import com.soapdiy.po.Address;

public interface AddressService {
	public Address fineAddressById(int add_id);
	
	public int addAddress(Address address);
}

package com.soapdiy.mapper;

import com.soapdiy.po.Address;

public interface AddressMapper {
	public Address fineAddressById(int add_id);
	
	public int addAddress(Address address);
}

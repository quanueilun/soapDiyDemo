package com.soapdiy.mapper;

import com.soapdiy.po.Customer;

public interface CustomerMapper {
	public int addCustomer(Customer customer);
	
	public Customer fineCustomerById(int c_id);
	
	public Customer fineCustomerByName(String username);
	
	public Customer fineCustomerByNameAndPassword(Customer customer);
	
	public Customer fineCustomerByEmailAndPassword(Customer customer);
}

package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private EmployeeRepository employeerepository;
	@Autowired
	private AdminRepository adminrepository;
	@Autowired
	private CustomerRepository customerrepository;

	@Override
	public List<Employee> viewallemployees() 
	{
		return employeerepository.findAll();
	}

	@Override
	public Admin checkadminlogin(String username, String password) {
		return adminrepository.checkadminlogin(username, password);
	}

	@Override
	public String deleteemp(int eid) {
		employeerepository.deleteById(eid);
		return "employee deleted successfully";//redirection 
	}

	@Override
	public Employee dispalyempbyid(int eid) {
		// TODO Auto-generated method stub
		return employeerepository.findById(eid).get();
	}

	@Override
	public long empcount() {
		// TODO Auto-generated method stub
		return employeerepository.count();
	}

	@Override
	public String updateempstatus(String status, int eid) {
		// TODO Auto-generated method stub
		int n=employeerepository.updateempstatus(status, eid);
		if(n>0) {
			return "Updated Employee successfully";
		}
		else {
			return "ID not found";
		}
		
	}

	@Override
	public String addcustomer(Customer c) {
		// TODO Auto-generated method stub
		customerrepository.save(c);
		return "inserted successfully";
	}

	

}

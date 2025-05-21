package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService 
{
	@Autowired
	private EmployeeRepository employeerepository;

	@Override
	public String EmployeeRegistration(Employee e) 
	{
		employeerepository.save(e);
		return "Employee Registered Successfully";
	}

	@Override
	public Employee checkemployeelogin(String email, String password) {
		// TODO Auto-generated method stub
		return employeerepository.checkemployeelogin(email, password);
	}

	@Override
	public Employee displayEmployeeById(int eid) {
		// TODO Auto-generated method stub
		return employeerepository.findById(eid).get();
	}

	@Override
	public String UpdateEmployeeProfile(Employee emp) {
		Employee e = employeerepository.findById(emp.getId()).get();
	    
	    e.setContact(emp.getContact());
	    e.setDateofbirth(emp.getDateofbirth());
	    e.setDepartment(emp.getDepartment());
	    e.setGender(emp.getGender());
	    e.setLocation(emp.getLocation());
	    e.setName(emp.getName());
	    e.setPassword(emp.getPassword());
	    e.setSalary(emp.getSalary());
	    
	    employeerepository.save(e);
	    
	    return "Employee Updated Successfully";
	}

	@Override
	public List<Employee> dispalyemployeesbydepartment(String dept) {
		// TODO Auto-generated method stub
		return employeerepository.findByDepartment(dept);
	}
	

}

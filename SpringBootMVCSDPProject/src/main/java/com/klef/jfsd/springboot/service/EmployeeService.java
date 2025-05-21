package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService
{
	public String EmployeeRegistration(Employee e);
    public Employee checkemployeelogin(String email,String password);
    public Employee displayEmployeeById(int eid);
    public String UpdateEmployeeProfile(Employee emp);
    public List<Employee> dispalyemployeesbydepartment(String dept);
}

package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;

import java.util.List;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>{

	@Query("select a from Employee a where a.email=?1 and a.password=?2")
    public Employee checkemployeelogin(String email,String pwd);
	
	@Query("update Employee e set e.status=?1 where e.id=?2")
	@Modifying//dml operations
	@Transactional//to enable auto commit
	public int updateempstatus(String status,int eid);
	
	
	//we no need to write queries explicitly
	public List<Employee> findByDepartment(String department);
	public List<Employee> findByDepartmentAndGender(String department, String gender);
	public List<Employee> findByGender(String gender);
	
}

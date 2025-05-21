package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeservice;
	@Autowired
	private AdminService adminservice;
	
	
  @GetMapping("/")
  public ModelAndView home()
  {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("home");
     return mv; 
  }
  @GetMapping("emplogout")
  public ModelAndView emplogout(HttpServletRequest request)
  {
	  HttpSession session=request.getSession();
	  session.removeAttribute("emp");
	  //session.invalidate();
     ModelAndView mv = new ModelAndView();
     mv.setViewName("emplogin");
     return mv; 
  }
  
  @GetMapping("empreg")
  public ModelAndView empreg()
  {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("empreg");
     return mv; 
  }
  @PostMapping("insertemp")
  public ModelAndView insertemp(HttpServletRequest request)
  {
     String name = request.getParameter("ename");
   String gender = request.getParameter("egender");
   String dob = request.getParameter("edob");
   String dept = request.getParameter("edept");
   double salary = Double.parseDouble(request.getParameter("esalary"));
   String location = request.getParameter("elocation");
   String email = request.getParameter("eemail");
   String password = request.getParameter("epwd");
   String contact = request.getParameter("econtact");
   String status = "Registered";
   
     Employee emp = new Employee();
     emp.setName(name);
     emp.setGender(gender);
     emp.setDepartment(dept);
     emp.setDateofbirth(dob);
     emp.setSalary(salary);
     emp.setLocation(location);
     emp.setEmail(email);
     emp.setPassword(password);
     emp.setContact(contact);
     emp.setStatus(status);
     
     String msg = employeeservice.EmployeeRegistration(emp);
     
     ModelAndView mv = new ModelAndView("regsuccess");
     mv.addObject("message", msg);
   
     return mv;

  }
  @GetMapping("emplogin")
  public ModelAndView emplogin()
  {
	  
     ModelAndView mv = new ModelAndView();
     mv.setViewName("emplogin");
     return mv; 
  }
  @GetMapping("empprofile")
  public ModelAndView empprofile()
  {
     ModelAndView mv = new ModelAndView();
     
     mv.setViewName("empprofile");
     return mv; 
  }
  @GetMapping("empcontactus")
  public ModelAndView empcontactus()
  {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("empcontactus");
     return mv; 
  }
  @GetMapping("updateempprofile")
  public ModelAndView updateempprofile()
  {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("updateemp");
     return mv; 
  }
  @PostMapping("updateemployee")
  public ModelAndView updateempprofile(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
   try
   {
       int id = Integer.parseInt(request.getParameter("eid"));
       String name = request.getParameter("ename");
     String gender = request.getParameter("egender");
     String dob = request.getParameter("edob");
     String dept = request.getParameter("edept");
     double salary = Double.parseDouble(request.getParameter("esalary"));
     String password = request.getParameter("epwd");
     String location = request.getParameter("elocation");
     String contact = request.getParameter("econtact");
     
       Employee emp = new Employee();
       emp.setId(id);
       emp.setName(name);
       emp.setGender(gender);
       emp.setDepartment(dept);
       emp.setDateofbirth(dob);
       emp.setSalary(salary);
       emp.setPassword(password);
       emp.setLocation(location);
       emp.setContact(contact);
       
       String msg = employeeservice.UpdateEmployeeProfile(emp);
       
       Employee e = employeeservice.displayEmployeeById(id);
       
        HttpSession session = request.getSession();
        session.setAttribute("employee",e); //employee is session variable
      
      
       mv.setViewName("updatesuccess");
       mv.addObject("message", msg);
     
   }
   catch(Exception e)
   {
     mv.setViewName("updateerror");
     mv.addObject("message", e);
   }
     return mv;
  }
  @PostMapping("checkemployeelogin")
  public ModelAndView checkemployeelogin(HttpServletRequest request) {
	  String eemail= request.getParameter("eemail"); 
      String epwd = request.getParameter("epwd"); 
       
      Employee emp = employeeservice.checkemployeelogin(eemail, epwd); 
      ModelAndView mv=new ModelAndView();
      if(emp!=null)
      { 
    	  HttpSession session= request.getSession();
    	  session.setAttribute("emp", emp);//emp is session variable 

          mv.setViewName("employeehome");
          return mv; 
      } 
      else 
      { 
   	   mv.setViewName("emplogin");
   	   String msg="Login Failed";
   	   mv.addObject("msg",msg);
        return mv; 
      } 
  }
  @GetMapping("/viewempsbydept")
  public ModelAndView viewempsbydept(HttpServletRequest request) {
	  ModelAndView mv=new ModelAndView("viewempsbydept");
	  HttpSession session=request.getSession();
	  Employee employee=(Employee)session.getAttribute("emp");
	  List<Employee> empslist=employeeservice.dispalyemployeesbydepartment(employee.getDepartment());
	  mv.addObject("empslist",empslist);
	  return mv;
  }
  
}
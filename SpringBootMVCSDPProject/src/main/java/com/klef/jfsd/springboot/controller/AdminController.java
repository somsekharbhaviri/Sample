package com.klef.jfsd.springboot.controller; 
 
import java.util.List; 
 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody; 
import org.springframework.web.servlet.ModelAndView; 
 
import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee; 
import com.klef.jfsd.springboot.service.AdminService;


import jakarta.servlet.http.HttpServletRequest; 
 
@Controller 
public class AdminController  
{ 
  @Autowired 
  private AdminService adminService; 
   
  @GetMapping("adminlogin") 
     public ModelAndView adminlogin() 
     { 
       ModelAndView mv = new ModelAndView(); 
       mv.setViewName("adminlogin"); 
       return mv; 
     } 
  @GetMapping("adminlogout") 
  public ModelAndView adminlogout() 
  { 
    ModelAndView mv = new ModelAndView(); 
    mv.setViewName("adminlogin"); 
    return mv; 
  } 
  @GetMapping("adminhome") 
  public ModelAndView adminhome() 
  { 
    ModelAndView mv = new ModelAndView(); 
    mv.setViewName("adminhome"); 
    long count=adminService.empcount();
    mv.addObject("count",count);
    return mv; 
  } 
  
      
     @GetMapping("viewallemps")  
     public ModelAndView viewallemps() 
     { 
       ModelAndView mv = new ModelAndView(); 
       List<Employee> emplist = adminService.viewallemployees(); 
       mv.setViewName("viewallemps"); //(jsp file) 
       mv.addObject("emplist",emplist); 
       long count=adminService.empcount();
       mv.addObject("count",count);
       return mv; 
     } 
     @GetMapping("delete")  
     public String deleteemp(@RequestParam("id") int eid) 
     { 
        adminService.deleteemp(eid); 
      
       return "redirect:/deleteemp"; 
     } 
     @GetMapping("updateempstatus")
     public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
     {
      adminService.updateempstatus(status, eid);
      return "redirect:/updateemp";
       
     }
     @GetMapping("updateemp") 
     public ModelAndView updateemp() 
     { 
       ModelAndView mv = new ModelAndView(); 
       List<Employee> emplist = adminService.viewallemployees();
       mv.setViewName("updateempstatus"); 
       mv.addObject("emplist",emplist);
       return mv; 
     } 
     @GetMapping("addcustomer")
     public String addcustomer(Model m)
     {
       m.addAttribute("customer", new Customer());
       return "addcustomer"; //addcustomer.jsp
     }
     @GetMapping("deleteemp")
     public ModelAndView deleteemp()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.viewallemployees();
       mv.setViewName("deleteemp");
       mv.addObject("emplist",emplist);
       return mv;
     }
     @PostMapping("insertcustomer")
     public ModelAndView insertcustomer(@ModelAttribute("customer") Customer c)
     {
       ModelAndView mv = new ModelAndView();
       
       mv.setViewName("customersuccess");
       
       String msg = adminService.addcustomer(c);
       mv.addObject("message", msg);
       
       return mv;
     }
     @PostMapping("checkadminlogin") 
     @ResponseBody 
     public ModelAndView checkadminlogin(HttpServletRequest request) 
     { 
       String auname = request.getParameter("auname"); 
       String apwd = request.getParameter("apwd"); 
        
       Admin admin = adminService.checkadminlogin(auname, apwd); 
       ModelAndView mv=new ModelAndView();
       if(admin!=null) 
       { 
    	   mv.setViewName("adminhome");
    	   long count=adminService.empcount();
           mv.addObject("count",count);
    	   mv.addObject("admin",admin);
         return mv; 
       } 
       else 
       { 
    	   mv.setViewName("loginfail");
    	   
         return mv; 
       } 
     } 
 
}
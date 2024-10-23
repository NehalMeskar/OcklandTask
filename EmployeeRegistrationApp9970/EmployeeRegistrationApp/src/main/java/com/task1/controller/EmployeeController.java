package com.task1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.task1.model.Employee;
import com.task1.service.EmployeeService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/") // Grouping routes under a common prefix
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    // Display registration form
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "register"; // This should map to /WEB-INF/views/register.jsp
    }

    // Handle registration
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerEmployee(@ModelAttribute("employee") Employee employee, Model model) {
        employeeService.registerEmployee(employee);
        model.addAttribute("message", "Registration successful! Please login.");
        return "register"; // Redirect back to the registration page after success
    }

    // Display login form
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "login"; // This should map to /WEB-INF/views/login.jsp
    }

    // Handle login
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginEmployee(@ModelAttribute("employee") Employee employee, Model model, HttpSession session) {
        Employee loggedInEmployee = employeeService.loginEmployee(employee.getLoginId());
        if (loggedInEmployee != null && loggedInEmployee.getPassword().equals(employee.getPassword())) {
            // Store logged-in employee details in session
            session.setAttribute("loggedInEmployee", loggedInEmployee);
            model.addAttribute("name", loggedInEmployee.getName());
            return "welcome"; // This should map to /WEB-INF/views/welcome.jsp
        } else {
            model.addAttribute("error", "Invalid login credentials. Please try again.");
            return "login"; // Redirect back to the login page after failure
        }
    }

    // Handle logout
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout(HttpSession session) {
        session.invalidate(); // Invalidate the session to log out the user
        return "redirect:9/login"; // Redirect to the login page after logout
    }
}

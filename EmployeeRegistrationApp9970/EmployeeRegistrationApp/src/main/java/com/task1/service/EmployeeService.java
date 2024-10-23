package com.task1.service;


import com.task1.model.Employee;
import java.util.List;

public interface EmployeeService {
    void registerEmployee(Employee employee);
    Employee loginEmployee(String loginId);
    List<Employee> listAllEmployees();
}


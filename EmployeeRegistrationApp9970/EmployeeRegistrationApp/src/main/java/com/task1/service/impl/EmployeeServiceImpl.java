package com.task1.service.impl;

import com.task1.dao.EmployeeDAO;
import com.task1.model.Employee;
import com.task1.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    @Transactional
    public void registerEmployee(Employee employee) {
        if (employeeDAO.getEmployeeByLoginId(employee.getLoginId()) != null) {
            throw new RuntimeException("Login ID already exists");
        }
        employeeDAO.saveEmployee(employee);
    }

    @Override
    @Transactional
    public Employee loginEmployee(String loginId) {
        return employeeDAO.getEmployeeByLoginId(loginId);
    }

    @Override
    @Transactional
    public List<Employee> listAllEmployees() {
        return employeeDAO.getAllEmployees();
    }
}

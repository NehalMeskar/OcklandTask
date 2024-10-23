package com.task1.dao;

import com.task1.model.Employee;
import java.util.List;

public interface EmployeeDAO {
    void saveEmployee(Employee employee);
    Employee getEmployeeByLoginId(String loginId);
    List<Employee> getAllEmployees();
}

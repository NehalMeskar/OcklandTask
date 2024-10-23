package com.task1.dao.impl;


import com.task1.dao.EmployeeDAO;
import com.task1.model.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void saveEmployee(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    @Transactional
    public Employee getEmployeeByLoginId(String loginId) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("FROM Employee WHERE loginId = :loginId", Employee.class)
                .setParameter("loginId", loginId)
                .uniqueResult();
    }

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("FROM Employee", Employee.class).list();
    }
}


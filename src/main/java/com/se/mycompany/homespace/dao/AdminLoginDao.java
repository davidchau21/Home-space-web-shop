package com.se.mycompany.homespace.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.se.mycompany.homespace.model.Admin;

@Repository
public class AdminLoginDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public boolean checkAdminLogin(String username, String password) {
        boolean exist = false;
        System.err.println("enter");
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Admin> theQuery = null;
        theQuery = currentSession.createQuery("from Admin where username = :username and password = :pass", Admin.class);
        theQuery.setParameter("username", username);
        theQuery.setParameter("pass", password);
        List<Admin> ad = theQuery.getResultList();
        System.err.println("OK");
        if (ad != null) {
            Admin admin;
            admin = new Admin();
            admin.setName(username);
            exist = true;
        }
            return exist;
        }

    }

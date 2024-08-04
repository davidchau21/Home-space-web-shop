package com.se.mycompany.homespace.serviceImpl;

import com.se.mycompany.homespace.dao.OrderedDao;
import com.se.mycompany.homespace.daoImpl.OrderedDaoImpl;
import com.se.mycompany.homespace.model.Ordered;
import com.se.mycompany.homespace.service.OrderedService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderedServiceImpl implements OrderedService {

    @Autowired
    OrderedDao orderDao = new OrderedDaoImpl();

    @Override
    @Transactional
    public void insert(Ordered ordered) {
        orderDao.insert(ordered);
    }

    @Override
    public void edit(Ordered ordered) {
        // TODO Auto-generated method stub

    }

    @Override
    public void delete(String id) {
        // TODO Auto-generated method stub

    }

    @Override
    public Ordered get(int id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Ordered get(String name) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    @Transactional
    public List<Ordered> getAll() {
        return orderDao.getAll();
    }

}

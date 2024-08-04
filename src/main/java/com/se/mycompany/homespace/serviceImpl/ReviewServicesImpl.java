package com.se.mycompany.homespace.serviceImpl;

import com.se.mycompany.homespace.dao.ReviewDao;
import com.se.mycompany.homespace.daoImpl.ReviewDaoImpl;
import com.se.mycompany.homespace.model.Review;
import com.se.mycompany.homespace.service.ReviewService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReviewServicesImpl implements ReviewService {

    @Autowired
    ReviewDao reviewDao = new ReviewDaoImpl();

    @Override
    @Transactional
    public void insert(Review review) {
        reviewDao.insert(review);

    }

    @Override
    @Transactional
    public void edit(Review review) {
        // TODO Auto-generated method stub

    }

    @Override
    @Transactional
    public void delete(int id) {
        // TODO Auto-generated method stub
        reviewDao.delete(id);
    }

    @Override
    public Review get(int id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Review get(String name) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    @Transactional
    public List<Review> getAll() {
        return reviewDao.getAll();
    }

    @Override
    @Transactional
    public List<Review> getReviewById(int id) {
        return reviewDao.getReviewById(id);
    }

}

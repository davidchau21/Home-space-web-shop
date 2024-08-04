package com.se.mycompany.homespace.dao;

import java.util.List;

import com.se.mycompany.homespace.model.Ordered;

public interface OrderedDao {
	void insert(Ordered ordered); 
	 
	void edit(Ordered ordered); 
	
	void delete(String id); 
 
	Ordered get(int id); 
	 
	Ordered get(String name); 
 
	List<Ordered> getAll();
}

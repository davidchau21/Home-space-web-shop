package com.se.mycompany.homespace.service; 
 
import java.util.List;

import com.se.mycompany.homespace.model.Admin; 
public interface AdminService { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 

	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
 
} 

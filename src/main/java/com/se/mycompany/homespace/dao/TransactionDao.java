package com.se.mycompany.homespace.dao;
import java.util.List;

import com.se.mycompany.homespace.model.Transactions;

public interface TransactionDao {
 
    /**
     *
     * @param transaction
     */
        void insert(Transactions transaction); 
	 
	void edit(Transactions admin); 
	
	void delete(String id); 
        
	Transactions get(int id); 
	 
	Transactions get(String name); 
 
	List<Transactions> getAll(); 
        
	
	
}

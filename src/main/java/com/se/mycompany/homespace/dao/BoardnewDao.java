package com.se.mycompany.homespace.dao;

import java.util.List;

import com.se.mycompany.homespace.model.Boardnew;

public interface BoardnewDao {
	void insert(Boardnew boardnew);

	void edit(Boardnew boardnew);

	void delete(int id);

	Boardnew get(int id);
	
	Boardnew get(String name);

	List<Boardnew> getAll();
}

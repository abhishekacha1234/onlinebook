package com.company.dao;

import java.util.List;

import com.entity.Book_Order;

public interface BookOrderDAO {

	
	public int getOrderNo();
	

	boolean saveOrder(List<Book_Order> b);
}

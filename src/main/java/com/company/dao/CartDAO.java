package com.company.dao;

import java.util.List;


import com.entity.BookDtls;
import com.entity.Cart;

public interface CartDAO {
	
	public boolean addCart(Cart c);
	
	public List<Cart> getBoookByuser(int userId);
	
	public boolean deleteBook(int bid,int uid);

}

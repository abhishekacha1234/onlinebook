package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.entity.BookDtls;
import com.entity.Cart;

public class CartDAOImpl implements CartDAO {

    private Connection conn;
     
    public CartDAOImpl(Connection conn) {
        this.conn = conn;
    }

    // Method to add a book to the cart
    public boolean addCart(Cart c) {
        boolean f = false;
        try {
            String sql = "insert into cart(bid, uid, book_name, author, price, total_price) values(?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getBid());
            ps.setInt(2, c.getUid());
            ps.setString(3, c.getBook_name());
            ps.setString(4, c.getAuthor());
            ps.setDouble(5, c.getPrice());
            ps.setDouble(6, c.getTotalprice());
            
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    // Method to retrieve books in the cart by user ID
    @Override
    public List<Cart> getBoookByuser(int userId) {
        List<Cart> list = new ArrayList<>();
        
        try {
            String sql = "select * from cart where uid = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Cart c = new Cart();
                c.setCid(rs.getInt("cid"));            // Cart ID
                c.setBid(rs.getInt("bid"));            // Book ID
                c.setUid(rs.getInt("uid"));            // User ID
                c.setBook_name(rs.getString("book_name"));  // Book Name
                c.setAuthor(rs.getString("author"));       // Author
                c.setPrice(rs.getDouble("price"));         // Price per item
                c.setTotalprice(rs.getDouble("total_price")); // Total price for the item
                
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;  // Return the list of Cart objects
    }

    // Method to delete a book from the cart by book ID and user ID
    @Override
    public boolean deleteBook(int bid, int uid) {
        boolean f = false;
        
        try {
            String sql = "delete from cart where bid = ? and uid = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, bid);
            ps.setInt(2, uid);

            int i = ps.executeUpdate();
            
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return f;    
    }
}

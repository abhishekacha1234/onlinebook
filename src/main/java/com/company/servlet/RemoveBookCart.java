package com.company.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.dao.CartDAOImpl;
import com.company.util.DBUtil;


@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		
		CartDAOImpl dao = new CartDAOImpl(DBUtil.getConn());
		boolean f = dao.deleteBook(bid, uid);
		
		HttpSession session = req.getSession();
		
		
		if(f) {
		   session.setAttribute("succMsg","Book removed from cart");
		   resp.sendRedirect("cart.jsp");
		}else {
			session.setAttribute("failedMsg","something wrong on server");
			   resp.sendRedirect("cart.jsp");
		}
	}

	
}

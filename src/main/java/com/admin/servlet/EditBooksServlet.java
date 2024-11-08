package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.dao.BookDaoImpl;
import com.company.util.DBUtil;
import com.entity.BookDtls;

@WebServlet("/editbooks")
public class EditBooksServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        try {
            // Retrieve parameters and validate
            String idStr = req.getParameter("id");
            if (idStr == null || idStr.isEmpty()) {
                session.setAttribute("failedMsg", "Book ID is missing.");
                resp.sendRedirect("admin/all_books.jsp");
                return;
            }

            int id = Integer.parseInt(idStr); // Parse ID to integer
            String bookName = req.getParameter("bname");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String status = req.getParameter("status");

            // Validate input fields
            if (bookName == null || bookName.isEmpty() ||
                author == null || author.isEmpty() ||
                price == null || price.isEmpty() ||
                status == null || status.isEmpty()) {
                session.setAttribute("failedMsg", "All fields are required.");
                resp.sendRedirect("admin/all_books.jsp");
                return;
            }

            // Create BookDtls object and set values
            BookDtls book = new BookDtls();
            book.setBookId(id);
            book.setBookName(bookName);
            book.setAuthor(author);
            book.setPrice(price);
            book.setStatus(status);

            // Update book information in the database
            BookDaoImpl dao = new BookDaoImpl(DBUtil.getConn());
            boolean updateSuccess = dao.updateEditBooks(book);

            // Send success or failure message to the session
            if (updateSuccess) {
                session.setAttribute("succMsg", "Book updated successfully.");
            } else {
                session.setAttribute("failedMsg", "Something went wrong while updating the book.");
            }
            resp.sendRedirect("admin/all_books.jsp");

        } catch (NumberFormatException e) {
            session.setAttribute("failedMsg", "Invalid Book ID format.");
            resp.sendRedirect("admin/all_books.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("failedMsg", "An unexpected error occurred. Please try again later.");
            resp.sendRedirect("admin/all_books.jsp");
        }
    }
}

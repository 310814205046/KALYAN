package com.revature.Book_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.DAO.BookDAO;
import com.revature.model.Book;

/**
 * Servlet implementation class ChangePrice
 */
@WebServlet("/ChangePrice")
public class ChangePrice extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookname=request.getParameter("bookname");
		Integer price=Integer.parseInt(request.getParameter("price"));
		
		Book book=new Book();
		book.setBookname(bookname);
		book.setPrice(price);
		
		BookDAO bd=new BookDAO();
		try {
			bd.changePrice(book);
			
			response.sendRedirect("successful.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

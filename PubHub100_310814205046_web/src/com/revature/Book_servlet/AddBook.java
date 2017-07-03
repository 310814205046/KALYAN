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
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookname=request.getParameter("bookname");
		String author=request.getParameter("author");
		int price=Integer.parseInt(  request.getParameter("price"));
		//System.out.println(bookname + author+ price);
		Book book=new Book();
		
		book.setAuthor(author);
		book.setBookname(bookname);
		book.setPrice(price);
		
		BookDAO bd=new BookDAO();
		try {
			bd.addBook(book);
			response.sendRedirect("successful.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		}

}

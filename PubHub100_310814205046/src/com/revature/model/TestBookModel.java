package com.revature.model;

import com.revature.DAO.BookDAO;

public class TestBookModel {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Book book= new Book();
		BookDAO bd=new BookDAO();
		book.setBookname("java3");
		book.setAuthor("kkk");
		book.setId(1);
		book.setPrice(500);
		bd.addBook(book);
		System.out.println(book);

	}

}

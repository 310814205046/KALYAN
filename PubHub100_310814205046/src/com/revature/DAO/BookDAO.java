package com.revature.DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.revature.PubHub100.ConnectionUtil;
import com.revature.model.Book;

public class BookDAO {
	 public void addBook(Book book) throws Exception{
		 
		 String sql="insert into books(bookname,author,price) values (?,?,?);";
		 Connection connection=(Connection) ConnectionUtil.getconnection();
		 PreparedStatement pst= (PreparedStatement) connection.prepareStatement(sql);
		 pst.setString(1, book.getBookname());
		 pst.setString(2, book.getAuthor());
		 pst.setInt(3, book.getPrice());
		 System.out.println(book.getBookname());
		 pst.executeUpdate();
		 
		  }
	 
	 
	 public void changePrice(Book book) throws Exception
	 {
		 String sql="update books set price=? where bookname=?;";
		 Connection connection= (Connection) ConnectionUtil.getconnection();
		 PreparedStatement pst=(PreparedStatement) connection.prepareStatement(sql);
		 pst.setInt(1, book.getPrice());
		 pst.setString(2, book.getBookname());
		 pst.executeUpdate();
		 
	 }
	 
	 public List<Book> findAll() throws Exception
	 {
		 String sql="select id,bookname,author,price from books;";
		 Connection connection=(Connection) ConnectionUtil.getconnection();
		 PreparedStatement pst=(PreparedStatement) connection.prepareStatement(sql);
		 pst.executeQuery();
		 ResultSet rs= pst.executeQuery();
		 List<Book> books= new ArrayList<Book>();
		 while(rs.next())
		 {
			 Book bk=new Book();
			 bk.setAuthor(rs.getString(3));
			 bk.setId(rs.getInt(1));
			 bk.setBookname(rs.getString(2));
			 bk.setPrice(rs.getInt(4));
			 books.add(bk);
			 
		 }
		return books; 
	 }
	 
	 public List<Book> remove(Book book) throws Exception
	 {
		 
		 String sql="delete from books where bookname=?;";
		 Connection connection=(Connection) ConnectionUtil.getconnection();
		 PreparedStatement pst= (PreparedStatement) connection.prepareStatement(sql);
		 pst.setString(1,book.getBookname() );
		 pst.executeUpdate();
		 
		return null;
		 
	 
}
}

package com.revature.DAO;

import com.revature.model.Book;

public class TestDAO {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		UserDAO ud= new UserDAO();
		/*User user=new User();
		user.setEmail("aji@gmail.com");
		//user.setName("ajith");
		user.setPassword("password");
		ud.add(user);
		//ud.add(user);
		System.out.println(ud.login(user));*/
		
		
		Book bk=new Book();
		bk.setAuthor("chetan");
		bk.setBookname("One indian girl");
		bk.setPrice(200);
		BookDAO bd= new BookDAO();
		
		System.out.println(bd.findAll());
	}

}

package com.revature.DAO;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.revature.PubHub100.ConnectionUtil;
import com.revature.model.User;

public class UserDAO {
	public void add(User user) throws Exception{
		
		String sql="insert into register (name,email,password) values (?,?,?);";
		Connection connection= (Connection) ConnectionUtil.getconnection() ;
		PreparedStatement pst= (PreparedStatement) connection.prepareStatement(sql);
		pst.setString(1, user.getName());
		pst.setString(2, user.getEmail());
		pst.setString(3, user.getPassword());
		pst.executeUpdate();
		
	}
	
	public boolean login(User user) throws Exception{
		
		String sql="select name from register where email= ? and password =?;";
		Connection connection= (Connection) ConnectionUtil.getconnection();
		PreparedStatement pst= (PreparedStatement) connection.prepareStatement(sql);
		pst.setString(1, user.getEmail());
		pst.setString(2, user.getPassword());
		ResultSet rs= (ResultSet) pst.executeQuery();
		boolean flag=false;
		if(rs.next())
		{
			flag=true;
			//System.out.println("login Successful");
			
		}
		return flag;
	}
	
	
	

}

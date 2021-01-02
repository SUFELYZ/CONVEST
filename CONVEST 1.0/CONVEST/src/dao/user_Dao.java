package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import bean.user;

public class user_Dao {
	public static final String URL = "jdbc:mysql://localhost:3306/CONVEST?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	public static final String USER = "root";
	public static final String PASSWORD = "991117";
		
	private Connection conn;
	private Statement stmt;
		
		public user_Dao() {
			try {
		          //1.加载驱动程序
		    	  Class.forName("com.mysql.cj.jdbc.Driver");
			      //2. 获得数据库连接
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.操作数据库，实现增删改查
			      stmt = conn.createStatement();
			      if(!conn.isClosed())
			            System.out.println("数据库连接成功！");
			      
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		 public void updatePwd(int user_id, String password) throws SQLException {
			  String sql="update user set password= '" + password + "' where user_id = " + user_id;
			  stmt.execute(sql);
		}
		 public List<user> queryPwd(int user_id) throws SQLException {
			  String sql="select * from user where user_id = " + user_id;
			  ResultSet rs = stmt.executeQuery(sql);
			  List<user> user = new ArrayList<user>();
			  while(rs.next()) {
				  user i = new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				  user.add(i);
			  }
			  return user;
		}
		 public void updateInfo(int user_id, String username, String email, String company, String code,
					String phone, String address) throws SQLException {
			  String sql="update user set phone = \'"+phone+"\' , username = \'"+username+"\' , email=\'"+email+"\' ,  company=\'"+company+"\' , code =\'"+ code+"\' , address=\'"+address+"\' where user_id = "+ user_id; 
			  stmt.execute(sql);
		}

		  public user QuerybyName(String name) throws SQLException{
				String sql = "select * from user where username = '" + name+"'";
				System.out.println(sql);
				ResultSet rs = stmt.executeQuery(sql);
				user u = null;
				if(rs.next()) {
				u = new user();
				u.setUser_id(rs.getInt(1));
				u.setUsername(rs.getString(2));
				u.setPassword(rs.getString(3));
				}
				return u;
		  }
		  
		  public void add(String name, String password) throws SQLException{
				String sql = "insert into user(user_id, username, password) values( default ,'"+name+"','"+password+"')";
				System.out.println(sql);
				stmt.execute(sql);
			}
 
		 
		
}

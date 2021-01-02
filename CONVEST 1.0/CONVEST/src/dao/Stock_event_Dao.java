package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bean.Stock_info;

import bean.Stock_event;

public class Stock_event_Dao {
	public static final String URL = "jdbc:mysql://localhost:3306/CONVEST?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	public static final String USER = "root";
	public static final String PASSWORD = "991117";
		
	private Connection conn;
		private Statement stmt;
		
		public Stock_event_Dao() {
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
		
		public List<Stock_event> selectAll(String str1) throws SQLException
		{
			String sql = "select eventtime,eventtype,eventcontent from big_event join stock on big_event.StockId=stock.StockId where stockname like '%"+str1+"%'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<Stock_event> Note = new ArrayList<>();
			while(rs.next())
			{
				Stock_event n = new Stock_event(rs.getString(1),rs.getString(2),rs.getString(3));
				Note.add(n);		
			}
			return Note;
		}
}

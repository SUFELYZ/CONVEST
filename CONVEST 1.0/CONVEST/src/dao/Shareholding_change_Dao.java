package dao;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bean.Shareholding_change;

public class Shareholding_change_Dao {
	public static final String URL = "jdbc:mysql://localhost:3306/CONVEST?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	public static final String USER = "root";
	public static final String PASSWORD = "991117";
		
	private Connection conn;
		private Statement stmt;
		
		public Shareholding_change_Dao() {
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
		
		public List<Shareholding_change> selectAll(String str1) throws SQLException
		{
			String sql = "select ChangeDate, ShareholderName, ChangeType, ChangedShareNum, Proportion from Shareholding_change join Stock on Shareholding_change.StockId = Stock.StockId  where stockname like " + "'%"+str1+"%'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<Shareholding_change> Note = new ArrayList<>();
			while(rs.next())
			{
				Shareholding_change n = new Shareholding_change(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				Note.add(n);		
			}
			return Note;
		}
}


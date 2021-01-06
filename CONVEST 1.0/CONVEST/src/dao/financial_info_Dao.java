package dao;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bean.financial_info;

public class financial_info_Dao {
	public static final String URL = "jdbc:mysql://localhost:3306/CONVEST?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	public static final String USER = "root";
	public static final String PASSWORD = "991117";
		
	private Connection conn;
		private Statement stmt;
		
		public financial_info_Dao() {
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
		
		public List<financial_info> selectAll(String str1) throws SQLException
		{
			String sql = "select jinkai, zuoshou, zhangting, dieting, huanshou, zhenfu, chengjiaoliang, chengjiaoe, neipan, waipan, liangbi, zhangdiefu, shiyinglv, shijinglv, liutong, zongshizhi from financial_info join Stock on financial_info.StockId = Stock.StockId  where stockname like " + "'%"+str1+"%'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			List<financial_info> Note = new ArrayList<>();
			while(rs.next())
			{
				financial_info n = new financial_info(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getInt(13),rs.getInt(14),rs.getString(15),rs.getString(16));
				Note.add(n);		
			}
			return Note;
		}
}


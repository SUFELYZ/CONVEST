package servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;

import dao.Stock_info_Dao;


//扩展 HttpServlet 类
@WebServlet (name = "Querystock_info", urlPatterns = {"/Querystock_info"})
public class Stock_info_Servlet extends HttpServlet {

private Stock_info_Dao dao = new Stock_info_Dao();


public void doGet(HttpServletRequest request,
                 HttpServletResponse response)
         throws ServletException, IOException
{
   // 设置响应内容类型
   response.setContentType("text/html");

   // 实际的逻辑是在这里
   PrintWriter out = response.getWriter();
   out.println("<h1>get method invalid！</h1>");
}

public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
   	try {
   		//HttpSession session = request.getSession();
   		//Integer id = (Integer) session.getAttribute("id");
   		
   		String BasicInfoId = request.getParameter("stock_id");
   		
   		Cookie cookie = new Cookie("key","stock_id");
   		response.addCookie(cookie); 
   		
   		System.out.println("print:"+BasicInfoId);
			List list = dao.selectAll(BasicInfoId);
			System.out.println(list);
			
			
		    String CONTENT_TYPE = "application/json; charset=GBK";
		    response.setContentType(CONTENT_TYPE);
		    PrintWriter out = response.getWriter();
		    out.println(JSONArray.toJSONString(list));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
public void destroy()
{
   // 什么也不做
}
}

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
import javax.servlet.http.*;

import bean.user;
import dao.user_Dao;
import com.alibaba.fastjson.JSONArray;

// ��չ HttpServlet ��
public class updatePwd extends HttpServlet {
 
  private user_Dao dao = new user_Dao();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // ������Ӧ��������
      response.setContentType("text/html");

      // ʵ�ʵ��߼���������
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid��</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	  HttpSession session = request.getSession();
	  Integer user_id = (Integer) session.getAttribute("id");

	  String password = request.getParameter("password");

      	try {
      		dao.updatePwd(user_id,password);			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  }
  public void destroy()
  {
      // ʲôҲ����
  }
}
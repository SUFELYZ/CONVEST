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

import dao.financial_info_Dao;


//��չ HttpServlet ��
@WebServlet (name = "Queryfinancial_info", urlPatterns = {"/Queryfinancial_info"})
public class financial_info_Servlet extends HttpServlet {

private financial_info_Dao dao = new financial_info_Dao();


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
   	try {
   		//HttpSession session = request.getSession();
   		//Integer id = (Integer) session.getAttribute("id");
   		String financialinfoId = request.getParameter("stock_id"); //ֻҪ��֤�˴�����ʱ��������һ�¼��ɣ�ֻ��Ϊ�˴��ζ�������
   		
   		System.out.println("print:"+financialinfoId);
			List list = dao.selectAll(financialinfoId);
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
   // ʲôҲ����
}
}


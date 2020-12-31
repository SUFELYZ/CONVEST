<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <%
        //加载驱动
       String driver = "com.mysql.cj.jdbc.Driver";
// 获取mysql连接地址
String url = "jdbc:mysql://localhost:3306/CONVEST?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true";
// 数据名称
String username = "root";
// 数据库密码
String password = "991117";
// 获取一个数据的连接
Connection conn = null;
Class.forName(driver);
//getConnection()方法，连接MySQL数据库！
conn=DriverManager.getConnection(url,username,password);
        //创建Statement
        Statement stm = (Statement) conn.createStatement();
        //执行查询
        ResultSet rs = stm.executeQuery("select location,Industry from basic_info");
    %>
    <table border="1" width="300">
        <%
            //遍历结果
            while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 11/1/21
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String useremail=request.getParameter("useremail");
    String username=request.getParameter("username");
    String userpassword=request.getParameter("userpassword");

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
        String usernames = "root";
        String password = "root";
        Connection conn = DriverManager.getConnection(url,usernames, password);
        Statement st=conn.createStatement();
        int i=st.executeUpdate("insert into userinfo(user_email,user_name,user_password)values('"+useremail+"','"+username+"','"+userpassword+"')");
        out.println("Thank you for register ! Please <a href='index.jsp'>Login</a> to continue.");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>

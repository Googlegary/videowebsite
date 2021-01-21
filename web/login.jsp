<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 11/1/21
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String username=request.getParameter("username");
    session.putValue("username",username);
    String userpassword=request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    String usernames = "root";
    String password = "root";
    Connection conn = DriverManager.getConnection(url,usernames, password);
    Statement st= conn.createStatement();
    ResultSet rs=st.executeQuery("select * from userinfo where user_name='"+username+"' and user_password='"+userpassword+"'");
    try{
        rs.next();
        if(rs.getString("user_password").equals(userpassword)&&rs.getString("user_name").equals(username))
        {
            out.println("Welcome " +username);
            pageContext.forward("home.html");
        }
        else{
            out.println("Invalid password or username.");
        }
    }
    catch (Exception e) {
        e.printStackTrace();
    }
%>
<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 21/1/21
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>deletevideo</title>
</head>
<body>
<%

    String video_id = request.getParameter("video_id");


    Class.forName("com.mysql.cj.jdbc.Driver");
    String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    String usernames = "root";
    String password = "root";
    Connection con = DriverManager.getConnection(url,usernames, password);
    String sql = "delete from video where video_id = ?";
    PreparedStatement ps = con.prepareStatement(sql);


    ps.setObject(1,video_id);

    ps.executeUpdate();
    
    ps.close();
    con.close();

    //完成删除后跳转回index页面
    response.sendRedirect("videomanage.jsp");
%>
</body>
</html>

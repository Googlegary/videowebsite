<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 21/1/21
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>insert</title>
</head>
<body>
<%

    String name = request.getParameter("txtName");
    String type = request.getParameter("txtType");
    String time = request.getParameter("txtTime");
    String actor = request.getParameter("txtActor");


    Class.forName("com.mysql.cj.jdbc.Driver");
    String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    String usernames = "root";
    String password = "root";
    Connection con = DriverManager.getConnection(url,usernames, password);



    String sql ="insert into video(video_name,video_type,video_time,video_actor) values(?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1,name);
    ps.setString(2,type);
    ps.setString(3,time);
    ps.setString(4,actor);
    ps.executeUpdate();
    con.close();
    response.sendRedirect("videomanage.jsp");
%>
</body>
</html>
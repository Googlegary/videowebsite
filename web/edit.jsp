<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 21/1/21
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>edit</title>
</head>
<body>
<%
    //获取参数
    String id = request.getParameter("txtId");
    String name = request.getParameter("txtVideoName");
    String type = request.getParameter("selType");
    String time = request.getParameter("txtVideotime");
    String actor = request.getParameter("txtVideoactor");

    Class.forName("com.mysql.cj.jdbc.Driver");
    String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    String usernames = "root";
    String password = "root";
    Connection con = DriverManager.getConnection(url,usernames, password);

    String sql ="update video set video_name=?,video_type=?,video_time=?,videoactor=? where video_id=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1,name);
    ps.setString(2,type);
    ps.setString(3,time);
    ps.setString(4,actor);
    ps.setObject(4,id);

    ps.execute();

    ps.close();
    con.close();
    response.sendRedirect("videomanage.jsp");
%>
</body>
</html>

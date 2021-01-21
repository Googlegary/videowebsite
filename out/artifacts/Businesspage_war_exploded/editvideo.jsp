<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>editvideo</title>

</head>
<body>
<%

    String id = request.getParameter("video_id");

    Class.forName("com.mysql.cj.jdbc.Driver");
    String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    String usernames = "root";
    String password = "root";
    Connection con = DriverManager.getConnection(url,usernames, password);
    String sql = "select * from video where id = ?";

    PreparedStatement ps = con.prepareStatement(sql);

    ps.setObject(1, id);
    ResultSet rs= ps.executeQuery();
    if(rs.next()){
%>

<form action="update_action.jsp" >
    <input type="hidden" name="txtId" value="<%=rs.getString("video_id") %>">
    video_name：<input type ="text" name="txtVideoName" value="<%=rs.getString("video_name")%>"><br>
    video_type
    <select name="selType">
        <option value="Education" <%if(rs.getString("video_type").equals("Education")){out.print("selected");} %> >education</option>
        <option value="Comedy" <%if(rs.getString("video_type").equals("Comedy")){out.print("selected");} %>>comedy </option>
        <option value="Documentary" <%if(rs.getString("video_type").equals("Documentary")){out.print("selected");} %>>documentary</option>
        <option value="Fantasy" <%if(rs.getString("video_type").equals("Fantasy")){out.print("selected");} %>>Fantasy </option>
        <option value="Science fiction" <%if(rs.getString("video_type").equals("Science fiction")){out.print("selected");} %>>Science fiction</option>
        <option value="Animation" <%if(rs.getString("video_type").equals("Animation")){out.print("selected");} %>>Animation</option>
    </select><br>
    video time：<input type ="text" name="txtVideotime" value="<%=rs.getString("video_time") %>"><br>
    video actor：<input type ="text" name="txtVideoactor" value="<%=rs.getString("video_actor") %>"><br>
    <input type="submit" value="confirm edit" name="btnsub">
</form>

<%
    }else{
        response.sendRedirect("error.jsp");
    }
    rs.close();
    ps.close();
    con.close();
%>
</body>
</html>
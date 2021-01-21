<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 21/1/21
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>insertvideo</title>
</head>
<body>
<form action="insert.jsp">
    videoID：<input type="text" name="txtId" ><br>
    video name：<input type="text" name="txtName"><br>
    video type：<input type="text" name="txtType"><br>
    video time：<input type="text" name="txtTime"><br>
    video actor: <input type="text" name="txtActor"><br>
    <input type="submit" value="insert">
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 11/1/21
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath(); %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <title>TubeLite Streaming Video HTML Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="TubeLite is - Professional A unique and beautiful collection of UI elements">
    <link rel="icon" href="images/favicon.png">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/night-mode.css">
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/uikit/3.2.1/css/uikit.min.css">

    <!-- icons
    ================================================== -->
    <link rel="stylesheet" href="css/icons.css">

    <!-- Google font
    ================================================== -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
</head>
<%
    String incode = (String)request.getParameter("code");
    String rightcode = (String)session.getAttribute("rCode");

    if(incode != null && rightcode != null){
        if(incode.equals(rightcode)){
            out.println("verfication code is correct");
        }else{
            out.println("verfication code is not correct, please re-submit！");
        }
    }
%>
<body>
<div uk-height-viewport="expand: true" class="uk-flex uk-flex-middle">
    <div class="uk-width-1-3@m uk-width-1-2@s m-auto">
        <div class="uk-card-default p-6 rounded">
            <div class="my-4 uk-text-center">
                <h2 class="mb-0"> Welcome back</h2>
                <p class="my-2">Login to manage your account.</p>
            </div>
            <form action="login.jsp" id="form" method="get">
                <div class="uk-form-group">
                    <label class="uk-form-label"> User name :</label>
                    <div class="uk-position-relative w-100">
                        <span class="uk-form-icon">
                            <i class="icon-feather-mail"></i>
                        </span>
                        <input class="uk-input" type="text" id="username" name="username" placeholder="please enter username"/><br>
                    </div>

                </div>
                <div class="uk-form-group">
                    <label class="uk-form-label"> password:</label>
                    <div class="uk-position-relative w-100">
                <span class="uk-form-icon">
                <i class="icon-feather-lock"></i>
                </span>
                        <input id="password" name="password" class="uk-input" type="password" placeholder="********">
                    </div>

                </div>

                <div class="uk-form-group">
                    <label class="uk-form-label"> Verification code</label>
                    <div class="uk-position-relative w-100">
                <span class="uk-form-icon">
                <i class="icon-feather-lock"></i>
                </span>
                        <img src="number.jsp"/>
                        <input type="text" name="code" placeholder="verification"/>
                    </div>

                </div>
                <div class="mt-4 uk-flex-middle uk-grid-small" uk-grid>
                    <div class="uk-width-expand@s">
                        <p> Dont have account <a href="register.html">Sign up</a></p>
                    </div>
                    <div class="uk-width-auto@s">
                        <button type="submit" class="button primary">Get Started</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>



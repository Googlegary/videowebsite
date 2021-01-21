<%--
  Created by IntelliJ IDEA.
  User: huangjiarui
  Date: 21/1/21
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" %>
<%@ page import=" java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>videomanage</title>
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
<body>
<div id="wrapper">

    <!-- sidebar -->
    <div class="main_sidebar">
        <div class="side-overlay" uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></div>

        <!-- sidebar header -->
        <div class="sidebar-header">
            <h4> Navigation</h4>
            <span class="btn-close" uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></span>
        </div>

        <!-- sidebar Menu -->
        <div class="sidebar">
            <div class="sidebar_innr" data-simplebar>

                <div class="sections">
                    <h3> Browse </h3>
                    <ul>
                        <li class="active"> <a href="home.html"> <i class="uil-home-alt"></i> <span> Home </span> </a></li>
                        <li class="uil-users-alt"> <a href="html/subscriptions.html"><span> Subscriptions </span> </a></li>
                        <li> <a href="html/watch-later.html"> <i class="uil-clock"></i> <span> Watch Later </span> </a></li>
                        <li> <a href="html/catagroies.html"> <i class="uil-layers"></i> <span> Categories</span> </a></li>
                        <li> <a href="html/your-history.html"> <i class="uil-history"></i> <span> History </span> </a></li>
                        <li> <a href="videomanage.jsp"> <i class="uil-history"></i> <span> Videomanage </span> </a></li>
                    </ul>
                </div>

            </div>


        </div>

    </div>
    <!-- header -->
    <div id="main_header">
        <header>

            <!-- Logo-->
            <i class="header-traiger uil-bars"
               uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></i>

            <!-- Logo-->
            <div id="logo">
                <a href="#"> <img src="images/logo.png" alt=""></a>
                <a href="#"> <img src="images/logo-light.png" class="logo-inverse" alt=""></a>
            </div>

            <!-- form search-->
            <div class="head_search">
                <form>
                    <div class="head_search_cont">
                        <label>
                            <input value="" type="text" class="form-control"
                                   placeholder="Search for Videos, Movies and more.." autocomplete="off">
                        </label>
                        <i class="s_icon uil-search-alt"></i>
                    </div>

                    <!-- Search box dropdown -->
                    <div uk-dropdown="pos: top;mode:click;animation: uk-animation-slide-bottom-small"
                         class="dropdown-search">
                        <!-- User menu -->

                        <ul class="dropdown-search-list">
                            <li class="list-title"> Recent Searches </li>
                            <li> <a href="html/single-video.html"> Adobe XD Design Free Tutorial .. </a> </li>
                            <li> <a href="html/single-video.html"> How to create a basic Sticky HTML element .. </a>
                            </li>
                            <li> <a href="html/single-video.html"> Learn How to Prototype Faster with Mockplus! in 2020
                            </a> </li>
                            <li> <a href="html/single-video.html"> Adobe XD Design Tutorial Company Website Landing Page
                                .. </a> </li>
                            <div class="menu-divider">
                                <li class="list-footer"> <a href="html/your-history.html"> Searches History </a></li>
                        </ul>

                    </div>


                </form>
            </div>

            <!-- user icons -->
            <div class="head_user">

                <a href="../page-pricing.html" class="btn-upgrade uk-visible@s"> <i class="uil-bolt-alt"></i> Pro</a>
                <a href="#" class="btn-upload uk-visible@s"> <i class="uil-cloud-upload"></i> Upload</a>

                <!-- upload dropdown box -->
                <!-- videos feed  -->
                <a href="#video" class="opts_icon" uk-toggle> <i class="uil-youtube-alt"></i>  </a>

                <!-- videos feed  offcanvas-->
                <div id="video" uk-offcanvas="overlay: true ;flip: true">
                    <div class="uk-offcanvas-bar uk-width-large">

                        <h3> Your Subscription </h3>
                        <hr class="mb-3" style="margin:0 -20px">
                        <button class="uk-offcanvas-close" type="button" uk-close></button>

                        <div class="video-list-small uk-child-width-1-1" uk-grid>

                            <div>
                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">1.4M</span>
                                        <span class="video-post-time">23:00</span>
                                        <span class="play-btn-trigger"></span>

                                        <img src="images/video-thumbal/2.png" alt="">

                                    </div>

                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> How to create a basic Sticky HTML element..</h3>
                                        <img src="images/avatars/avatar-3.jpg" alt="">
                                        <span class="video-post-user">Jonathan Madano</span>
                                        <span class="video-post-views">531k views</span>
                                        <span class="video-post-date"> 2 weeks ago </span>
                                    </div>
                                </a>
                            </div>

                            <div>
                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">2.7k</span>
                                        <span class="video-post-time">40:00</span>
                                        <span class="play-btn-trigger"></span>
                                        <img src="images/video-thumbal/1.png" alt="">
                                    </div>
                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> Learn how to create PHP singleton class </h3>
                                        <img src="images/avatars/avatar-2.jpg" alt="">
                                        <span class="video-post-user">Stella Johnson</span>
                                        <span class="video-post-views">938k views</span>
                                        <span class="video-post-date"> 3 weeks ago </span>
                                    </div>
                                </a>
                            </div>

                            <div>
                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">2.3M</span>
                                        <span class="video-post-time">14:00</span>
                                        <span class="play-btn-trigger"></span>
                                        <img src="images/video-thumbal/3.png" alt="">
                                    </div>
                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> Learn Creating Laravel Package Initializing ... </h3>
                                        <img src="images/avatars/avatar-5.jpg" alt="">
                                        <span class="video-post-user">Alex Dolgove</span>
                                        <span class="video-post-views">531k views</span>
                                        <span class="video-post-date"> 2 weeks ago </span>
                                    </div>
                                </a>
                            </div>

                            <div>
                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">1.4M</span>
                                        <span class="video-post-time">23:00</span>
                                        <span class="play-btn-trigger"></span>
                                        <img src="images/video-thumbal/4.png" alt="">
                                    </div>
                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> Learn how to upload files using Laravel .. </h3>
                                        <img src="images/avatars/avatar-4.jpg" alt="">
                                        <span class="video-post-user">Adrian Mohani</span>
                                        <span class="video-post-views">531k views</span>
                                        <span class="video-post-date"> 2 weeks ago </span>
                                    </div>
                                </a>

                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">1.4M</span>
                                        <span class="video-post-time">23:00</span>
                                        <span class="play-btn-trigger"></span>
                                        <img src="images/video-thumbal/2.png" alt="">
                                    </div>

                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> How to create a basic Sticky HTML element ..</h3>
                                        <img src="images/avatars/avatar-3.jpg" alt="">
                                        <span class="video-post-user">Jonathan Madano</span>
                                        <span class="video-post-views">531k views</span>
                                        <span class="video-post-date"> 2 weeks ago </span>
                                    </div>
                                </a>
                            </div>

                            <div>
                                <a href="html/single-video.html" class="video-post video-post-list">
                                    <!-- Blog Post Thumbnail -->
                                    <div class="video-post-thumbnail">
                                        <span class="video-post-count">2.7k</span>
                                        <span class="video-post-time">40:00</span>
                                        <span class="play-btn-trigger"></span>
                                        <img src="images/video-thumbal/1.png" alt="">
                                    </div>
                                    <!-- Blog Post Content -->
                                    <div class="video-post-content">
                                        <h3> Learn how to create PHP singleton class </h3>
                                        <img src="images/avatars/avatar-2.jpg" alt="">
                                        <span class="video-post-user">Stella Johnson</span>
                                        <span class="video-post-views">938k views</span>
                                        <span class="video-post-date"> 3 weeks ago </span>
                                    </div>
                                </a>
                            </div>

                        </div>

                    </div>
                </div>


                <!-- browse apps  -->
                <a href="#" class="opts_icon uk-visible@s"> <i class="uil-apps"></i> </a>

                <!-- browse apps dropdown -->
                <div uk-dropdown="pos: top;mode:click ; animation: uk-animation-scale-up" class="icon-browse">

                    <a href="#" class="icon-menu-item"> <i class="uil-shop"></i> Dashboard </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-envelope-alt"></i> Messages </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-bookmark"></i> Bookmark </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-shopping-basket"></i> Cart </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-shield-check"></i> Privacy </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-bolt-alt"></i> Upgrade </a>
                    <a href="#" class="more-app"> More Features</a>
                </div>


                <!-- Message  notificiation dropdown -->
                <a href="#" class="opts_icon"> <i class="uil-envelope-alt"></i>  </a>

                <!-- Message  notificiation dropdown -->
                <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"
                     class="dropdown-notifications">

                    <!-- notivication header -->
                    <div class="dropdown-notifications-headline">
                        <h4>Messages</h4>
                        <a href="#">
                            <i class="icon-feather-settings" uk-tooltip="title: Message settings ; pos: left"></i>
                        </a>
                    </div>

                    <!-- notification contents -->

                    <div class="dropdown-notifications-footer">
                        <a href="#"> sell all <i class="icon-line-awesome-long-arrow-right"></i> </a>
                    </div>


                </div>


                <!-- notificiation icon  -->
                <a href="#" class="opts_icon"> <i class="uil-bell"></i>  </a>

                <!-- notificiation dropdown -->
                <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"
                     class="dropdown-notifications">

                    <!-- notivication header -->
                    <div class="dropdown-notifications-headline">
                        <h4>Notifications </h4>
                        <a href="#">
                            <i class="icon-feather-settings"
                               uk-tooltip="title: Notifications settings ; pos: left"></i>
                        </a>
                    </div>

                    <!-- notification contents -->
                </div>


                <!-- profile -image -->
                <a class="opts_account"> <img src="images/avatars/avatar-1.jpg" alt=""></a>

                <!-- profile dropdown-->
                <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"
                     class="dropdown-notifications small">

                    <!-- User Name / Avatar -->
                    <a href="#">

                        <div class="dropdown-user-details">
                            <div class="dropdown-user-avatar">
                                <img src="images/avatars/avatar-1.jpg" alt="">
                            </div>
                            <div class="dropdown-user-name">
                                Richard Ali <span> verified <i class="uil-check"></i> </span>
                            </div>
                        </div>

                    </a>

                    <!-- User menu -->

                    <ul class="dropdown-user-menu">
                        <li><a href="#"> <i class="uil-bolt"></i> Go PRO</a> </li>
                        <li><a href="#"> <i class="uil-user"></i> My Channal </a> </li>
                        <li><a href="#"> <i class="uil-history"></i> Watch Later </a></li>
                        <li><a href="#"> <i class="uil-cog"></i> Account Settings</a></li>
                        <li><a href="#" style="color:#ff8400"> <i class="uil-bolt"></i> Upgrade To Premium</a> </li>
                        <li>
                            <a href="#" id="night-mode" class="btn-night-mode">
                                <i class="icon-feather-moon"></i> Night mode
                                <span class="btn-night-mode-switch">
                                        <span class="uk-switch-button"></span>
                                    </span>
                            </a>
                        </li>
                        <div class="menu-divider">
                            <li><a href="#"> <i class="icon-feather-help-circle"></i> Help</a>
                            </li>
                            <li><a href="#"> <i class="icon-feather-log-out"></i> Sing Out</a>
                            </li>
                    </ul>


                </div>

            </div>

        </header>

    </div>

    <div class="main_content">

        <div class="main_content_inner">
<%
    //get query name
    String selectName = request.getParameter("txtSelect");
%>


<form action="videomanage.jsp">
    <h3 align='center'>
        please enter video name：<input type="text" name="txtSelect" value="<%=selectName==null?"":selectName%>">
        <input type="submit" name="btnSelect" value="start query">
    </h3>
</form>

<table border="1" width="80%" align='center'>
    <tr>
        <td></td>
        <td>Video ID</td>
        <td>Video Name</td>
        <td>Video Type</td>
        <td>Video Time</td>
        <td>Video Actor</td>
    </tr>

    <%
        //connect to database
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url ="jdbc:mysql://localhost:3306/businesswebsite?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
        String usernames = "root";
        String password = "root";
        Connection con = DriverManager.getConnection(url,usernames, password);
        String sql = "select * from video";

        PreparedStatement ps ;
        if(selectName == null){

            ps = con.prepareStatement(sql);
        }else{

            ps = con.prepareStatement("select * from video where video_name like ?");
            ps.setString(1,'%'+selectName+'%');
        }


        ResultSet rs = ps.executeQuery();
        //boolean flag = rs.next();

        int i = 1;
        while( rs.next()){
    %>

    <tr>
        <td><%out.print(i++);%></td>
        <td><%=rs.getString("video_id") %></td>
        <td><%=rs.getString("video_name")%></td>
        <td><%=rs.getString("video_type")%></td>
        <td><%=rs.getString("video_time") %></td>
        <td><%=rs.getString("video_actor") %></td>
        <td>
            <a href="insertvideo.jsp">insert</a>
            <a href="editvideo.jsp?video_id=<%=rs.getString("video_id")%> ">change</a>
            <a href="deletevideo.jsp?video_id=<%=rs.getString("video_id")%>">delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>

<h1 align="center"> <%=i-1%>  records</h1>
<%
    ps.close();
    con.close();
%>


</div>
    </div>
    <div class="footer">
        <div class="uk-grid-collapse" uk-grid>
            <div class="uk-width-expand@s uk-first-column">
                <p>© 2020 <strong>TubeLite</strong>. All Rights Reserved. </p>
            </div>
            <div class="uk-width-auto@s">
                <nav class="footer-nav-icon">
                    <ul>
                        <li><a href="#"><i class="icon-brand-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-brand-dribbble"></i></a></li>
                        <li><a href="#"><i class="icon-brand-youtube"></i></a></li>
                        <li><a href="#"><i class="icon-brand-twitter"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- javaScripts
            ================================================== -->
<script src="https://cdn.bootcdn.net/ajax/libs/uikit/3.2.1/js/uikit.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/simplebar.js"></script>
<script src="js/main.js"></script>
</body>
</html>

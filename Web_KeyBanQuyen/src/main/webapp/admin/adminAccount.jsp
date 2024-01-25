<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.model.User" %>
<%@ page import="vn.edu.hcmuaf.dao.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Taif khoản quản trị</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- nalika Icon CSS
        ============================================ -->
    <link rel="stylesheet" href="css/nalika-icon.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<%
    List<User> userList = UserDao.getUserByLevelAdmin();
%>
<body>

<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header" style="height: 90px">
            <a href="index.jsp"><img class="main-logo" src="img/logo/logo.png" alt=""/></a>
            <strong><img src="img/logo/logo.png" alt=""/></strong>
        </div>
        <div class="nalika-profile">
            <div class="profile-dtl">
                <a href="#"><img src="img/notification/picture.png" alt=""/></a>
                <h2>Họ <span class="min-dtn">Tên</span></h2>
            </div>
            <div class="profile-social-dtl">
                <ul class="dtl-social">
                    <li><a href="#"><i class="icon nalika-facebook"></i></a></li>
                    <li><a href="#"><i class="icon nalika-twitter"></i></a></li>
                    <li><a href="#"><i class="icon nalika-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li class="active">
                        <a class="has-arrow" href="index.jsp">
                            <i class="icon nalika-home icon-wrap"></i>
                            <span class="mini-click-non">Tổng quan</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li><a href="index.jsp"><span class="mini-sub-pro">Bảng điều khiển</span></a></li>
                            <li><a href="product-list.html"><span class="mini-sub-pro">Danh sách sản phẩm</span></a>
                            </li>
                            <li><a href="cart.jsp"><span class="mini-sub-pro">Danh sách đơn hàng</span></a></li>
                            <li><a href="product-type.jsp"><span class="mini-sub-pro">Danh mục sản phẩm</span></a></li>
                            <li><a href="analytics.html"><span class="mini-sub-pro">Phân tích</span></a></li>
                            <li><a href="blog.html"><span class="mini-sub-pro">Tin tức</span></a></li>

                        </ul>
                    </li>

                    <li>
                        <a class="has-arrow" href="#" aria-expanded="false"><i
                                class="fa big-icon fa-users icon-wrap"></i> <span
                                class="mini-click-non">Tài Khoản</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a href="adminAccount.jsp"><span class="mini-sub-pro">Quản trị</span></a></li>
                            <li><a href="userAccount.jsp"><span class="mini-sub-pro">Người dùng</span></a></li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </nav>
</div>
<!-- Start Welcome area -->
<div class="all-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="logo-pro">

                </div>
            </div>
        </div>
    </div>
    <div class="header-advance-area">
        <div class="header-top-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="header-top-wraper">
                            <div class="row">
                                <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                    <div class="menu-switcher-pro">
                                        <button type="button" id="sidebarCollapse"
                                                class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                            <i class="icon nalika-menu-task"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                    <div class="header-top-menu tabl-d-n">
                                        <div class="breadcome-heading">
                                            <form role="search" class="">
                                                <input type="text" placeholder="Tìm kiếm..." class="form-control">
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                    <div class="header-right-info" style="margin-right: 50px">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item dropdown">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle"><i class="icon nalika-mail"
                                                                                       aria-hidden="true"></i><span
                                                        class="indicator-ms"></span></a>
                                                <div role="menu"
                                                     class="author-message-top dropdown-menu animated zoomIn">
                                                    <div class="message-single-top">
                                                        <h1>Tin Nhắn</h1>
                                                    </div>
                                                    <ul class="message-menu">
                                                        <li>
                                                            <a href="#">
                                                                <div class="message-img">
                                                                    <img src="img/contact/1.jpg" alt="">
                                                                </div>
                                                                <div class="message-content">
                                                                    <span class="message-date">16/10</span>
                                                                    <h2>Thịnh</h2>
                                                                    <p>Hãy thực hiện dự án này càng sớm càng tốt.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="message-view">
                                                        <a href="#">Hiển thị tất cả</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button"
                                                                    aria-expanded="false"
                                                                    class="nav-link dropdown-toggle"><i
                                                    class="icon nalika-alarm" aria-hidden="true"></i><span
                                                    class="indicator-nt"></span></a>
                                                <div role="menu"
                                                     class="notification-author dropdown-menu animated zoomIn">
                                                    <div class="notification-single-top">
                                                        <h1>Thông báo</h1>
                                                    </div>
                                                    <ul class="notification-menu">
                                                        <li>
                                                            <a href="#">
                                                                <div class="notification-icon">
                                                                    <i class="icon nalika-tick" aria-hidden="true"></i>
                                                                </div>
                                                                <div class="notification-content">
                                                                    <span class="notification-date">16/10</span>
                                                                    <h2>Thịnh</h2>
                                                                    <p>Hãy thực hiện dự án này càng sớm càng tốt.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="notification-view">
                                                        <a href="#">Hiển thị tất cả</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle">
                                                    <i class="icon nalika-user"></i>
                                                    <i class="icon nalika-down-arrow nalika-angle-dw"></i>
                                                </a>
                                                <ul role="menu"
                                                    class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                    <li><a href="register.html"><span
                                                            class="icon nalika-home author-log-ic"></span> Đăng ký</a>
                                                    </li>
                                                    <li><a href="#"><span class="icon nalika-user author-log-ic"></span>
                                                        Hồ sơ của tôi</a>
                                                    </li>
                                                    <li><a href="lock.html"><span
                                                            class="icon nalika-diamond author-log-ic"></span> Khóa</a>
                                                    </li>
                                                    <li><a href="#"><span
                                                            class="icon nalika-settings author-log-ic"></span> Cài
                                                        đặt</a>
                                                    </li>
                                                    <li><a href="login.jsp"><span
                                                            class="icon nalika-unlocked author-log-ic"></span> Đăng xuất</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item nav-setting-open"><a href="#" data-toggle="dropdown"
                                                                                     role="button" aria-expanded="false"
                                                                                     class="nav-link dropdown-toggle"><i
                                                    class="icon nalika-menu-task"></i></a>

                                                <div role="menu"
                                                     class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                    <ul class="nav nav-tabs custon-set-tab">
                                                        <li class="active"><a data-toggle="tab" href="#Notes">Mới</a>
                                                        </li>
                                                        <li><a data-toggle="tab" href="#Projects">Hoạt động</a>
                                                        </li>
                                                        <li><a data-toggle="tab" href="#Settings">Cài đặt</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content custom-bdr-nt">
                                                        <div id="Notes" class="tab-pane fade in active">
                                                            <div class="notes-area-wrap">
                                                                <div class="note-heading-indicate">
                                                                    <h2><i class="icon nalika-chat"></i> Tin mới nhất
                                                                    </h2>
                                                                </div>
                                                                <div class="notes-list-area notes-menu-scrollbar">
                                                                    <ul class="notes-menu-list">
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="img/contact/4.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> Thông báo mới</p>
                                                                                        <span>Hôm nay 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="Projects" class="tab-pane fade">
                                                            <div class="projects-settings-wrap">

                                                                <div class="project-st-list-area project-st-menu-scrollbar">
                                                                    <ul class="projects-st-menu-list">
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Người ăng ký mới</h2>
                                                                                        <p> Hãy thực hiện dự án này càng
                                                                                            sớm càng tốt.</p>
                                                                                        <span class="project-st-time">1 giờ trước</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="Settings" class="tab-pane fade">
                                                            <div class="setting-panel-area">
                                                                <div class="note-heading-indicate">
                                                                    <h2><i class="icon nalika-gear"></i> Cài đặt</h2>
                                                                </div>
                                                                <ul class="setting-panel-list">
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Hiển thị thông báo</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Tắt tính năng trò chuyện</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example3">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example3">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Bật lịch sử</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example4">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example4">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Hiển thị biểu đồ</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example7">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example7">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Cập nhật hàng ngày</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               checked=""
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example2">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example2">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>

                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Người dùng ngoại tuyến</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               checked=""
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example5">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example5">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->
        <div class="breadcome-area" style="margin-top: 50px">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcome-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="breadcomb-wp">
                                        <div class="breadcomb-icon">
                                            <i class="icon nalika-user"></i>
                                        </div>
                                        <div class="breadcomb-ctn" style="margin-top: 13px">
                                            <h2>Danh sách tài khoản</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="breadcomb-report">
                                        <button data-toggle="tooltip" data-placement="left" title="Tải xuống"
                                                class="btn"><i class="icon nalika-download"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product-status mg-b-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="product-status-wrap">
                        <h4>Tài khoản quản trị</h4>
                        <div class="add-product">
                            <a href="product-edit.jsp">Thêm Tài khoản</a>
                        </div>
                        <table>
                            <tr>
                                <th>Ảnh</th>
                                <th>ID</th>
                                <th>Tên đăng nhập</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Ngày tạo</th>
                                <th>Quyền</th>
                                <th>Cài đặt</th>
                            </tr>
                            <%
                                for (User user:userList) {

                            %>
                            <tr>
                                <td><img src="img/new-product/5-small.jpg" alt=""/></td>
                                <td><%=user.getMaNv()%></td>
                                <td><%=user.getUsername()%></td>
                                <td><%=user.getEmail()%></td>
                                <td><%=user.getPhone()%></td>
                                <th><%=user.getDate()%></th>
                                <td>Quản trị</td>
                                <td>
                                    <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a
                                            href="account-edit.html"><i class="fa fa-pencil-square-o"
                                                                        aria-hidden="true"></i></a></button>
                                    <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i
                                            class="fa fa-trash-o" aria-hidden="true"></i></button>
                                </td>
                            </tr>
                            <%}%>
<%--                            <tr>--%>
<%--                                <td><img src="img/new-product/6-small.jpg" alt=""/></td>--%>
<%--                                <td>AA002</td>--%>
<%--                                <td>Bien456</td>--%>
<%--                                <td>456789</td>--%>
<%--                                <td>bien@gmail.com</td>--%>
<%--                                <td>0926xxxx65</td>--%>
<%--                                <th>20/10/2023</th>--%>
<%--                                <td>Quản trị</td>--%>
<%--                                <td>--%>
<%--                                    <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a--%>
<%--                                            href="account-edit.html"><i class="fa fa-pencil-square-o"--%>
<%--                                                                        aria-hidden="true"></i></a></button>--%>
<%--                                    <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i--%>
<%--                                            class="fa fa-trash-o" aria-hidden="true"></i></button>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td><img src="img/new-product/7-small.jpg" alt=""/></td>--%>
<%--                                <td>AA003</td>--%>
<%--                                <td>tin789</td>--%>
<%--                                <td>789123</td>--%>
<%--                                <td>tin@gmail.com</td>--%>
<%--                                <td>0962xxxx36</td>--%>
<%--                                <th>20/10/2023</th>--%>
<%--                                <td>Quản trị</td>--%>
<%--                                <td>--%>
<%--                                    <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a--%>
<%--                                            href="account-edit.html"><i class="fa fa-pencil-square-o"--%>
<%--                                                                        aria-hidden="true"></i></a></button>--%>
<%--                                    <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i--%>
<%--                                            class="fa fa-trash-o" aria-hidden="true"></i></button>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
                        </table>
                        <!--                        <div class="custom-pagination">-->
                        <!--                            <ul class="pagination">-->
                        <!--                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>-->
                        <!--                                <li class="page-item"><a class="page-link" href="#">1</a></li>-->
                        <!--                                <li class="page-item"><a class="page-link" href="#">2</a></li>-->
                        <!--                                <li class="page-item"><a class="page-link" href="#">3</a></li>-->
                        <!--                                <li class="page-item"><a class="page-link" href="#">Next</a></li>-->
                        <!--                            </ul>-->
                        <!--                        </div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jquery
    ============================================ -->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="js/metisMenu/metisMenu.min.js"></script>
<script src="js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="js/sparkline/jquery.sparkline.min.js"></script>
<script src="js/sparkline/jquery.charts-sparkline.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="js/calendar/moment.min.js"></script>
<script src="js/calendar/fullcalendar.min.js"></script>
<script src="js/calendar/fullcalendar-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="js/main.js"></script>
</body>

</html>
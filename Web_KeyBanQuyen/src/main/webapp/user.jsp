<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="vn.edu.hcmuaf.model.*" %>
<%@ page import="vn.edu.hcmuaf.dao.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Chi tiết đơn hàng</title>
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
    <link rel="stylesheet" href="admin/css/owl.carousel.css">
    <link rel="stylesheet" href="admin/css/owl.theme.css">
    <link rel="stylesheet" href="admin/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
    <style>
        /* Thiết lập CSS để danh sách nằm ngang */
        ul.horizontal-list {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        ul.horizontal-list li {
            float: left;
            font-size: 24px;
            color: #0f0f0f;
            margin-right: 40px; /* Khoảng cách giữa các mục */
        }
    </style>
</head>

<body>
<%
    User user = (User) session.getAttribute("auth");
    if (user==null) user = new User();
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) cart = new Cart();
    TreeMap<String, Integer> list = cart.getList();
    long total=0;
    Set<String> setkey = list.keySet();
    for (String k:setkey){
        total += ProductsDao.getPriceProduct(k) * list.get(k);
    }

    List<Oders> oders = OdersDao.getOdersbyKH(user.getId());
%>
<form action="." method="post">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="user.jsp"><i class="fa fa-user"></i> Tài khoản của tôi</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> Danh sách mong muốn</a></li>
                            <li><a href="cart.jsp"><i class="fa fa-user"></i> Giỏ hàng </a></li>
                            <li><a href="checkout.jsp"><i class="fa fa-user"></i> Thanh toán</a></li>
                            <li><a href="Login.jsp"><i class="fa fa-user"></i> Đăng nhập</a></li>
                            <li><a href="Login.jsp"><i class="fa fa-user"></i> Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Tiền tệ :</span><span class="value">VNĐ </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">VNĐ</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Ngôn ngữ :</span><span class="value">Tiếng việt</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Tiếng Việt</a></li>
                                    <li><a href="#">Tiếng Anh</a></li>
                                    <li><a href="#">Tiếng Pháp</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->

    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="index.jsp"><img src="admin/img/logo/logo.png"></a></h1>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.jsp">Giỏ hàng - <span class="cart-amunt"><%=Products.priceFormat(total)%></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><%=list.size()%></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->


    <div>
        <img style="width: 100px; height: 100px; margin-top: 10px; margin-left: 900px" src="admin/img/contact/picture.png">
        <p style="color: #0f0f0f; margin-left: 900px; font-size: 18px; margin-top: 10px"><%=user.getName()%></p>
    </div>
    <!-- Start Welcome area -->

    <div class="single-product-tab-area mg-b-30">
        <!-- Single pro tab review Start-->
        <div class="single-pro-review-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="review-tab-pro-inner">
                            <ul id="myTab3" class="horizontal-list">
                                <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Thông tin</a></li>
                                <li><a href="#reviews"><i class="icon nalika-picture" aria-hidden="true"></i> Đơn hàng</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="review-content-section">
                                                <p>Tên đăng nhập: </p>
                                                <div class="input-group mg-b-pro-edt">

                                                    <span class="input-group-addon"><i class="fa fa-tags" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" name="ten" placeholder="email" value="<%=user.getUsername()%>">
                                                </div>
                                                <p>Email: </p>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="fa fa-tags" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" name="price" placeholder="Giá bán" value="<%=user.getEmail()%>">
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="review-content-section">
                                                <p>Số điện thoại: </p>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" name="type" placeholder="Loại sản phẩm" value="<%=user.getPhone()%>">
                                                </div>
                                                <p>Địa chỉ: </p>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="Ngày tạo" value="<%=user.getAddress()%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="product-tab-list tab-pane fade" id="reviews">
                                    <div class="row">
                                        <table cellspacing="0" id="table" class="shop_table cart" style="width: 70%; margin-left: 200px">
                                            <thead>
                                            <tr>

                                                <th class="product-name">Mã đơn hàng</th>
                                                <th class="product-price">Giá</th>
                                                <th class="product-quantity">Ngày đặt hàng</th>
                                                <th class="product-subtotal">Trạng thái</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <%
                                                for (Oders o: oders){
                                            %>
                                            <tr class="cart_item">

                                                <td class="product-thumbnail">
                                                    <p><%=o.getId()%></p>


                                                </td>

                                                <td class="product-name">
                                                    <p><%=Products.priceFormat(o.getTotal())%></p>
                                                    <a href=""></a>
                                                </td>

                                                <td class="product-price">
                                                    <span class="amount"><%=o.getDate()%></span>
                                                </td>

                                                <td class="product-subtotal">
                                                    <span class="amount"><%=StatusDao.getName(o.getStatus())%></span>
                                                </td>
                                            </tr>
                                            <%}%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>


<!-- jquery
    ============================================ -->
<script src="admin/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="admin/js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="admin/js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="admin/js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="admin/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="admin/js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="admin/js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="admin/js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="admin/js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="admin/js/metisMenu/metisMenu.min.js"></script>
<script src="admin/js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="admin/js/sparkline/jquery.sparkline.min.js"></script>
<script src="admin/js/sparkline/jquery.charts-sparkline.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="admin/js/calendar/moment.min.js"></script>
<script src="admin/js/calendar/fullcalendar.min.js"></script>
<script src="admin/js/calendar/fullcalendar-active.js"></script>
<!-- tab JS
    ============================================ -->
<script src="admin/js/tab.js"></script>
<!-- wizard JS
    ============================================ -->
<script src="admin/js/wizard/jquery.steps.js"></script>
<script src="admin/js/wizard/steps-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="admin/js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="admin/js/main.js"></script>
</body>

</html>
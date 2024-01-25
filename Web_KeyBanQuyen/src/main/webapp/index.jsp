<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.model.Products" %>
<%@ page import="vn.edu.hcmuaf.dao.ProductsDao" %>
<%@ page import="vn.edu.hcmuaf.model.Cart" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="vn.edu.hcmuaf.model.Directorys" %>
<%@ page import="vn.edu.hcmuaf.dao.DirectorysDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%
//    Cart cart = (Cart) session.getAttribute("cart");
////    TreeMap<String, Integer> list = cart.getList();
//    long total=0;
//    Set<String> setkey = cart.getList().keySet();
//    for (String k:setkey){
//        total += ProductsDao.getPriceProduct(k) * cart.getList().get(k);
//    }

    List<Directorys> directorys = DirectorysDao.getDirectorysAdmin();


%>
<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <li><a href="#"><i class="fa fa-user"></i> Tài khoản của tôi</a></li>
                        <li><a href="#"><i class="fa fa-heart"></i> Danh sách mong muốn</a></li>
                        <li><a href="cart.jsp"><i class="fa fa-user"></i> Giỏ hàng </a></li>
                        <li><a href="checkout.html"><i class="fa fa-user"></i> Thanh toán</a></li>
                        <li><a href="Login.html"><i class="fa fa-user"></i> Đăng nhập</a></li>
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
<%--                    <a href="cart.jsp">Giỏ hàng - <span class="cart-amunt"><%=Products.priceFormat(total)%></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><%=cart.getList().size()%></span></a>--%>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Trang chủ</a></li>
                    <li><a href="shop.jsp">Sản phẩm</a></li>
                    <li><a href="cart.jsp">Giỏ hàng</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Tìm kiếm...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </div>

        </div>
    </div>
</div> <!-- End mainmenu area -->

<div class="slider-area">
    <!-- Slider -->
    <div class="block-slider block-slider4">
        <ul class="" id="bxslider-home4">
            <li>
                <img src="img/google-one-100GB-400GB-1TB-2TB.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        <span class="primary"> <strong>Google Drive</strong></span>
                    </h2>
                    <h4 class="caption subtitle">2TB</h4>
                    <a class="caption button-radius" href="single-product.jsp"><span class="icon"></span>Mua ngay</a>
                </div>
            </li>
            <li><img src="img/office-2021-professional-plus-win.jpg" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Microsoft <span class="primary">30% <strong>Off</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Microsoft Office 2021 professional</h4>
                    <a class="caption button-radius" href="single-product.jsp"><span class="icon"></span>Mua ngay</a>
                </div>
            </li>
            <li><img src="img/windows-11-home.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        <span class="primary"><strong>Win 11 </strong></span>
                    </h2>
                    <h4 class="caption subtitle">Home</h4>
                    <a class="caption button-radius" href="single-product.jsp"><span class="icon"></span>Mua ngay</a>
                </div>
            </li>
            <li><img src="img/Netflix.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Netflix <span class="primary"> <strong>Movie</strong></span>
                    </h2>
                    <h4 class="caption subtitle"></h4>
                    <a class="caption button-radius" href="single-product.jsp"><span class="icon"></span>Mua ngay</a>
                </div>
            </li>
        </ul>
    </div>
    <!-- ./Slider -->
</div> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo1">
                    <i class="fa fa-refresh"></i>
                    <p>30 Ngày Đổi trả</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo2">
                    <i class="fa fa-truck"></i>
                    <p>Miễn phí ship</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo3">
                    <i class="fa fa-lock"></i>
                    <p>Thanh toán an toàn</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo4">
                    <i class="fa fa-gift"></i>
                    <p>Sản phẩm mới</p>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End promo area -->

<div class="maincontent-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="latest-product">
                    <h2 class="section-title">Sản phẩm mới nhất</h2>
                    <div class="product-carousel">
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Giải trí_3/youtube-premium-1-thang.jpg" alt="">
                                <div class="product-hover">
                                    <a href="#" class="add-to-cart-link" style="font-size: 11px" style="font-size: 11px"><i class="fa fa-shopping-cart" ></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2 ><a  href="single-product.jsp">Youtube premium</a></h2>

                            <div class="product-carousel-price">
                                <ins>700.000&#x20AB</ins> <del>799.000&#x20AB</del>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Thiết kế_2/figma.png" alt="">
                                <div class="product-hover">
                                    <a href="#" type="submit" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2>Figma</h2>
                            <div class="product-carousel-price">
                                <ins>899.000&#x20AB</ins> <del>999.000&#x20AB</del>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Visual Studio_1/visual-studio-2022-enterprise.png" class="home_new_product" alt="">
                                <div class="product-hover">
                                    <a href="#" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2>Visual studio</h2>

                            <div class="product-carousel-price">
                                <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Windows_1/win/windows-11-pro.jpg" alt="">
                                <div class="product-hover">
                                    <a href="#" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2><a href="single-product.jsp">Win 11 pro</a></h2>

                            <div class="product-carousel-price">
                                <ins>200.000&#x20AB</ins> <del>225.000&#x20AB</del>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Tiện Ích_2/navicat-premium.png" alt="">
                                <div class="product-hover">
                                    <a href="#" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2>Navicat</h2>

                            <div class="product-carousel-price">
                                <ins>1200.000&#x20AB</ins> <del>1355.000&#x20AB</del>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="img/Tiện Ích_2/nang-cap-linkedin-premium-business-6-thang-1-nam.png" alt="">
                                <div class="product-hover">
                                    <a href="#" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                    <a href="single-product.jsp" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                </div>
                            </div>

                            <h2><a href="single-product.jsp">Linkedin</a></h2>

                            <div class="product-carousel-price">
                                <ins>400.000&#x20AB</ins>
                            </div>
                        </div>
                    </div>
                </div></div>
            </div>
        <%
            for (Directorys d: directorys){
            List<Products> pro = ProductsDao.getProductByDiretoryTop(d.getId());
            if (pro != null || (pro.size()>0 && pro.size()==8) ){%>
        <h2 class="section-title" style="margin-top: 30px"><%=d.getName()%></h2>
        <%
            for (Products p : pro) {%>
        <div class="col-md-3 col-sm-6 ">
            <div class="single-shop-product">
                <div class="product-upper">
                    <img src="<%=p.getUrl()%>" alt="">
                </div>
                <input name="maview" value="<%=p.getMaSP()%>" style="display: none">
                <h2 class="h2-product"><a type="submit" ><%=p.getName()+" "+p.getVersion()%></a></h2>
                <div class="product-carousel-price">
                    <ins><%=Products.priceFormat(p.getPrice())%></ins> <del>999.000 &#x20AB</del>
                </div>

                <div class="product-option-shop">
                    <form action="./View" method="post">
                        <input name="maview" value="<%=p.getMaSP()%>" style="display: none">
                        <button type="submit"><a class="add_to_cart_button" type="submit" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="">Xem</a>
                        </button>

                    </form>

                </div>
            </div>
        </div>
            <%    }%>
        <%    }else {continue;}}%>






            </div>
        </div>
    </div>
</div> <!-- End main content area -->

<!--<div class="brands-area">-->
<!--    <div class="zigzag-bottom"></div>-->
<!--    <div class="container">-->
<!--        <div class="row">-->
<!--            <div class="col-md-12">-->
<!--                <div class="brand-wrapper">-->
<!--                    <div class="brand-list">-->
<!--                        <img src="img/microsoft_logo.png" alt="">-->
<!--                        <img src="img/Figma_logo.png" alt="">-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</div> &lt;!&ndash; End brands area &ndash;&gt;-->

<div class="product-widget-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Top bán chạy</h2>
                    <a href="" class="wid-view-more">xem tất cả</a>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Thiết kế_2/figma.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Figma</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Thiết kế_2/canva.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Canva</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Office_3/office-2021-professional-plus-win.jpg" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Office 2021 professional</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Xem gần &#x20ABây</h2>
                    <a href="#" class="wid-view-more">xem tất cả</a>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Office_3/outlook-2021.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Outlook 2021</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Windows_1/win/windows-11-home.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Win 11 home</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Tiện Ích_2/navicat-premium.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Navicat premium</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Sản phẩm mới</h2>
                    <a href="#" class="wid-view-more">xem tất cả</a>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/VPN_1/Hotspot-VPN-1nam.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Hotspot VPN</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Tiện Ích_2/PDF-Reader-Pro-for-Mac.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">PDF Reader Pro for Mac</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                    <div class="single-wid-product">
                        <a href="single-product.jsp"><img src="img/Tiện Ích_2/linkedin-Careers-premium-6 thang.png" alt="" class="product-thumb"></a>
                        <h2><a href="single-product.jsp">Linkedin Careers Premium</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-wid-price">
                            <ins>400.000&#x20AB</ins> <del>425.000&#x20AB</del>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End product widget area -->

<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2><span>TBT</span></h2>
                    <p>Cảm ơn đã tin tưởng và sử dụng sản phẩm của chúng tôi.</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Thông tin</h2>
                    <ul>
                        <li><a href="#">Chính sách giao hàng  </a></li>
                        <li><a href="#">Điều khoản và điêù kiện</a></li>
                        <li><a href="#">Chính sách bảo hành</a></li>
                        <li><a href="#">Liên hệ với chúng tôi</a></li>
                        <li><a href="#">Mua hàng và thanh toán online</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Danh mục sản phẩm</h2>
                    <ul>
                        <li><a href="#">Window</a></li>
                        <li><a href="#">Office</a></li>
                        <li><a href="#">Máy ảo</a></li>
                        <li><a href="#">Thiết kế</a></li>
                        <li><a href="#">Giải trí</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Tin tức</h2>
                    <p>Đăng ký nhận bản tin của chúng tôi và nhận các ưu đãi độc quyền mà bạn sẽ không tìm thấy ở bất kỳ nơi nào khác trực tiếp vào hộp thư đến của mình!</p>
                    <div class="newsletter-form">
                        <form action="#">
                            <input type="email" placeholder="Nhập email của bạn">
                            <input type="submit" value="Đăng ký">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End footer top area -->

<div class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="copyright">
                    <p> © Thương mại Điện tử 2023. Đã đăng ký Bản quyền. </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card-icon">
                    <i class="fa fa-cc-discover"></i>
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-paypal"></i>
                    <i class="fa fa-cc-visa"></i>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End footer bottom area -->

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js_home/owl.carousel.min.js"></script>
<script src="js_home/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js_home/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js_home/main_home.js"></script>

<!-- Slider -->
<script type="text/javascript" src="js_home/bxslider.min.js"></script>
<script type="text/javascript" src="js_home/script.slider.js"></script>
</body>
</html>

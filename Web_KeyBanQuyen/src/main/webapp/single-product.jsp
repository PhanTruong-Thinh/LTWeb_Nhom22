<%@ page import="vn.edu.hcmuaf.model.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.model.Image" %>
<%@ page import="vn.edu.hcmuaf.dao.ImageDao" %>
<%@ page import="vn.edu.hcmuaf.dao.StatusDao" %>
<%@ page import="vn.edu.hcmuaf.dao.KhoDao" %>
<%@ page import="vn.edu.hcmuaf.model.Cart" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.hcmuaf.dao.ProductsDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chi tiết sản phẩm</title>

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
    Products products = (Products) session.getAttribute("de");
    if (products == null) products = new Products();
    List<Image> images = ImageDao.getImageProductByID(products.getMaSP());
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) cart = new Cart();
    TreeMap<String, Integer> list = cart.getList();
    long total=0;
    Set<String> setkey = list.keySet();
    for (String k:setkey){
        total += ProductsDao.getPriceProduct(k) * list.get(k);
    }
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
                            <li><a href="checkout.jsp"><i class="fa fa-user"></i> Thanh toán</a></li>
                            <li><a href="#"><i class="fa fa-user"></i> Đăng nhập</a></li>
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
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><a href="shop.jsp">Sản phẩm</a></li>
                        <li><a href="cart.jsp">Giỏ hàng</a></li>
                        <li><a href="#">Liên Hệ</a></li>

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

    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Chi tiết sản phẩm</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">


                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Sản phẩm</h2>
                        <div class="thubmnail-recent">
                            <img src="img/Windows_1/win/windows-11-education.png" class="recent-thumb" alt="">
                            <h2><a href="">Window 11 Education</a></h2>
                            <div class="product-sidebar-price">
                                <ins>239.000đ</ins> <del> 2.790.000đ</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/may ao_3/VMware-Workstation-17-Pro.png" class="recent-thumb" alt="">
                            <h2><a href="">VMware Workstation 17 Pro</a></h2>
                            <div class="product-sidebar-price">
                                <ins>849.000₫</ins> <del>3.700.000₫</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/Tiện Ích_2/parallels-19-pro-1nam.png" class="recent-thumb" alt="">
                            <h2><a href="">Parallels Desktop for Mac</a></h2>
                            <div class="product-sidebar-price">
                                <ins>990.000₫</ins> <del> 3.490.000₫</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/Lưu Trữ_3/dropbox-plus-2tb.png" class="recent-thumb" alt="">
                            <h2><a href="">Dropbox Professional (3TB)</a></h2>
                            <div class="product-sidebar-price">
                                <ins>1.690.000₫</ins> <del>4.600.000₫</del>
                            </div>
                        </div>
                    </div>

                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Bài đăng gần đây</h2>
                        <ul>
                            <li><a href="">Hotspot Shield VPN 1 Năm</a></li>
                            <li><a href="">Nâng cấp Google One (Drive, Photos, Gmail…)</a></li>
                            <li><a href="">Tài khoản CyberGhost VPN 1 Năm</a></li>
                            <li><a href="">Betterzip 5 for Mac</a></li>
                            <li><a href="">Microsoft 365 (1 Năm) – 1TB</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="">Trang chủ</a>
                            <a href="">Tên sản phẩm</a>
                            <a href="">Discord Nitro 1 Năm</a>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="<%=products.getUrl()%>" alt="">
                                    </div>

                                    <div class="product-gallery">
                                        <%
                                            for (Image i:images) {%>
                                        <img src="<%=i.getUrl()%>" alt="">
                                        <%    }
                                        %>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name"><%=products.getName()+" "+products.getVersion()%></h2>
                                    <div class="product-inner-price">
                                        <ins><%=Products.priceFormat(products.getPrice())%></ins>
                                    </div>

                                    <form action="./CartServlet" class="cart" method="post">
                                        <input name="ma" value="<%=products.getMaSP()%>" style="display: none">
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quan" min="1" step="1">
                                        </div>
                                        <button name="command" value="insert"  class="add_to_cart_button" type="submit" >Thêm vào giỏ hàng</button>
                                    </form>

                                    <div class="product-inner-category">
                                        <p>Hãng: <a href=""><%=products.getHangSX()%></a></p>
                                        <p>Bảo hành: <a href=""><%=products.getBaoHanh()%></a> </p>
                                        <p>Hạng sử dụng: <a href=""><%=products.getBaoHanh()%></a> </p>
                                        <p>Thiết bị: <a href=""><%=products.getNumberUser()%></a> </p>

                                    </div>

                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Mô tả</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Đánh giá</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Mô tả sản phẩm</h2>
                                                <p><%=products.getMoTa()%></p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Đánh giá</h2>
                                                <div class="submit-review">
                                                    <p><%--@declare id="name"--%><label for="name">Tên</label> <input name="name" type="text"></p>
                                                    <p><%--@declare id="email"--%><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Bình chọn của bạn</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><%--@declare id="review"--%><label for="review">Đánh giá của bạn</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Gửi"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Các sản phẩm tương tự</h2>
                            <div class="related-products-carousel">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/Giải trí_3/spotify-4-thang.png" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>
                                    <h2><a href="">Spotify Premium</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>299.000₫</ins> <del>690.000₫</del>
                                    </div>
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/Giải trí_3/discord-nitro-code-1-thang.png" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Discord Nitro (code 1 tháng)</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>109.000 ₫</ins>
                                    </div>
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/Giải trí_3/discord-nitro-basic.png" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Discord Nitro Basic 1 tháng</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>90.000 ₫</ins>
                                    </div>
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-thumb-13.png" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony playstation microsoft</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$200.00</ins> <del>$225.00</del>
                                    </div>
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-thumb-13.png" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony Smart Air Condtion</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$1200.00</ins> <del>$1355.00</del>
                                    </div>
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-6.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link" style="font-size: 11px"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            <a href="" class="view-details-link" style="font-size: 11px"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Samsung gallaxy note 4</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2><span>TPT</span></h2>
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
                    <p> © Thương mại điện tử 2023. Đã đăng ký Bản quyền. <a href="http://www.freshdesignweb.com" target="_blank"></a></p>
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
</body>
</html>
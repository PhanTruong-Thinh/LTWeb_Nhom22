<%@ page import="vn.edu.hcmuaf.model.User" %>
<%@ page import="vn.edu.hcmuaf.model.Cart" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.hcmuaf.dao.ProductsDao" %>
<%@ page import="vn.edu.hcmuaf.model.Products" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Thanh Toán</title>

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
    User user = (User) session.getAttribute("auth");
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart==null) cart = new Cart();
    TreeMap<String, Integer> list = cart.getList();
    long total=0;
    Set<String> setkey = list.keySet();
    for (String k:setkey){
        total += ProductsDao.getPriceProduct(k) * list.get(k);
    }
%>
<form action="./Oder" method="post">
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
                            <li><a href="Login.jsp"><i class="fa fa-user"></i> Đăng nhập</a></li>
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
                        <a href="cart.jsp">Giỏ hàng - <span class="cart-amunt"><%=Products.priceFormat(total)%></span> <i class="fa fa-shopping-cart"></i></a>
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
                        <h2>Thanh Toán</h2>
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
                            <img src="img/VPN_1/nordvpn.png" class="recent-thumb" alt="">
                            <h2><a href="single-product.jsp">NordVPN</a></h2>
                            <div class="product-sidebar-price">
                                <ins>390.000đ</ins> <del>490.000đ</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/VPN_1/Hotspot-VPN-1nam.png" class="recent-thumb" alt="">
                            <h2><a href="single-product.jsp">Hotspot Shield VPN</a></h2>
                            <div class="product-sidebar-price">
                                <ins>349.000đ</ins> <del>2.240.000đ</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/VPN_1/expressvpn.png" class="recent-thumb" alt="">
                            <h2><a href="single-product.jsp">ExpressVPN</a></h2>
                            <div class="product-sidebar-price">
                                <ins>149.000đ</ins> <del>307.000đ</del>
                            </div>
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/VPN_1/avira-vpn-3-thang.png" class="recent-thumb" alt="">
                            <h2><a href="single-product.jsp">Avira Phantom VPN Pro</a></h2>
                            <div class="product-sidebar-price">
                                <ins>249.000đ</ins> <del>357.000đ</del>
                            </div>
                        </div>
                    </div>

                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Bài đăng gần đây</h2>
                        <ul>
                            <li><a href="single-product.jsp">AdGuard VPN</a></li>
                            <li><a href="single-product.jsp">Windscribe VPN</a></li>
                            <li><a href="single-product.jsp">Windows 11 Pro Max</a></li>
                            <li><a href="single-product.jsp">Windows 11 Education</a></li>
                            <li><a href="single-product.jsp">Factory Design Utilities</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">




                            <p class="form-row form-row-first">
                                <input type="text" value="" id="coupon_code" placeholder="Mã giảm giá" class="input-text" name="coupon_code">
                            </p>

                            <p class="form-row form-row-last">
                                <input type="submit" value="Xác nhận" name="apply_coupon" class="button">
                            </p>

                            <div class="clear"></div>


                            <form enctype="multipart/form-data" action="#" class="checkout" method="post" name="checkout">

                                <div id="customer_details" class="col2-set">
                                    <div class="col-1">
                                        <div class="woocommerce-billing-fields">
                                            <h3>Phần thanh toán</h3>


                                            <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                                <label class="" for="billing_first_name">Họ và Tên <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <input type="text" value="<%=user.getName()%>" placeholder="" id="billing_first_name" name="billing_first_name" class="input-text ">
                                            </p>
                                            <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                                <label class="" for="billing_address_1">Địa chỉ <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <input type="text" value="<%=user.getAddress()%>" placeholder="Địa chỉ" id="billing_address_1" name="billing_address" class="input-text ">
                                            </p>


<%--                                            <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">--%>
<%--                                                <label class="" for="billing_country">Tỉnh thành <abbr title="required" class="required">*</abbr>--%>
<%--                                                </label>--%>
<%--                                                <select  class="country_to_state country_select" id="billing_country" name="billing_country">--%>
<%--                                                    <option value="">Chọn tỉnh thành</option>--%>
<%--                                                    <option value="AG">An Giang</option>--%>
<%--                                                    <option value="AF">Bà Rịa-Vũng Tàu</option>--%>
<%--                                                    <option value="BL">Bạc Liêu</option>--%>
<%--                                                    <option value="DZ">Bắc Giang</option>--%>
<%--                                                    <option value="AD">Bắc Kạn</option>--%>
<%--                                                    <option value="AO">Bắc Ninh</option>--%>
<%--                                                    <option value="AI">Bến Tre</option>--%>
<%--                                                    <option value="AQ">Bình Dương</option>--%>
<%--                                                    <option value="AG">Bình Định</option>--%>
<%--                                                    <option value="AR">Bình Phước</option>--%>
<%--                                                    <option value="AM">Bình Thuận</option>--%>
<%--                                                    <option value="AW">Cà Mau</option>--%>
<%--                                                    <option value="AU">Cao Bằng</option>--%>
<%--                                                    <option value="AT">Cần Thơ</option>--%>
<%--                                                    <option value="AZ">Đà Nẵng</option>--%>
<%--                                                    <option value="BS">Đắk Lắk</option>--%>
<%--                                                    <option value="BH">Đắk Mông</option>--%>
<%--                                                    <option value="BD">Điện Biên</option>--%>
<%--                                                    <option value="BB">Đồng Nai</option>--%>
<%--                                                    <option value="BY">Đồng Tháp</option>--%>
<%--                                                    <option value="PW">Gia Lai</option>--%>
<%--                                                    <option value="BE">Hà Giang</option>--%>
<%--                                                    <option value="BZ">Hà Nam</option>--%>
<%--                                                    <option value="BJ">Hà Nội</option>--%>
<%--                                                    <option value="BM">Hà Tĩnh</option>--%>
<%--                                                    <option value="BT">Hải Dương</option>--%>
<%--                                                    <option value="BO">Hải Phòng</option>--%>
<%--                                                    <option value="BQ">Hậu Giang</option>--%>
<%--                                                    <option value="BA">Hòa Bình</option>--%>
<%--                                                    <option value="BW">Hưng Yên</option>--%>
<%--                                                    <option value="BV">Khánh Hòa</option>--%>
<%--                                                    <option value="BR">Kiên Giang</option>--%>
<%--                                                    <option value="IO">Kon Tum</option>--%>
<%--                                                    <option value="VG">Lai Châu</option>--%>
<%--                                                    <option value="BN">Lạng Sơn</option>--%>
<%--                                                    <option value="BG">Lào Cai</option>--%>
<%--                                                    <option value="BF">Lâm Đồng</option>--%>
<%--                                                    <option value="BI">Long An</option>--%>
<%--                                                    <option value="KH">Nam Định</option>--%>
<%--                                                    <option value="CM">Nghệ An</option>--%>
<%--                                                    <option value="CA">Ninh Bình</option>--%>
<%--                                                    <option value="CV">Ninh Thuận</option>--%>
<%--                                                    <option value="KY">Phú Thọ</option>--%>
<%--                                                </select>--%>
<%--                                            </p>--%>


                                            <div class="clear"></div>

                                            <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                <label class="" for="billing_phone">Số điện thoại <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <input type="text" value="<%=user.getPhone()%>" placeholder="" id="billing_phone" name="billing_phone" class="input-text ">
                                            </p>
                                            <div class="clear"></div>


                                        </div>
                                    </div>



                                </div>

                                <h3 id="order_review_heading">Đơn hàng của bạn</h3>

                                <div id="order_review" style="position: relative;">
                                    <table class="shop_table">
                                        <thead>
                                        <tr>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-total">Tổng</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            Set<String> keySet = list.keySet();
                                            for (String k: keySet){
                                                Products product = ProductsDao.getProduct(k);%>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                <strong class="product-quantity"><%=product.getName()+" "+product.getVersion()%></strong> </td>
                                            <td class="product-total">
                                                <span class="amount"><%=Products.priceFormat(product.getPrice()*list.get(k))%></span> </td>
                                        </tr>
                                        <%}%>

                                        </tbody>
                                        <tfoot>

                                        <tr class="cart-subtotal">
                                            <th>Giảm giá</th>
                                            <td><span class="amount"><%=Products.priceFormat(0)%></span>
                                            </td>
                                        </tr>

                                        <tr class="shipping">
                                            <th>Phí ship và xử lí</th>
                                            <td>

                                                Miễn phí ship
                                                <input type="hidden" class="shipping_method" value="free_shipping" id="shipping_method_0" data-index="0" name="shipping_method[0]">
                                            </td>
                                        </tr>


                                        <tr class="order-total">
                                            <th>Tổng cộng</th>

                                            <td><strong><span class="amount"><%=Products.priceFormat(total)%></span></strong> </td>
                                        </tr>

                                        </tfoot>
                                    </table>


                                    <div id="payment">
                                        <ul class="payment_methods methods">
                                            <li class="payment_method_bacs">
                                                <input type="radio" data-order_button_text="" checked="checked" value="bacs" name="payment_method" class="input-radio" id="payment_method_bacs">
                                                <label for="payment_method_bacs">Chuyển khoản </label>
                                                <div class="payment_box payment_method_bacs">
                                                    <p>Thực hiện thanh toán trực tiếp vào tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng ID đơn hàng của bạn làm tài liệu tham khảo thanh toán. Đơn đặt hàng của bạn sẽ không được giao cho đến khi tiền đã được xóa trong tài khoản của chúng tôi.</p>
                                                </div>
                                            </li>
                                            <li class="payment_method_cheque">
                                                <input type="radio" data-order_button_text="" value="cheque" name="payment_method" class="input-radio" id="payment_method_cheque">
                                                <label for="payment_method_cheque">Thanh toán khi nhận hàng </label>
                                                <div style="display:none;" class="payment_box payment_method_cheque">
                                                    <p>Vui lòng gửi cheque của bạn tới tên cửa hàng, tên đường, tên xã, tên huyện / thành phố, mã bưu điện cửa hàng.</p>
                                                </div>
                                                <!--                                        </li>-->
                                                <!--&lt;!&ndash;                                        <li class="payment_method_paypal">&ndash;&gt;-->
                                                <!--                                            <input type="radio" data-order_button_text="Proceed to PayPal" value="paypal" name="payment_method" class="input-radio" id="payment_method_paypal">-->
                                                <!--                                            <label for="payment_method_paypal">PayPal <img alt="PayPal Acceptance Mark" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a title="What is Paypal?" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" class="about_paypal" href="https://www.paypal.com/gb/webapps/mpp/paypal-popup">Paypal là cái gì?</a>-->
                                                <!--                                            </label>-->
                                                <!--                                            <div style="display:none;" class="payment_box payment_method_paypal">-->
                                                <!--                                                <p>Thanh toán qua PayPal; bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản PayPal.</p>-->
                                                <!--                                            </div>-->
                                                <!--                                        </li>-->
                                        </ul>

                                        <div class="form-row place-order">

                                            <input type="submit" data-value="Place order" value="đặt hàng" id="place_order" name="woocommerce_checkout_place_order" class="button alt">


                                        </div>

                                        <div class="clear"></div>

                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>



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
</div>

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
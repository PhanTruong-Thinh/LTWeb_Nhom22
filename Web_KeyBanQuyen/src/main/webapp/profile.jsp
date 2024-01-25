
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Ogani Template"/>
    <meta name="keywords" content="Ogani, unica, creative, html"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
            rel="stylesheet"
    />

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"/>
    <link rel="stylesheet" href="css/nice-select.css" type="text/css"/>
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/profile_style.css" type="text/css"/>

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="index"><img src="img/logo.png" alt=""/></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li>
                <a href="like"><i class="fa fa-heart"></i> <span>1</span></a>
            </li>
            <li>
                <a href="cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a>
            </li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="img/language.png" alt=""/>
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index">Trang chủ</a></li>
            <li>
                <a href="./shop-grid">Sản phẩm</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.html">Thức ăn gia súc</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="shop-grid">Thức ăn cho bò</a></li>
                            <li><a href="shop-grid">Thức ăn cho ngựa</a></li>
                            <li><a href="shop-grid">Thức ăn cho lợn</a></li>
                            <li><a href="shop-grid">Thức ăn cho trâu</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Thức ăn gia cầm</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Thức ăn gia súc</a></li>
                            <li><a href="./shop-grid.html">Thức ăn gai cầm</a></li>
                            <li><a href="./shop-grid.html">Thức ăn thủy sản</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Thức ăn thủy sản</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Thức ăn cho tôm</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho cá</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho mực</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
            <li><a href="contact.jsp">Liên Hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i>animalfeed@gmail.com</li>
                            <li>
                                Miễn phí giao hàng cho tất cả đơn hàng có giá trị từ
                                2,000,000 vnđ
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index"><img src="img/logo.png" alt=""/></a>
                </div>
            </div>


            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li>
                            <a href="shop-grid"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <a href="shoping-cart.jsp"
                            ><i class="fa fa-shopping-bag"></i> <span>3</span></a
                            >
                        </li>
                    </ul>
                    <!--                    <div class="header__cart__price">item: <span>$150.00</span></div>-->
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="header__menu">
                    <ul class="menu__list">
                        <li><a href="index">Trang Chủ</a></li>
                        <li><a href="shop-grid">Sản phẩm</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
                        <li><a href="contact.jsp">Liên Hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->
<div class="user">
    <div class="container user__information ">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="img-left">
                    <img src="" alt="" class="img__user">
                    <p>    </p>
                </div>
                <ul class="menu">
                    <li>
                        <button class="menu__item" onclick="profile_click()">Hồ Sơ</button>
                    </li>
                    <li>
                        <a href="changePassword.jsp">
                            <button class="menu__item" onclick="password_click()">Đổi mật khẩu</button>
                        </a>
                    </li>
                    <li>
                        <button class="menu__item" onclick="oder_click()">Lịch sử mua hàng</button>
                    </li>
                    <li><a href="doLogin">
                        <button class="menu__item">Đăng xuất</button>
                    </a></li>
                    <br><br>
<%--                    <%--%>
<%--                        String url = "";--%>
<%--                        if (role.checkRole(Role.P_ADMIN)) {--%>
<%--                            int p = 0;--%>
<%--                            for(int i = 2; i < 9; i++){--%>
<%--                                if(role.checkRole(i)){--%>
<%--                                    p = i;--%>
<%--                                    break;--%>
<%--                                }--%>
<%--                            }--%>
<%--                            switch (p){--%>
<%--                                case Role.P_MACCOUNT:--%>
<%--                                    url = "AccountlistController?pageNumber=1";--%>
<%--                                    break;--%>
<%--                                case Role.P_MORDER:--%>
<%--                                    url = "LoadOrdersList?pageNumber=1";--%>
<%--                                    break;--%>
<%--                                case Role.P_MPRODUCT:--%>
<%--                                    url = "ManageProduct";--%>
<%--                                    break;--%>
<%--                                case Role.P_MLOG:--%>
<%--                                    url = "LogController";--%>
<%--                                    break;--%>
<%--                                case Role.P_MROLE:--%>
<%--                                    url = "RoleController";--%>
<%--                                    break;--%>
<%--                                case Role.P_MSTATISTICAL:--%>
<%--                                    url = "StatisticalController";--%>
<%--                                    break;--%>
<%--                                case Role.P_MBLOG:--%>
<%--                                    url = "LoadBlogList?pageNumber=1";--%>
<%--                                    break;--%>
<%--                                default:--%>
<%--                                    url = "#";--%>
<%--                            }--%>
<%--                    %>--%>
                    <li><a href=>
                        <button class="menu__item" style="background-color: #7fad39"></button>
                    </a></li>

                </ul>
            </div>

            <div class="col-lg-9 col-md-7">
                <div class="profile" id="profile_account">
                    <form action="Profile" method="post" enctype="multipart/form-data" class="profile__form">
                        <div class="left__profile">
                            <div class="user__name profile__item">
                                <label>Họ và tên</label>
                                <input type="text" name="fullnameOfUser" value="dfgdfgdf">
                            </div>
                            <div class="email profile__item">
                                <label>Địa chỉ email</label>
                                <input type="text" name="emailAddress" value="dffgdfg">
                            </div>
                            <div class="phone__number  profile__item">
                                <label>Số điện thoại</label>
                                <input type="text" name="phoneNumber" value="dfgdfgd">
                            </div>
                            <div class="birthay  profile__item">
                                <label for="birthday">Ngày sinh:</label>
                                <input type="text" id="birthday" name="birthday" value="dfgdfg">
                            </div>
                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn">
                                    Cập nhật
                                </button>
                            </div>
                        </div>
                        <div class="right__profile">
                            <div class="avatar__container">
                                <img src="" alt="" id="image">
                                <input placeholder="" type="file" name="image__user"
                                       onchange="choose(this,'image')">
                            </div>
                        </div>
                    </form>
                </div>

                <div id="oder" style="width: 1100px">
                    <table>
                        <tr>
                            <th>Mã Đơn Hàng</th>
                            <th>Ngày mua hàng</th>
                            <th>Tổng tiền</th>
                            <th>Chi tiết</th>
                            <th>Trạng thái đơn hàng</th>
                        </tr>

                        <tr>
                            <td>dfg
                            </td>
                            <td>dfgdg
                            </td>
                            <td>dfgdfg</td>
                            <td>

                                <br/>

                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>


        </div>
    </div>
</div>


<!-- Footer Section Begin -->
<div class="over_footer"></div>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/over_common_part.js"></script>

<script>
    const id_list = ["profile_account", "oder"];


    function hideadd() {
        for (var i = 0; i < id_list.length; i++) {
            document.getElementById(id_list[i]).style.display = "none";
        }
    }

    function profile_click() {
        hideadd();
        document.getElementById('profile_account').style.display = "flex"
    }

    function oder_click() {
        hideadd();
        document.getElementById('oder').style.display = "flex"
    }

    function choose(fileInput, id) {
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#' + id).attr('src', e.target.result);
            }
            reader.readAsDataURL(fileInput.files[0]);
        }
    }

</script>


</body>
</html>

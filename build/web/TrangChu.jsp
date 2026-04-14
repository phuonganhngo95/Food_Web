<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Chủ - FastFood</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

        <link rel="stylesheet" href="./css/TrangChu.css">
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="./ThucDon.jsp" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="./ThucDon.jsp" class="active">Trang Chủ</a>
                    <a href="#thuc-don">Thực Đơn</a>
                    <a href="./ThucDon.jsp#uu-dai">Khuyến Mãi</a>
                    <a href="./LienHe.jsp">Liên Hệ</a>
                </nav>
                <div class="menu-right">
                    <div class="account-dropdown">
                        <input type="checkbox" id="account-check" class="dropdown-check">
                        <label for="account-check" class="dropdown-overlay"></label>
                        <label for="account-check" class="account-link">
                            <i class="fas fa-user-circle"></i> 
                            <span>Tài khoản</span> <i class="fas fa-chevron-down arrow-icon"></i>
                        </label>
                        <div class="dropdown-content">
                            <a href="./DangNhap.jsp"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                            <a href="./DangKi.jsp"><i class="fas fa-user-plus"></i> Đăng ký</a>
                            <a href="profile.html"><i class="fas fa-id-badge"></i> Trang cá nhân</a>
                            <a href="#"><i class="fa-solid fa-arrow-right-from-bracket"></i> Thoát</a>
                        </div>
                    </div>
                    <a href="cart.html" class="cart-link"><i class="fas fa-shopping-cart"></i> Giỏ Hàng (0)</a>
                </div>
            </div>
        </header>

        <main class="main-wrapper">

            <section class="banner-slider">
                <a href="#" class="banner-item">
                    <img src="./img/banner/banner1.jpg" alt="American Food">
                </a>

                <a href="#" class="banner-item">
                    <img src="./img/banner/banner2.jpg" alt="Everyday is Wing Day">
                </a>
            </section>

            <section class="section-block">
                <h2 class="section-title">MÓN BÁN CHẠY</h2>
                <div class="featured-layout">
                    <aside class="sidebar">
                        <ul class="sidebar-menu">
                            <li><a href="#" class="active">GÀ RÁN</a></li>
                            <li><a href="#">BURGER</a></li>
                            <li><a href="#">PIZZA</a></li>
                            <li><a href="#">ĐỒ UỐNG</a></li>
                        </ul>
                    </aside>
                    <div class="featured-products">
                        <div class="ui-card">
                            <div class="card-img"><img src="https://placehold.co/250x200/F5D7C4/333?text=Combo+Ga" alt="Product"></div>
                            <div class="card-info">
                                <h3>Combo Gà Rán</h3>
                                <p>150.000đ</p>
                            </div>
                        </div>
                        <div class="ui-card">
                            <div class="card-img"><img src="https://placehold.co/250x200/F5D7C4/333?text=Burger+Bo" alt="Product"></div>
                            <div class="card-info">
                                <h3>Burger Bò Phô Mai</h3>
                                <p>65.000đ</p>
                            </div>
                        </div>
                        <div class="ui-card">
                            <div class="card-img"><img src="https://placehold.co/250x200/F5D7C4/333?text=Pizza+Xuc+Xich" alt="Product"></div>
                            <div class="card-info">
                                <h3>Pizza Xúc Xích</h3>
                                <p>120.000đ</p>
                            </div>
                        </div>
                        <div class="ui-card">
                            <div class="card-img"><img src="https://placehold.co/250x200/F5D7C4/333?text=Mi+Y+Bo+Bam" alt="Product"></div>
                            <div class="card-info">
                                <h3>Mì Ý Bò Băm</h3>
                                <p>85.000đ</p>
                            </div>
                        </div>
                        <div class="ui-card">
                            <div class="card-img"><img src="https://placehold.co/250x200/F5D7C4/333?text=Ga+Phu+Pho+Mai" alt="Product"></div>
                            <div class="card-info">
                                <h3>Gà Phủ Phô Mai</h3>
                                <p>95.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section-block" id="uu-dai">
                <h2 class="section-title">MÓN ĂN KÈM</h2>
                <div class="grid-4-cols">
                    <div class="ui-card">
                        <div class="card-img"><img src="https://placehold.co/200x180/F5D7C4/333?text=Khoai+Tay" alt="Product"></div>
                        <div class="card-info">
                            <h3>Khoai Tây Chiên</h3>
                            <p>35.000đ</p>
                        </div>
                    </div>
                    <div class="ui-card">
                        <div class="card-img"><img src="https://placehold.co/200x180/F5D7C4/333?text=Ga+Vien" alt="Product"></div>
                        <div class="card-info">
                            <h3>Gà Viên Lắc Phô Mai</h3>
                            <p>45.000đ</p>
                        </div>
                    </div>
                    <div class="ui-card">
                        <div class="card-img"><img src="https://placehold.co/200x180/F5D7C4/333?text=Salad" alt="Product"></div>
                        <div class="card-info">
                            <h3>Salad Tươi Trộn</h3>
                            <p>40.000đ</p>
                        </div>
                    </div>
                    <div class="ui-card">
                        <div class="card-img"><img src="https://placehold.co/200x180/F5D7C4/333?text=Nuoc+Ngot" alt="Product"></div>
                        <div class="card-info">
                            <h3>Nước Ngọt</h3>
                            <p>15.000đ</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="promo-banner">
                <div class="promo-content">
                    <h2>ƯU ĐÃI THỜI GIAN CÓ HẠN</h2>
                    <p>Nhập mã <strong class="highlight">FASTFOOD20</strong> giảm ngay 20% cho đơn hàng từ 200k. Số lượng có hạn, đặt ngay kẻo lỡ!</p>
                    <div class="social-icons">
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twitter"></i>
                        <span>@FastFoodVN</span>
                    </div>
                </div>
                <div class="promo-images">
                    <img src="https://placehold.co/150x150/transparent/e64a19?text=Gift" alt="Gift">
                </div>
            </section>

        </main>

        <footer class="footer">
            <div class="container flex-between" style="align-items: flex-start;">
                <div style="flex:1; padding-right:20px;">
                    <a href="./ThucDon.jsp" class="logo highlight" style="color:#e64a19;">FastFood</a>
                    <p>Chuyên cung cấp đồ ăn nhanh, giao hàng siêu tốc và an toàn.</p>
                </div>
                <div style="flex:1;">
                    <h3 style="font-family:'Nunito', sans-serif; color:#fff;">Nhóm Trình Bày</h3>
                    <p>Vũ Ngọc Hương Giang - 25/12/2005</p>
                    <p>Ngô Phương Anh - 09/05/2005</p>
                    <p>Phùng Ngọc Bảo - 13/12/2005</p>
                </div>
            </div>
        </footer>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="./js/index.js"></script>
    </body>
</html>
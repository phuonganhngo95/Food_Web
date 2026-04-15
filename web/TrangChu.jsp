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
                    <div class="search-dropdown">
                        <input type="checkbox" id="search-check" class="dropdown-check">
                        <label for="search-check" class="dropdown-overlay"></label>

                        <label for="search-check" class="search-link">
                            <i class="fas fa-search"></i>
                        </label>

                        <div class="search-content">
                            <form action="TimKiem.jsp" class="search-form">
                                <input type="text" placeholder="Tìm kiếm món ăn..." class="search-input">
                                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="account-dropdown">
                        <input type="checkbox" id="account-check" class="dropdown-check">
                        <label for="account-check" class="dropdown-overlay"></label>
                        <label for="account-check" class="account-link">
                            <i class="fas fa-user-circle"></i> 
                            <span>Tài khoản </span> <i class="fas fa-chevron-down arrow-icon"></i>
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
                            <li><a href="#" data-filter="ga-ran">GÀ RÁN</a></li>
                            <li><a href="#" data-filter="burger">BURGER</a></li>
                            <li><a href="#" data-filter="pizza">PIZZA</a></li>
                            <li><a href="#" data-filter="khac">MÓN KHÁC</a></li>
                        </ul>
                    </aside>

                    <div class="featured-products">
                        <div class="ui-card ga-ran">
                            <a href="ChiTietMon.jsp" class="card-img">
                                <img src="./img/dishes/food1.jpg" alt="Combo Gà Rán">
                            </a>
                            <div class="card-info">
                                <div class="card-header">
                                    <a href="ChiTietMon.jsp" class="card-title">
                                        <h3>Combo Gà Rán</h3>
                                    </a>
                                    <div class="price-box">
                                        <span class="old-price">180.000đ</span>
                                        <span class="new-price">150.000đ</span>
                                    </div>
                                </div>
                                <p class="card-desc">Gồm 2 miếng gà rán giòn rụm, 1 khoai tây chiên vừa và 1 ly Pepsi mát lạnh.</p>
                                <button class="add-btn"><i class="fas fa-plus"></i> Thêm</button>
                            </div>
                        </div>

                        <div class="ui-card burger">
                            <a href="ChiTietMon.jsp" class="card-img">
                                <img src="https://placehold.co/250x200/F5D7C4/333?text=Burger+Bo" alt="Burger Bò Phô Mai">
                            </a>
                            <div class="card-info">
                                <div class="card-header">
                                    <a href="ChiTietMon.jsp" class="card-title">
                                        <h3>Burger Bò Phô Mai</h3>
                                    </a>
                                    <div class="price-box">
                                        <span class="new-price">65.000đ</span>
                                    </div>
                                </div>
                                <p class="card-desc">Bò băm nướng mọng nước, phô mai Cheddar tan chảy cùng xà lách tươi sạch.</p>
                                <button class="add-btn"><i class="fas fa-plus"></i> Thêm</button>
                            </div>
                        </div>

                        <div class="ui-card pizza">
                            <a href="ChiTietMon.jsp" class="card-img">
                                <img src="https://placehold.co/250x200/F5D7C4/333?text=Pizza+Xuc+Xich" alt="Pizza Xúc Xích">
                            </a>
                            <div class="card-info">
                                <div class="card-header">
                                    <a href="ChiTietMon.jsp" class="card-title">
                                        <h3>Pizza Xúc Xích</h3>
                                    </a>
                                    <div class="price-box">
                                        <span class="new-price">120.000đ</span>
                                    </div>
                                </div>
                                <p class="card-desc">Đế bánh giòn xốp, phủ đầy xúc xích pepperoni đậm vị và phô mai kéo sợi.</p>
                                <button class="add-btn"><i class="fas fa-plus"></i> Thêm</button>
                            </div>
                        </div>

                        <div class="ui-card khac">
                            <a href="ChiTietMon.jsp" class="card-img">
                                <img src="https://placehold.co/250x200/F5D7C4/333?text=Mi+Y+Bo+Bam" alt="Mì Ý Bò Băm">
                            </a>
                            <div class="card-info">
                                <div class="card-header">
                                    <a href="ChiTietMon.jsp" class="card-title">
                                        <h3>Mì Ý Bò Băm</h3>
                                    </a>
                                    <div class="price-box">
                                        <span class="new-price">85.000đ</span>
                                    </div>
                                </div>
                                <p class="card-desc">Mì Ý luộc chín tới dai ngon, quyện cùng sốt cà chua bò băm đặc biệt thơm lừng.</p>
                                <button class="add-btn"><i class="fas fa-plus"></i> Thêm</button>
                            </div>
                        </div>

                        <div class="ui-card ga-ran">
                            <a href="ChiTietMon.jsp" class="card-img">
                                <img src="https://placehold.co/250x200/F5D7C4/333?text=Ga+Phu+Pho+Mai" alt="Gà Phủ Phô Mai">
                            </a>
                            <div class="card-info">
                                <div class="card-header">
                                    <a href="ChiTietMon.jsp" class="card-title">
                                        <h3>Gà Phủ Phô Mai</h3>
                                    </a>
                                    <div class="price-box">
                                        <span class="old-price">110.000đ</span>
                                        <span class="new-price">95.000đ</span>
                                    </div>
                                </div>
                                <p class="card-desc">Gà chiên giòn tan được phủ lớp phô mai tuyết đặc trưng siêu cuốn.</p>
                                <button class="add-btn"><i class="fas fa-plus"></i> Thêm</button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="category-showcase">
                <div class="widget-today-menu-wrapper">
                    <div class="today-menu-content">
                        <div class="intro-wrapper">
                            <div class="intro">
                                <div class="logo">
                                    <img src="https://jollibee.com.vn/media/logo-footer.png" alt="">
                                </div>
                                <p class="title">Ăn Gì Hôm Nay</p>
                                <p class="description">Thực đơn Jollibee đa dạng và phong phú, có rất nhiều sự lựa chọn cho bạn, gia đình và bạn bè.</p>
                            </div>
                        </div>

                        <div class="main-menu-wrapper">
                            <div class="quad-menu">
                                <a href="/ga-gion-vui-ve.html" class="quad menu">
                                    <div class="top-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/wysiwyg/today/ga_gion_vui_ve.png" alt="">
                                    </div>
                                    <div class="bottom-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/e17856b74b7a0e-titlegagionvuive.png" alt="">
                                        <button class="btn btn-orange text-uppercase btn-order">Đặt hàng</button>
                                    </div>
                                </a>

                                <a href="/ga-sot-cay.html" class="quad menu">
                                    <div class="top-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/wysiwyg/today/ga_sot_cay.png" alt="">
                                    </div>
                                    <div class="bottom-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/0a7c5c03bdcaaf-titlegasotcay.png" alt="">
                                        <button class="btn btn-orange text-uppercase btn-order">Đặt hàng</button>
                                    </div>
                                </a>

                                <a href="/mi-y-sot-bo-bam.html" class="quad menu">
                                    <div class="top-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/wysiwyg/today/my_y_sot_bo_bam.png" alt="">
                                    </div>
                                    <div class="bottom-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/870d84c56fb2b9-titlemiysotbobam.png" alt="">
                                        <button class="btn btn-orange text-uppercase btn-order">Đặt hàng</button>
                                    </div>
                                </a>

                                <a href="/mon-trang-mieng.html" class="quad menu">
                                    <div class="top-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/wysiwyg/today/mon_trang_mieng.png" alt="">
                                    </div>
                                    <div class="bottom-img-wrapper">
                                        <img src="https://jollibee.com.vn/media/3c96f92fbe5bc3-montrangmieng01.png" alt="">
                                        <button class="btn btn-orange text-uppercase btn-order">Đặt hàng</button>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section-block" id="uu-dai">
                <h2 class="section-title">MÓN MỚI</h2>
                <div class="grid-4-cols">
                    <a href="ChiTietMon.jsp" class="ui-card">
                        <div class="card-img">
                            <img src="https://placehold.co/250x200/F5D7C4/333?text=Khoai+Tay" alt="Khoai Tây Chiên">
                        </div>
                        <div class="card-info">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3>Khoai Tây Chiên</h3>
                                </div>
                                <div class="price-box">
                                    <span class="new-price">35.000đ</span>
                                </div>
                            </div>
                            <p class="card-desc">Khoai tây chiên giòn rụm rắc muối, kèm sốt tương cà chua ngọt đặc biệt.</p>
                            <button class="add-btn" onclick="event.preventDefault();"><i class="fas fa-plus"></i> Thêm</button>
                        </div>
                    </a>

                    <a href="ChiTietMon.jsp" class="ui-card">
                        <div class="card-img">
                            <img src="https://placehold.co/250x200/F5D7C4/333?text=Ga+Vien" alt="Gà Viên Lắc">
                        </div>
                        <div class="card-info">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3>Gà Viên Lắc Phô Mai</h3>
                                </div>
                                <div class="price-box">
                                    <span class="new-price">45.000đ</span>
                                </div>
                            </div>
                            <p class="card-desc">Gà viên chiên giòn tẩm ướp đậm đà, lắc đều với bột phô mai béo ngậy.</p>
                            <button class="add-btn" onclick="event.preventDefault();"><i class="fas fa-plus"></i> Thêm</button>
                        </div>
                    </a>

                    <a href="ChiTietMon.jsp" class="ui-card">
                        <div class="card-img">
                            <img src="https://placehold.co/250x200/F5D7C4/333?text=Salad" alt="Salad Tươi Trộn">
                        </div>
                        <div class="card-info">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3>Salad Tươi Trộn</h3>
                                </div>
                                <div class="price-box">
                                    <span class="new-price">40.000đ</span>
                                </div>
                            </div>
                            <p class="card-desc">Xà lách tươi sạch, cà chua bi và sốt mayonnaise chua ngọt thanh mát.</p>
                            <button class="add-btn" onclick="event.preventDefault();"><i class="fas fa-plus"></i> Thêm</button>
                        </div>
                    </a>

                    <a href="ChiTietMon.jsp" class="ui-card">
                        <div class="card-img">
                            <img src="https://placehold.co/250x200/F5D7C4/333?text=Nuoc+Ngot" alt="Nước Ngọt">
                        </div>
                        <div class="card-info">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3>Nước Ngọt</h3>
                                </div>
                                <div class="price-box">
                                    <span class="old-price">20.000đ</span>
                                    <span class="new-price">15.000đ</span>
                                </div>
                            </div>
                            <p class="card-desc">Coca, Pepsi hoặc Sprite mát lạnh giải nhiệt, cực đã khi ăn kèm gà rán.</p>
                            <button class="add-btn" onclick="event.preventDefault();"><i class="fas fa-plus"></i> Thêm</button>
                        </div>
                    </a>
                </div>

                <div class="view-all-container">
                    <a href="./ThucDon.jsp" class="btn pill-btn view-all-btn">Xem tất cả <i class="fas fa-arrow-right"></i></a>
                </div>
            </section>

            <section class="section-block">
                <div class="promo-banner">
                    <div class="promo-content">
                        <span class="promo-tag">Ưu đãi thời gian có hạn</span>
                        <h2>Giảm ngay <span class="text-primary">20%</span> cho đơn từ 200K</h2>
                        <p>Sử dụng mã giảm giá dưới đây tại bước thanh toán. Đừng bỏ lỡ cơ hội thưởng thức đồ ăn ngon với giá cực hời, đặt ngay kẻo lỡ!</p>

                        <div class="coupon-box">
                            <span class="code">FASTFOOD20</span>
                            <button class="copy-btn" onclick="this.innerText = 'Đã chép!'; setTimeout(() => this.innerText = 'Sao chép', 2000);">Sao chép</button>
                        </div>

                        <div class="social-icons">
                            <span>Theo dõi để nhận thêm ưu đãi:</span>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-tiktok"></i></a>
                        </div>
                    </div>

                    <div class="promo-visual">
                        <img src="https://placehold.co/500x350/F5D7C4/e64a19?text=Combo+Khuyen+Mai" alt="Khuyến Mãi FastFood">
                    </div>
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
                    <h3 style="font-family:'Nunito', sans-serif; color:#333;">Nhóm Trình Bày</h3>
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
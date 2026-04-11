<%-- 
    Document   : TrangChu
    Created on : Apr 7, 2026, 8:30:53 AM
    Author     : Administrator
--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FastFood - Gà Rán & Đồ Ăn Nhanh</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./css/TrangChu.css">
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="index.html" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="index.html" class="active">Trang Chủ</a>
                    <a href="#thuc-don">Thực Đơn</a>
                    <a href="#khuyen-mai">Khuyến Mãi</a>
                    <a href="contact.html">Liên Hệ</a>
                </nav>
                <div class="menu-right">
                    <div class="account-dropdown">
                        <input type="checkbox" id="account-check" class="dropdown-check">

                        <label for="account-check" class="account-link">
                            <i class="fas fa-user-circle"></i> 
                            <span>Tài khoản</span> <i class="fas fa-chevron-down arrow-icon"></i>
                        </label>

                        <div class="dropdown-content">
                            <a href="login.html"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                            <a href="register.html"><i class="fas fa-user-plus"></i> Đăng ký</a>
                            <a href="profile.html"><i class="fas fa-id-badge"></i> Trang cá nhân</a>
                        </div>
                    </div>
                    <a href="cart.html" class="cart-link"><i class="fas fa-shopping-cart"></i> Giỏ Hàng (0)</a>
                </div>
            </div>
        </header>

        <section class="banner">
            <div class="container">
                <div class="banner-text">
                    <h1>Hương vị Tuyệt Đỉnh, <span class="highlight">Không Thể Cưỡng Lại!</span></h1>
                    <p>Khám phá menu đa dạng với những món ăn nhanh giòn rụm, tẩm vị đậm đà.</p>
                    <a href="#thuc-don" class="btn btn-primary">Đặt Ngay</a>
                </div>
            </div>
        </section>

        <section class="container" style="padding: 40px 0;" id="thuc-don">
            <div class="menu-layout">

                <aside class="left-sidebar">
                    <h2 class="section-title left-title">DANH MỤC MÓN ĂN</h2>

                    <div class="left-menu">
                        <ul class="menu-list">
                            <li><a href="#uu-dai">Ưu Đãi</a></li>
                            <li><a href="#mon-moi">Món Mới</a></li>
                            <li><a href="#combo-1-nguoi">Combo 1 Người</a></li>
                            <li><a href="#combo-nhom">Combo Nhóm</a></li>
                            <li><a href="#ga-ran">Gà Rán - Gà Quay</a></li>
                            <li><a href="#burger">Burger - Cơm - Mì Ý</a></li>
                            <li><a href="#thuc-an-nhe">Thức Ăn Nhẹ</a></li>
                            <li><a href="#thuc-uong">Thức Uống & Tráng Miệng</a></li>
                        </ul>
                    </div>
                </aside>

                <main class="right-content">

                    <div id="uu-dai" class="product-section">
                        <h2 class="section-title">Ưu Đãi</h2>
                        <hr class="title-line">

                        <div class="product-grid">
                            <div class="product-card discounted">
                                <a href="#" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Đùi gà rán KFC">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà rán KFC</h4>
                                            <div class="price-container">
                                                <span class="current-price">20.000đ</span>
                                                <span class="old-price">25.000đ</span> </div>
                                        </div>
                                        <p class="product-desc">Combo 1 miếng gà, 1 khoai tây, 1 pepsi</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card">
                                <a href="#" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-2.jpg?v=LwnZog" alt="Đùi gà thường">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà thường</h4>
                                            <div class="price-container">
                                                <span class="current-price">25.000đ</span>
                                            </div>
                                        </div>
                                        <p class="product-desc">Đùi gà chiên giòn cay</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="mon-moi" class="product-section" style="margin-top: 40px;">
                        <h2 class="section-title">Món Mới</h2>
                        <hr class="title-line">

                        <div class="product-grid">
                            <div class="product-card discounted">
                                <a href="#" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Đùi gà rán KFC">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà rán KFC</h4>
                                            <div class="price-container">
                                                <span class="current-price">20.000đ</span>
                                                <span class="old-price">25.000đ</span> </div>
                                        </div>
                                        <p class="product-desc">Combo 1 miếng gà, 1 khoai tây, 1 pepsi</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card">
                                <a href="#" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-2.jpg?v=LwnZog" alt="Đùi gà thường">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà thường</h4>
                                            <div class="price-container">
                                                <span class="current-price">25.000đ</span>
                                            </div>
                                        </div>
                                        <p class="product-desc">Đùi gà chiên giòn cay</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card">
                                <a href="#" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-2.jpg?v=LwnZog" alt="Đùi gà thường">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà thường</h4>
                                            <div class="price-container">
                                                <span class="current-price">25.000đ</span>
                                            </div>
                                        </div>
                                        <p class="product-desc">Đùi gà chiên giòn cay</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="combo-1-nguoi" class="product-section" style="margin-top: 40px">
                        <h2 class="section-title">Combo 1 người</h2>
                        <hr class="title-line">

                        <div class="product-grid">
                            <div class="product-card discounted">
                                <a href="ChiTietSanPham.jsp" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Đùi gà rán KFC">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà rán KFC</h4>
                                            <div class="price-container">
                                                <span class="current-price">20.000đ</span>
                                                <span class="old-price">25.000đ</span> </div>
                                        </div>
                                        <p class="product-desc">Combo 1 miếng gà, 1 khoai tây, 1 pepsi</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card discounted">
                                <a href="ChiTietSanPham.jsp" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-2.jpg?v=LwnZog" alt="Đùi gà thường">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà thường</h4>
                                            <div class="price-container">
                                                <span class="current-price">25.000đ</span>
                                            </div>
                                        </div>
                                        <p class="product-desc">Đùi gà chiên giòn cay</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card">
                                <a href="ChiTietSanPham.jsp" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-2.jpg?v=LwnZog" alt="Đùi gà thường">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà thường</h4>
                                            <div class="price-container">
                                                <span class="current-price">25.000đ</span>
                                            </div>
                                        </div>
                                        <p class="product-desc">Đùi gà chiên giòn cay</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                            <div class="product-card discounted">
                                <a href="ChiTietSanPham.jsp" class="product-link">
                                    <div class="product-img">
                                        <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Đùi gà rán KFC">
                                    </div>
                                    <div class="product-info-wrapper">
                                        <div class="title-and-prices">
                                            <h4 class="product-title">Đùi gà rán KFC</h4>
                                            <div class="price-container">
                                                <span class="current-price">20.000đ</span>
                                                <span class="old-price">25.000đ</span> </div>
                                        </div>
                                        <p class="product-desc">Combo 1 miếng gà, 1 khoai tây, 1 pepsi</p>
                                    </div>
                                </a>
                                <div class="card-action">
                                    <button class="btn-add-cart">Thêm</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </main>
            </div>
        </section>

        <footer class="footer">
            <div class="container flex-between" style="align-items: flex-start;">
                <div style="flex:1; padding-right:20px;">
                    <a href="#" class="logo highlight" style="color:#e64a19;">FastFood</a>
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
    </body>
</html>
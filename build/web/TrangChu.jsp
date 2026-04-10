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

        <section class="container flex-between" style="padding: 40px 0; align-items: flex-start; gap: 30px;" id="thuc-don">
            <aside class="left-menu">
                <h3 class="menu-title">Danh Mục Món Ăn</h3>
                <a href="#"><i class="fas fa-star"></i> Món Mới</a>
                <a href="#"><i class="fas fa-fire"></i> Bán Chạy Nhất</a>
                <a href="#"><i class="fas fa-tags"></i> Ưu đãi</a>
                <hr>
<!--                <a href="#category-1"><i class="fas fa-drumstick-bite"></i> Gà Rán</a>
                <a href="#category-2"><i class="fas fa-hamburger"></i> Burger</a>
                <a href="#category-3"><i class="fas fa-pizza-slice"></i> Pizza</a>
                <a href="#category-4"><i class="fas fa-coffee"></i> Đồ Uống</a>-->
            </aside>

            <div class="product-area" style="flex: 1;">

                <div class="product-section" id="category-1">
                    <div class="flex-between section-header">
                        <h2 class="title">Món mới</h2>
                    </div>
                    <div class="product-grid">
                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="product-section" id="category-2">
                    <div class="flex-between section-header">
                        <h2 class="title">Burger</h2>
                    </div>
                    <div class="product-grid">
                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="product-section" id="category-3">
                    <div class="flex-between section-header">
                        <h2 class="title">Pizza</h2>
                    </div>
                    <div class="product-grid">
                        <div class="product-card">
                            <a href="#">
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Gà Trứng">
                                <div class="product-info">
                                    <p class="code">Mã: BG002</p>
                                    <h3 class="name" style="font-family: var(--f-sub);">
                                        <a href="ChiTietMonAn.jsp">Burger Gà Trứng</a>
                                    </h3>
                                    <div class="flex-between price-row">
                                        <span class="price">40.000đ</span>
                                        <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

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
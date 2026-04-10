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

            <div class="category-header">
                <h2>DANH MỤC MÓN ĂN</h2>
                <div class="line"></div>
            </div>

            <div class="category-grid">

                <a href="#uu-dai" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/KHUYEN%20MAI.jpg?v=LWna03" alt="Ưu Đãi">
                    </div>
                    <div class="category-title">
                        <span>Ưu Đãi</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#mon-moi" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/MON%20MOI.jpg?v=LWna03" alt="Món Mới">
                    </div>
                    <div class="category-title">
                        <span>Món Mới</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#combo-1-nguoi" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/COMBO%201%20NGUOI.jpg?v=LWna03" alt="Combo 1 Người">
                    </div>
                    <div class="category-title">
                        <span>Combo 1 Người</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#combo-nhom" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/COMBO%20NHOM.jpg?v=LWna03" alt="Combo Nhóm">
                    </div>
                    <div class="category-title">
                        <span>Combo Nhóm</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#ga-ran" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/GA.jpg?v=LWna03" alt="Gà Rán - Gà Quay">
                    </div>
                    <div class="category-title">
                        <span>Gà Rán - Gà Quay</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#burger" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/COM.jpg?v=LWna03" alt="Burger - Cơm - Mì Ý">
                    </div>
                    <div class="category-title">
                        <span>Burger - Cơm - Mì Ý</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#thuc-an-nhe" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/MON%20AN%20NHE.jpg?v=LWna03" alt="Thức Ăn Nhẹ">
                    </div>
                    <div class="category-title">
                        <span>Thức Ăn Nhẹ</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

                <a href="#thuc-uong" class="category-card">
                    <div class="img-wrapper">
                        <img src="https://static.kfcvietnam.com.vn/images/category/lg/TRANG%20MIENG.jpg?v=LWna03" alt="Thức Uống & Tráng Miệng">
                    </div>
                    <div class="category-title">
                        <span>Thức Uống & Tráng Miệng</span>
                        <i class="fas fa-chevron-right"></i>
                    </div>
                </a>

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
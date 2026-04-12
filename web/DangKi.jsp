<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng kí</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/Form.css"/>
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="index.html" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="#" class="active">Trang Chủ</a>
                    <a href="#thuc-don">Thực Đơn</a>
                    <a href="#khuyen-mai">Khuyến Mãi</a>
                    <a href="contact.html">Liên Hệ</a>
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

        <section class="container" style="padding: 40px 0;">
            <div class="menu-layout">
                <aside class="left-sidebar">
                    <h2 class="section-title left-title">DANH MỤC MÓN ĂN</h2>
                    <div class="left-menu">
                        <ul class="menu-list">
                            <li><a href="TrangChu.jsp#uu-dai">Ưu Đãi</a></li>
                            <li><a href="TrangChu.jsp#mon-moi">Món Mới</a></li>
                            <li><a href="TrangChu.jsp#ga-ran">Gà Rán - Gà Quay</a></li>
                        </ul>
                    </div>
                </aside>

                <main class="right-content">
                    <h2 class="section-title" style="text-align: center;">ĐĂNG KÝ TÀI KHOẢN</h2>
                    <div class="form-wrapper">
                        <form action="XuLyDangKy" method="POST">
                            <div class="form-group">
                                <label>Họ và tên *</label>
                                <input type="text" name="hoTen" required placeholder="Nhập họ và tên đầy đủ">
                            </div>
                            <div class="form-group">
                                <label>Tên đăng nhập *</label>
                                <input type="text" name="user" required placeholder="Tên đăng nhập viết liền">
                            </div>
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" name="email" required placeholder="email@example.com">
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại *</label>
                                <input type="tel" name="sdt" required placeholder="09xxxxxxxx">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ nhận hàng</label>
                                <input type="text" name="dc" required placeholder="Số nhà, tên đường, quận/huyện...">
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="password" name="pass" required>
                            </div>
                            <div class="form-group">
                                <label>Xác nhận mật khẩu *</label>
                                <input type="password" name="repass" required>
                            </div>
                            <button type="submit" class="btn-submit">TẠO TÀI KHOẢN</button>
                            <div class="form-link">
                                Bạn đã có tài khoản? <a href="DangNhap.jsp">Đăng nhập ngay</a>
                            </div>
                        </form>
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
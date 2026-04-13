<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang cá nhân - FastFood</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./css/ThucDon.css">
        <link rel="stylesheet" href="./css/Form.css">
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="./ThucDon.jsp" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="./ThucDon.jsp">Trang Chủ</a>
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

        <section class="banner" style="padding: 80px 0; background-position: center 40%;">
            <div class="container">
                <div class="banner-text" style="text-align: center; margin: 0 auto;">
                    <h1>Hồ Sơ <span class="highlight">Của Bạn</span></h1>
                    <p>Quản lý thông tin cá nhân và địa chỉ giao hàng.</p>
                </div>
            </div>
        </section>

        <section class="container" style="padding: 40px 0;">
            <div class="menu-layout">
                <aside class="left-sidebar">
                    <h2 class="section-title left-title">DANH MỤC MÓN ĂN</h2>
                    <div class="left-menu">
                        <ul class="menu-list">
                            <li><a href="./ThucDon.jsp#uu-dai">Ưu Đãi</a></li>
                            <li><a href="./ThucDon.jsp#mon-moi">Món Mới</a></li>
                        </ul>
                    </div>
                </aside>

                <main class="right-content">
                    <div class="form-wrapper">
                        <h2 class="section-title" style="text-align: center; margin-bottom: 25px;">THÔNG TIN TÀI KHOẢN</h2>
                        <form action="#" method="POST">
                            <div class="form-group">
                                <label>Họ và tên</label>
                                <input type="text" name="hoTen" value="Ngô Phương Anh">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <!--<input type="email" name="email" value="phuonganh@example.com" disabled style="background-color: #f4f5f7; cursor: not-allowed;">-->
                                <input type="email" name="email" value="contact@gmail.com">
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input type="tel" name="sdt" value="0987654321">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ nhận hàng mặc định</label>
                                <input type="text" name="dc" value="Hà Nội, Việt Nam">
                            </div>
                            <button type="button" class="btn-submit" style="margin-top: 10px;">CẬP NHẬT THÔNG TIN</button>
                        </form>
                    </div>
            </div>
        </section>

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
    </body>
</html>
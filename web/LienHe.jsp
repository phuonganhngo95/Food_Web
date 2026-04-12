<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Liên hệ</title>

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
                            <li><a href="TrangChu.jsp#ga-ran">Gà Rán - Gà Quay</a></li>
                        </ul>
                    </div>
                </aside>

                <main class="right-content">
                    <h2 class="section-title" style="text-align: center;">LIÊN HỆ VỚI CHÚNG TÔI</h2>
                    <div class="form-wrapper">
                        <form action="XuLyLienHe" method="POST">
                            <div class="form-group">
                                <label>Họ và tên của bạn *</label>
                                <input type="text" name="name" required>
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ Email *</label>
                                <input type="email" name="email" required placeholder="Để chúng tôi phản hồi lại cho bạn">
                            </div>
                            <div class="form-group">
                                <label>Tiêu đề góp ý</label>
                                <input type="text" name="subject" required>
                            </div>
                            <div class="form-group">
                                <label>Nội dung chi tiết *</label>
                                <textarea name="message" rows="5" required style="width: 100%; padding: 12px; border: 1px solid #ccc; border-radius: 6px; font-family: inherit;"></textarea>
                            </div>
                            <button type="submit" class="btn-submit">GỬI PHẢN HỒI</button>
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
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi Tiết Món Ăn - FastFood</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./css/ThucDon.css">
        <link rel="stylesheet" href="./css/ChiTietMonAn.css">
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

        <section class="banner">
            <div class="container">
                <div class="banner-text">
                    <h1>Hương vị Tuyệt Đỉnh, <span class="highlight">Không Thể Cưỡng Lại!</span></h1>
                    <p>Khám phá menu đa dạng với những món ăn nhanh giòn rụm, tẩm vị đậm đà.</p>
                    <a href="./ThucDon.jsp#thuc-don" class="btn btn-primary">Đặt Ngay</a>
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
                            <li><a href="./ThucDon.jsp#combo-1-nguoi">Combo 1 Người</a></li>
                            <li><a href="./ThucDon.jsp#ga-ran">Gà Rán - Gà Quay</a></li>
                        </ul>
                    </div>
                </aside>

                <main class="right-content">
                    <h2 class="section-title" style="background-color: var(--primary); color: #fff; padding: 12px 20px; border-radius: 6px;">CHI TIẾT SẢN PHẨM</h2>

                    <div class="product-detail-container">
                        <div class="detail-image">
                            <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Combo Gà Rán">
                        </div>
                        <div class="detail-info">
                            <!--<p class="code">Mã SP: CBO-001</p>-->
                            <h3 class="detail-name">Combo Gà Ưu Đãi 1</h3>
                            <div class="detail-price">89.000đ</div>
                            <p class="detail-description">
                                Combo hấp dẫn bao gồm: 2 Miếng Gà Rán giòn cay, 1 Khoai Tây Chiên (Vừa), và 1 Pepsi (Vừa). Món ăn được chế biến từ gà tươi 100% tẩm ướp với 11 loại gia vị bí mật.
                            </p>

                            <div class="quantity-box">
                                <label style="margin-right: 15px; font-weight: bold; font-family: var(--f-sub);">Số lượng:</label>
                                <button class="btn-qty">-</button>
                                <input type="text" value="1" class="input-qty" min="1">
                                <button class="btn-qty">+</button>
                            </div>

                            <div class="action-buttons">
                                <button class="btn-add-cart-large"><i class="fas fa-shopping-cart"></i> Thêm vào giỏ</button>
                            </div>
                        </div>
                    </div>
                </main>

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
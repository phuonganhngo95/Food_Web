<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Giỏ Hàng - FastFood</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700&family=Playwrite+IE:wght@100..400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./css/ThucDon.css">
        <link rel="stylesheet" href="./css/Cart.css"/>
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="./TrangChu.jsp" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="./TrangChu.jsp">Trang Chủ</a>
                    <a href="./TrangChu.jsp#thuc-don">Thực Đơn</a>
                    <a href="./TrangChu.jsp#uu-dai">Khuyến Mãi</a>
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
                            <a href="TrangCaNhan.jsp"><i class="fas fa-id-badge"></i> Trang cá nhân</a>
                            <a href="#"><i class="fa-solid fa-arrow-right-from-bracket"></i> Thoát</a>
                        </div>
                    </div>
                    <a href="GioHang.jsp" class="cart-link" style="background: var(--primary); color: #fff;"><i class="fas fa-shopping-cart"></i> Giỏ Hàng (1)</a>
                </div>
            </div>
        </header>

        <section class="container" style="padding: 40px 0; min-height: 60vh;">
            <h2 class="section-title">GIỎ HÀNG CỦA BẠN</h2>
            <hr class="title-line">

            <div class="cart-container">
                <div class="cart-items">
                    <div class="cart-item">
                        <div class="item-img">
                            <img src="https://static.kfcvietnam.com.vn/images/items/lg/D-CBO-CHICKEN-1.jpg?v=LwnZog" alt="Combo Gà">
                        </div>
                        <div class="item-info">
                            <div class="item-name">Combo Gà Ưu Đãi 1</div>
                            <div class="item-price">Đơn giá: 89.000đ</div>
                            <div class="qty-control">
                                <button class="qty-btn">-</button>
                                <input type="text" class="qty-input" value="1">
                                <button class="qty-btn">+</button>
                            </div>
                        </div>
                        <div class="item-total">89.000đ</div>
                        <button class="btn-remove" title="Xóa món này"><i class="fas fa-trash-alt"></i></button>
                    </div>
                </div>

                <div class="cart-summary">
                    <h3 class="summary-title">Tóm Tắt Đơn Hàng</h3>
                    <div class="summary-line">
                        <span>Tạm tính (1 món):</span>
                        <span>89.000đ</span>
                    </div>
                    <div class="summary-line">
                        <span>Phí giao hàng:</span>
                        <span>15.000đ</span>
                    </div>
                    <div class="summary-line summary-total">
                        <span>Tổng thanh toán:</span>
                        <span>104.000đ</span>
                    </div>
                    <button class="btn-checkout">TIẾN HÀNH ĐẶT HÀNG</button>
                    <div style="text-align: center; margin-top: 15px;">
                        <a href="TrangChu.jsp#thuc-don" style="color: var(--primary); font-size: 14px; text-decoration: underline;"><i class="fas fa-arrow-left"></i> Tiếp tục chọn món</a>
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
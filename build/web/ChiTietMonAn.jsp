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
        <link rel="stylesheet" href="./css/TrangChu.css">
    </head>
    <body>
        <header class="top-menu">
            <div class="container flex-between">
                <a href="#" class="logo">Fast<span class="highlight">Food</span></a>
                <nav class="menu-center">
                    <a href="#">Trang Chủ</a>
                    <a href="index.html#thuc-don" class="active">Thực Đơn</a>
                    <a href="#khuyen-mai">Khuyến Mãi</a>
                    <a href="contact.html">Liên Hệ</a>
                </nav>
                <div class="menu-right">
                    <a href="login.html"><i class="fas fa-user-circle"></i> Tài khoản</a>
                    <a href="cart.html" class="cart-link"><i class="fas fa-shopping-cart"></i> Giỏ Hàng (3)</a>
                </div>
            </div>
        </header>

        <section class="container flex-between" style="padding: 40px 0; align-items: flex-start; gap: 30px;" id="thuc-don">

            <aside class="left-menu">
                <h3 class="menu-title">Danh Mục Món Ăn</h3>
                <a href="#"><i class="fas fa-star"></i> Hàng Mới</a>
                <a href="#"><i class="fas fa-fire"></i> Bán Chạy Nhất</a>
                <a href="#"><i class="fas fa-tags"></i> Đang Giảm Giá</a>
                <hr>
                <a href="index.html#ga-ran"><i class="fas fa-drumstick-bite"></i> Gà Rán</a>
                <a href="index.html#burger"><i class="fas fa-hamburger"></i> Burger</a>
                <a href="index.html#pizza"><i class="fas fa-pizza-slice"></i> Pizza</a>
                <a href="index.html#do-uong"><i class="fas fa-coffee"></i> Đồ Uống</a>
            </aside>

            <div class="product-area" style="flex: 1;">

                <div class="breadcrumb" style="margin-bottom: 20px; color: #888;">
                    <a href="index.html">Trang Chủ</a> / <a href="index.html#ga-ran">Gà Rán</a> / <span class="highlight">Gà Rán Giòn Cay</span>
                </div>

                <div class="product-detail-container">
                    <div class="detail-image">
                        <img src="https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?q=80&w=600&auto=format&fit=crop" alt="Gà Rán Giòn Cay">
                    </div>
                    <div class="detail-info">
                        <span class="tag tag-hot">Hot</span>
                        <h2 class="detail-name">Gà Rán Giòn Cay</h2>
                        <p class="code">Mã sản phẩm: <strong>GR001</strong> | Tình trạng: <strong>Còn hàng</strong></p>

                        <div class="detail-price">35.000đ</div>

                        <div class="detail-description">
                            <p>Trải nghiệm hương vị bùng nổ với Gà Rán Giòn Cay tẩm ướp công thức đặc biệt. Lớp vỏ ngoài vàng ươm, giòn rụm hoàn hảo, bao bọc phần thịt gà tươi ngon, mọng nước bên trong. Vị cay nồng đậm đà thấm sâu vào từng thớ thịt sẽ làm hài lòng bất kỳ tín đồ ăn cay nào.</p>
                        </div>

                        <div class="quantity-box">
                            <span style="margin-right: 15px; font-weight: 600;">Số lượng:</span>
                            <button class="btn-qty">-</button>
                            <input type="number" value="1" min="1" class="input-qty">
                            <button class="btn-qty">+</button>
                        </div>

                        <div class="action-btns">
                            <a href="#" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Thêm Vào Giỏ</a>
                            <a href="#" class="btn btn-buy-now">Mua Ngay</a>
                        </div>
                    </div>
                </div>

                <div style="margin-top: 50px;">
                    <h2 class="title" style="margin-bottom: 20px; font-family: var(--f-sub);">Có Thể Bạn Sẽ Thích</h2>
                    <div class="product-grid">
                        <div class="product-card">
                            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&auto=format&fit=crop" alt="Burger Bò Phô Mai">
                            <div class="product-info">
                                <p class="code">Mã: BG001</p>
                                <h3 class="name" style="font-family: var(--f-sub);">Burger Bò Phô Mai</h3>
                                <div class="flex-between price-row">
                                    <span class="price">45.000đ</span>
                                    <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=600&auto=format&fit=crop" alt="Pizza Phô Mai">
                            <div class="product-info">
                                <p class="code">Mã: PZ001</p>
                                <h3 class="name" style="font-family: var(--f-sub);">Pizza Xúc Xích Phô Mai</h3>
                                <div class="flex-between price-row">
                                    <span class="price">120.000đ</span>
                                    <a href="#" class="btn-add"><i class="fas fa-cart-plus"></i> Thêm</a>
                                </div>
                            </div>
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
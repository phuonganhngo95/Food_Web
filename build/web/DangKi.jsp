<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng Ký</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/Form.css"/>

        <style>
            .form-control.is-invalid, .form-check-input.is-invalid {
                transition: none !important;
            }
            .invalid-feedback {
                animation: none !important;
                transition: none !important;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container align-items-center">
                <a class="navbar-brand logo" href="./TrangChu.jsp">
                    <img src="./img/logo.png" alt="Logo" style="height: 80px; width: auto; object-fit: contain; transition: transform 0.3s ease;">
                </a>

                <button class="navbar-toggler border-0 shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <i class="fas fa-bars fs-2 text-dark"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto fw-bold">
                        <li class="nav-item"><a class="nav-link" href="./TrangChu.jsp">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="./ThucDon.jsp">Thực đơn</a></li>
                        <li class="nav-item"><a class="nav-link" href="./KhuyenMai.jsp">Khuyến mãi</a></li> 
                        <li class="nav-item"><a class="nav-link" href="./LienHe.jsp">Liên hệ</a></li>
                    </ul>

                    <div class="d-flex align-items-center gap-3 mt-3 mt-lg-0 pb-3 pb-lg-0">
                        <form class="d-flex position-relative" role="search" action="#" method="GET">
                            <input class="form-control rounded-pill shadow-none pe-5 search-input" type="search" placeholder="Tìm món ăn..." aria-label="Search">
                            <button class="btn position-absolute end-0 top-50 translate-middle-y border-0 text-muted hover-primary" type="submit" style="background: transparent; z-index: 10;">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>

                        <div class="dropdown ms-2 position-relative" id="wishlistDropdownContainer">
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" 
                               id="wishlistDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" 
                               style="width: 40px; height: 40px;U">
                                <i class="far fa-heart"></i> 
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger wishlist-badge" style="font-size: 0.6rem; margin-top: 8px; margin-left: -5px;">0</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end border-0 cart-dropdown-menu p-3 shadow" aria-labelledby="wishlistDropdown" style="width: 350px;">
                                <div class="wishlist-empty text-center py-4">
                                    <i class="far fa-heart fs-1 text-muted mb-3 d-block"></i>
                                    <p class="text-muted mb-0">Bạn chưa có món ăn yêu thích nào!</p>
                                </div>

                                <div class="wishlist-has-items d-none"> 
                                    <h6 class="fw-bold mb-3 border-bottom pb-2">Món ăn yêu thích (<span class="wishlist-count-text">0</span>)</h6>
                                    <div class="wishlist-items-list mb-3" style="max-height: 250px; overflow-y: auto;"></div>
                                    <a href="#" class="btn btn-custom w-100 text-center text-decoration-none">Xem chi tiết</a>
                                </div>
                            </ul>
                        </div>

                        <div class="dropdown ms-2 position-relative" id="cartDropdownContainer">
                            <%
                                // =================================================================
                                // MOCK DATA (Dùng để test giao diện khi chưa có Backend)
                                // Hướng dẫn test: Đổi giá trị true/false ở 2 biến dưới đây để xem 3 trạng thái
                                // =================================================================
        
                                boolean isLogged = false;       // Đổi thành false để xem trạng thái CHƯA ĐĂNG NHẬP
                                boolean hasItemsInCart = false; // Đổi thành false để xem trạng thái GIỎ HÀNG TRỐNG
        
                                int cartSize = hasItemsInCart ? 3 : 0; // Số lượng hiển thị trên icon (Giả sử là 3 món)
                            %>

                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" 
                               id="cartDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" 
                               style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-shopping-cart"></i> 

                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger cart-badge" style="font-size: 0.6rem; margin-top: 8px; margin-left: -5px;">
                                    <%= isLogged ? cartSize : 0 %>
                                </span>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end border-0 cart-dropdown-menu p-3 shadow" aria-labelledby="cartDropdown" style="width: 350px;">

                                <% if (!isLogged) { %>
                                <div class="cart-empty-guest text-center py-4">
                                    <i class="fas fa-shopping-basket fs-1 text-muted mb-3 d-block"></i>
                                    <p class="text-muted mb-3">Giỏ hàng trống. Đăng nhập để tiếp tục!</p>
                                    <div class="d-flex gap-2 justify-content-center">
                                        <a href="DangNhap.jsp" class="btn btn-outline-custom btn-sm w-50">Đăng nhập</a>
                                        <a href="DangKi.jsp" class="btn btn-custom btn-sm w-50 text-decoration-none">Đăng ký</a>
                                    </div>
                                </div>

                                <% } else if (!hasItemsInCart) { %>
                                <div class="cart-empty-user text-center py-4">
                                    <i class="fas fa-shopping-basket fs-1 text-muted mb-3 d-block"></i>
                                    <p class="text-muted mb-3">Giỏ hàng của bạn đang trống!</p>
                                    <a href="#menu" class="btn btn-custom w-100 text-decoration-none">Đặt món ngay</a>
                                </div>

                                <% } else { %>
                                <div class="cart-has-items"> 
                                    <h6 class="fw-bold mb-3 border-bottom pb-2">Giỏ hàng của bạn</h6>
                                    <div class="cart-items-list mb-3" style="max-height: 250px; overflow-y: auto;">

                                        <div class="d-flex align-items-center mb-3">
                                            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=50&q=80" alt="Burger" class="rounded" style="width: 50px; height: 50px; object-fit: cover;">
                                            <div class="ms-3 flex-grow-1">
                                                <h6 class="mb-0 fs-6 fw-bold">Beef Burger Classic</h6>
                                                <span class="text-primary-custom fw-bold">125.000đ</span> <span class="text-muted small">x 1</span>
                                            </div>
                                            <button class="btn btn-link text-danger p-0 ms-2"><i class="fas fa-trash-alt"></i></button>
                                        </div>

                                        <div class="d-flex align-items-center mb-3">
                                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=50&q=80" alt="Pizza" class="rounded" style="width: 50px; height: 50px; object-fit: cover;">
                                            <div class="ms-3 flex-grow-1">
                                                <h6 class="mb-0 fs-6 fw-bold">Tasty Buzzed Pizza</h6>
                                                <span class="text-primary-custom fw-bold">99.000đ</span> <span class="text-muted small">x 2</span>
                                            </div>
                                            <button class="btn btn-link text-danger p-0 ms-2"><i class="fas fa-trash-alt"></i></button>
                                        </div>

                                    </div>
                                    <div class="d-flex justify-content-between border-top pt-2 mb-3 fw-bold">
                                        <span>Tổng cộng:</span>
                                        <span class="text-primary-custom">323.000đ</span>
                                    </div>
                                    <a href="ThanhToan.jsp" class="btn btn-custom w-100 text-center text-decoration-none">Thanh toán ngay</a>
                                </div>
                                <% } %>

                            </ul>
                        </div>

                        <div class="dropdown ms-2 position-relative">
                            <% if (!isLogged) { %>
                            <a href="#" class="text-primary-custom fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-center border-0 shadow" aria-labelledby="accountDropdown" style="width: 220px; border-radius: 10px;">
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangNhap.jsp"><i class="fas fa-sign-in-alt me-2 text-muted"></i> Đăng nhập</a></li>
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangKi.jsp"><i class="fas fa-user-plus me-2 text-muted"></i> Đăng ký</a></li>
                            </ul>

                            <% } else { %>
                            <a href="#" class="text-dark text-decoration-none d-flex align-items-center justify-content-center border border-2 border-primary rounded-circle" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 42px; height: 42px; padding: 2px; border-color: var(--primary-color) !important;">
                                <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=ea6a47&color=fff" alt="Avatar" class="rounded-circle w-100 h-100" style="object-fit: cover;">
                            </a>

                            <ul class="dropdown-menu dropdown-menu-center border-0 shadow-lg profile-dropdown" aria-labelledby="accountDropdown">

                                <div class="profile-header mx-2 my-1 p-2 rounded d-flex align-items-center">
                                    <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=ea6a47&color=fff" alt="Avatar" class="rounded-circle" style="width: 40px; height: 40px;">
                                    <div class="ms-3">
                                        <h6 class="mb-0 fw-bold fs-6">Ngô Phương Anh</h6>
                                    </div>
                                </div>

                                <div class="px-2 mb-2">
                                    <a href="#" class="btn w-100 fw-bold text-primary-custom" style="background-color: var(--bg-color); font-size: 0.9rem;">Xem tất cả trang cá nhân</a>
                                </div>

                                <li><hr class="dropdown-divider mb-2"></li>

                                <li class="px-2">
                                    <a class="dropdown-item profile-item d-flex align-items-center" href="#">
                                        <div class="icon-wrap"><i class="fas fa-clipboard-list"></i></div>
                                        <span class="fw-semibold">Đơn hàng của tôi</span>
                                    </a>
                                </li>
                                <li class="px-2">
                                    <a class="dropdown-item profile-item d-flex align-items-center" href="#">
                                        <div class="icon-wrap"><i class="fas fa-sign-out-alt"></i></div>
                                        <span class="fw-semibold">Đăng xuất</span>
                                    </a>
                                </li>
                            </ul>
                            <% } %>
                        </div>

                        <a class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center ms-2" 
                           data-bs-toggle="offcanvas" href="#offcanvasLeftMenu" role="button" aria-controls="offcanvasLeftMenu" 
                           style="width: 40px; height: 40px; border-radius: 50%;">
                            <i class="fa-solid fa-bars"></i>
                        </a>
                    </div>
                </div>
            </div>
        </nav>

        <div class="offcanvas offcanvas-start border-0 shadow" tabindex="-1" id="offcanvasLeftMenu" aria-labelledby="offcanvasLeftMenuLabel" style="width: 320px;">

            <div class="offcanvas-header border-bottom position-relative d-flex justify-content-end align-items-center" style="height: 75px;">
                <div class="d-flex justify-content-center mt-auto position-absolute start-50 translate-middle d-flex" style="gap: 8px;">
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                </div>
                <button type="button" class="btn-close shadow-none" data-bs-dismiss="offcanvas" aria-label="Close" style="z-index: 1;"></button>
            </div>

            <div class="offcanvas-body px-0 custom-scrollbar d-flex flex-column pb-0">

                <div class="side-menu-group px-4 mb-2 mt-2">
                    <h5 class="fw-bold text-dark mb-3 text-uppercase">Danh Mục Món Ăn</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="side-menu-link">Ưu Đãi <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Món Mới <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Combo 1 Người <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Combo Nhóm <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Gà Rán - Gà Quay <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Burger - Cơm - Mì Ý <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Thức Ăn Nhẹ <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Thức Uống & Tráng Miệng <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>

                <hr class="border-secondary opacity-10 mx-3 my-3">

                <div class="side-menu-group px-4 mb-2">
                    <h5 class="fw-bold text-dark mb-3 text-uppercase">Hỗ Trợ Khách Hàng</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="side-menu-link">Theo Dõi Đơn Hàng <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Liên Hệ Với Chúng Tôi <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>

                <hr class="border-secondary opacity-10 mx-3 my-3">

                <div class="side-menu-group px-4 mb-3">
                    <h5 class="fw-bold text-dark mb-3 text-uppercase">Chính Sách</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="side-menu-link">Chính Sách Hoạt Động <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Chính Sách & Quy Định <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#" class="side-menu-link">Chính Sách Bảo Mật Thông Tin <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>

                <hr class="border-secondary opacity-10 mx-3 my-3">

                <div class="d-flex justify-content-center mt-auto" style="gap: 8px;">
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                    <div style="width: 18px; height: 40px; background-color: var(--primary-color);"></div>
                </div>
            </div>
        </div>        

        <section class="hero-section" id="home" style="padding: 82px 0 0 0;">
            <div class="hero-banner-slider">
                <div class="position-relative">
                    <img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80" alt="Banner Burger" class="w-100" style="height: 600px; object-fit: cover;">

                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0,0,0,0.5);">
                        <div class="container text-center text-white">
                            <p class="section-subtitle text-warning mb-2 fs-5">Nhanh chóng & Ngon miệng</p>
                            <h1 class="display-3 fw-bold mb-4">Super Delicious <span class="text-primary-custom">Food!</span></h1>
                            <p class="lead mb-4 mx-auto" style="max-width: 700px;">Thưởng thức những món ăn nhanh nóng hổi, giòn rụm với hương vị bùng nổ. Giao hàng tận nơi trong vòng 30 phút.</p>
                            <a href="./ThucDon.jsp" class="btn btn-custom btn-lg rounded-pill px-5">Đi tới Thực đơn</a>
                        </div>
                    </div>
                </div>

                <div class="position-relative">
                    <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80" alt="Banner Pizza" class="w-100" style="height: 600px; object-fit: cover;">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0,0,0,0.5);">
                        <div class="container text-center text-white">
                            <p class="section-subtitle text-warning mb-2 fs-5">Hương vị Ý đích thực</p>
                            <h1 class="display-3 fw-bold mb-4">The Best <span class="text-primary-custom">Pizza!</span></h1>
                            <p class="lead mb-4 mx-auto" style="max-width: 700px;">Đế bánh giòn rụm, phô mai ngập tràn hòa quyện cùng các loại topping tươi ngon nhất. Đặt hàng ngay hôm nay!</p>
                            <a href="./ThucDon.jsp" class="btn btn-custom btn-lg rounded-pill px-5">Khám phá ngay</a>
                        </div>
                    </div>
                </div>

                <div class="position-relative">
                    <img src="https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80" alt="Banner Fresh" class="w-100" style="height: 600px; object-fit: cover;">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0,0,0,0.5);">
                        <div class="container text-center text-white">
                            <p class="section-subtitle text-warning mb-2 fs-5">Tươi ngon mỗi ngày</p>
                            <h1 class="display-3 fw-bold mb-4">Healthy & <span class="text-primary-custom">Fresh!</span></h1>
                            <p class="lead mb-4 mx-auto" style="max-width: 700px;">Nguyên liệu được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm cho bạn và gia đình.</p>
                            <a href="./ThucDon.jsp" class="btn btn-custom btn-lg rounded-pill px-5">Xem thực đơn</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="auth-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-8">
                        <div class="auth-card">
                            <h2 class="auth-title">Tạo Tài Khoản Mới</h2>
                            <p class="auth-subtitle">Trở thành thành viên của Foodie để nhận nhiều ưu đãi hấp dẫn!</p>

                            <form id="registerForm" action="./XuLyDangKy" method="POST" novalidate>
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <label for="fullname" class="form-label"><span class="text-danger me-1">*</span>Tên tài khoản (Họ và tên)</label>
                                        <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nhập họ và tên" required>
                                        <div class="invalid-feedback">Vui lòng nhập họ và tên của bạn.</div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <label for="username" class="form-label"><span class="text-danger me-1">*</span>Tên đăng nhập</label>
                                        <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập" required>
                                        <div class="invalid-feedback">Vui lòng nhập tên đăng nhập.</div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <label for="email" class="form-label"><span class="text-danger me-1">*</span>Địa chỉ Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email" required>
                                        <div class="invalid-feedback">Vui lòng nhập Email hợp lệ.</div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <label for="phone" class="form-label"><span class="text-danger me-1">*</span>Số điện thoại</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại" required>
                                        <div class="invalid-feedback">Vui lòng nhập SĐT hợp lệ (10 số).</div>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label for="address" class="form-label"><span class="text-danger me-1">*</span>Địa chỉ giao hàng</label>
                                    <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ" required>
                                    <div class="invalid-feedback">Vui lòng nhập địa chỉ giao hàng.</div>
                                </div>

                                <div class="row mb-4">
                                    <div class="col-md-6 mb-4 mb-md-0">
                                        <label for="password" class="form-label"><span class="text-danger me-1">*</span>Mật khẩu</label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu" required>
                                        <div class="invalid-feedback">Vui lòng nhập mật khẩu (tối thiểu 6 ký tự).</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="confirm_password" class="form-label"><span class="text-danger me-1">*</span>Nhập lại mật khẩu</label>
                                        <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Nhập lại mật khẩu" required>
                                        <div class="invalid-feedback">Mật khẩu nhập lại không khớp.</div>
                                    </div>
                                </div>

                                <div class="mb-4 d-flex align-items-start mt-4 pt-3 border-top">
                                    <span class="text-danger me-2" style="margin-top: 2px;">*</span>
                                    <div class="form-check ps-0 mb-0">
                                        <input class="form-check-input shadow-none border-secondary me-2 ms-0 float-none mt-1" type="checkbox" id="agreeTerms" required>
                                        <label class="form-check-label text-muted" for="agreeTerms" style="font-size: 0.95rem; line-height: 1.5;">
                                            Tôi đồng ý với các <a href="#" class="auth-link text-primary-custom text-decoration-none">Điều khoản dịch vụ</a> và <a href="#" class="auth-link text-primary-custom text-decoration-none">Chính sách bảo mật</a>
                                        </label>
                                        <div class="invalid-feedback">Bạn phải đồng ý với điều khoản để tiếp tục.</div>
                                    </div>
                                </div>

                                <div class="text-center mt-4">
                                    <button type="submit" class="btn text-white w-100 py-2 fs-5 mb-3 fw-bold" style="background-color: var(--primary-color); border-radius: 4px; border: none;">ĐĂNG KÝ</button>
                                </div>

                                <div class="text-center mt-2">
                                    <span class="text-muted">Đã có tài khoản?</span> 
                                    <a href="DangNhap.jsp" class="auth-link text-primary-custom fw-bold text-decoration-none">Đăng nhập tại đây</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="footer">
            <div class="container text-center">
                <h4 class="footer-title mb-4">Các thành viên trong nhóm:</h4>

                <div class="d-flex flex-column align-items-center gap-3">

                    <div class="member-item">
                        <div class="member-name">1. Ngô Phương Anh - 09/05/2005</div>
                    </div>

                    <div class="member-item">
                        <div class="member-name">2. Phùng Ngọc Bảo - 13/12/2005</div>
                    </div>

                    <div class="member-item">
                        <div class="member-name">3. Vũ Ngọc Hương Giang - 25/12/2005</div>
                    </div>
                </div>
            </div>
        </footer>

        <a href="#" class="back-top-btn active" aria-label="Back to top" data-back-top-btn>
            <i class="fas fa-chevron-up"></i>
        </a>

        <div class="toast-container position-fixed top-0 end-0 p-3 mt-5 pt-4" style="z-index: 1055;">
            <div id="wishlistToast" class="toast align-items-center text-white border-0" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="d-flex">
                    <div class="toast-body">

                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/index.js"></script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const form = document.getElementById('registerForm');

                form.addEventListener('submit', function (event) {
                    event.preventDefault();

                    let isValid = true;

                    const fullname = document.getElementById('fullname');
                    const username = document.getElementById('username');
                    const email = document.getElementById('email');
                    const phone = document.getElementById('phone');
                    const address = document.getElementById('address');
                    const password = document.getElementById('password');
                    const confirmPassword = document.getElementById('confirm_password');
                    const agreeTerms = document.getElementById('agreeTerms');

                    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    const phoneRegex = /^(0|\+84)[3|5|7|8|9][0-9]{8}$/;

                    const inputs = form.querySelectorAll('.form-control, .form-check-input');
                    inputs.forEach(input => input.classList.remove('is-invalid'));

                    if (fullname.value.trim() === '') {
                        fullname.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (username.value.trim() === '') {
                        username.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (email.value.trim() === '' || !emailRegex.test(email.value.trim())) {
                        email.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (phone.value.trim() === '' || !phoneRegex.test(phone.value.trim())) {
                        phone.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (address.value.trim() === '') {
                        address.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (password.value.trim().length < 6) {
                        password.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (confirmPassword.value === '' || confirmPassword.value !== password.value) {
                        confirmPassword.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (!agreeTerms.checked) {
                        agreeTerms.classList.add('is-invalid');
                        isValid = false;
                    }

                    if (isValid) {
                        alert('Đăng ký tài khoản thành công!');
                        form.reset();
                    }
                });
            });
        </script>
    </body>
</html>
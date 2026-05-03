<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Cá Nhân</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/Profile.css"/>
    </head>

    <body style="background-color: #f5f5f5;">
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
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-center border-0 shadow" aria-labelledby="accountDropdown" style="width: 220px; border-radius: 10px;">
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangNhap.jsp"><i class="fas fa-sign-in-alt me-2 text-muted"></i> Đăng nhập</a></li>
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangKi.jsp"><i class="fas fa-user-plus me-2 text-muted"></i> Đăng ký</a></li>
                            </ul>

                            <% } else { %>
                            <a href="#" class="text-dark text-decoration-none d-flex align-items-center justify-content-center rounded-circle active" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 42px; height: 42px; padding: 2px; border: 2px solid var(--primary-color);">
                                <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=ea6a47&color=fff" alt="Avatar" class="rounded-circle w-100 h-100" style="object-fit: cover; box-shadow: 0 0 0 2px var(--primary-color);">
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

        <section class="profile-section py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3">
                        <div class="d-flex align-items-center mb-4 pb-3 border-bottom">
                            <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=ea6a47&color=fff" alt="Avatar" class="rounded-circle border" style="width: 50px; height: 50px; object-fit: cover;">
                            <div class="ms-3">
                                <div class="fw-bold text-dark">pglegend95</div>
                            </div>
                        </div>

                        <div class="profile-sidebar">
                            <div class="mb-3">
                                <a href="#collapseAccount" data-bs-toggle="collapse" role="button" aria-expanded="true" class="list-group-item d-flex align-items-center text-secondary fw-semibold mb-2 text-decoration-none border-0 bg-transparent p-0">
                                    <div><i class="far fa-user text-primary-custom me-2 text-center" style="width: 24px;"></i>Tài khoản của tôi</div>
                                </a>

                                <div class="collapse show" id="collapseAccount">
                                    <div class="ms-4 ps-2 d-flex flex-column gap-2 mt-2">
                                        <a href="javascript:void(0)" class="list-group-item text-primary-custom active-custom text-decoration-none small border-0 bg-transparent p-0" data-target="tab-chi-tiet">Hồ sơ</a>
                                        <a href="javascript:void(0)" class="list-group-item text-secondary text-decoration-none small border-0 bg-transparent p-0" data-target="tab-dia-chi">Địa chỉ</a>
                                        <a href="javascript:void(0)" class="list-group-item text-secondary text-decoration-none small border-0 bg-transparent p-0" data-target="tab-mat-khau">Đổi mật khẩu</a>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3 mt-4">
                                <a href="javascript:void(0)" class="list-group-item d-flex align-items-center text-secondary fw-semibold mb-2 text-decoration-none border-0 bg-transparent p-0" data-target="tab-don-hang">
                                    <i class="fas fa-clipboard-list text-primary-custom me-2 text-center" style="width: 24px;"></i> Đơn Mua
                                </a>
                            </div>

                            <div class="mb-3 mt-4">
                                <a href="javascript:void(0)" class="list-group-item d-flex align-items-center text-secondary fw-semibold text-decoration-none border-0 bg-transparent p-0" data-target="tab-yeu-thich">
                                    <i class="fas fa-heart text-primary-custom me-2 text-center" style="width: 24px;"></i> Món ăn yêu thích
                                </a>
                            </div>

                            <div class="mb-3 mt-4">
                                <a href="javascript:void(0)" class="list-group-item d-flex align-items-center text-secondary fw-semibold text-decoration-none border-0 bg-transparent p-0" data-target="tab-voucher">
                                    <i class="fas fa-ticket-alt text-primary-custom me-2 text-center" style="width: 24px;"></i> Kho Voucher
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-9">
                        <div id="tab-chi-tiet" class="profile-tab-content">
                            <div class="shopee-form-container">
                                <div class="border-bottom pb-3 mb-4">
                                    <h5 class="fw-bold mb-1 text-dark fs-5">Hồ Sơ Của Tôi</h5>
                                    <p class="text-muted mb-0" style="font-size: 0.9rem;">Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
                                </div>

                                <form action="#" method="POST">
                                    <div class="row">
                                        <div class="col-md-8 pe-md-4">
                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Tên đăng nhập</div>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control shopee-input shadow-none bg-white" name="tenDangNhap" value="phuonganhngo95" required>
                                                </div>
                                            </div>

                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Họ và tên</div>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control shopee-input shadow-none" name="hoTen" value="Ngô Phương Anh" required>
                                                </div>
                                            </div>

                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Email</div>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control shopee-input shadow-none" name="email" value="phanhzu95@gmail.com" required>
                                                </div>
                                            </div>

                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Số điện thoại</div>
                                                <div class="col-sm-9">
                                                    <input type="tel" class="form-control shopee-input shadow-none" name="sdt" value="0912345678" required>
                                                </div>
                                            </div>

                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Giới tính</div>
                                                <div class="col-sm-9 d-flex gap-4">
                                                    <div class="form-check">
                                                        <input class="form-check-input shadow-none cursor-pointer" type="radio" name="gioiTinh" id="genderMale" value="nam">
                                                        <label class="form-check-label cursor-pointer" for="genderMale">Nam</label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input shadow-none cursor-pointer" type="radio" name="gioiTinh" id="genderFemale" value="nu" checked>
                                                        <label class="form-check-label cursor-pointer" for="genderFemale">Nữ</label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input shadow-none cursor-pointer" type="radio" name="gioiTinh" id="genderOther" value="khac">
                                                        <label class="form-check-label cursor-pointer" for="genderOther">Khác</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-4 align-items-center">
                                                <div class="col-sm-3 text-sm-end text-muted" style="font-size: 0.95rem;">Ngày sinh</div>
                                                <div class="col-sm-9">
                                                    <input type="date" class="form-control shopee-input shadow-none bg-white" name="ngaySinh" value="09/05/2005">
                                                </div>
                                            </div>

                                            <div class="row mt-4">
                                                <div class="col-sm-3"></div>
                                                <div class="col-sm-9">
                                                    <button type="submit" class="btn text-white px-4 py-2" style="background-color: var(--primary-color); border-radius: 2px;">Lưu Thay Đổi</button>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-4 border-start d-flex flex-column align-items-center justify-content-start pt-3">
                                            <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=ea6a47&color=fff" alt="Avatar" class="rounded-circle mb-4 border" style="width: 100px; height: 100px; object-fit: cover;">
                                            <input type="file" id="avatarInput" class="d-none" accept="image/jpeg, image/png">
                                            <label for="avatarInput" class="shopee-upload-btn mb-3" style="cursor: pointer;">Chọn Ảnh</label>
                                            <div class="text-muted text-center" style="font-size: 0.85rem;">
                                                Dụng lượng file tối đa 1 MB<br>
                                                Định dạng: .JPEG, .PNG
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div id="tab-dia-chi" class="profile-tab-content d-none">
                            <div class="shopee-form-container p-0">
                                <div class="border-bottom px-4 py-3 d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0 text-dark fs-5" style="font-weight: 500;">Địa Chỉ Của Tôi</h5>
                                    <button id="btn-show-add-address" class="btn text-white px-3 py-2 shadow-none" style="background-color: var(--primary-color); border-radius: 2px;">
                                        <i class="fas fa-plus me-2"></i>Thêm địa chỉ mới
                                    </button>
                                </div>

                                <div class="p-4">
                                    <h6 class="mb-3 text-dark" style="font-weight: 500; font-size: 1.1rem;">Địa chỉ</h6>

                                    <div id="address-list">
                                        <div class="border-bottom pb-4 mb-4 position-relative address-item d-flex justify-content-between align-items-start">
                                            <div class="pe-3">
                                                <div class="mb-1">
                                                    <span class="addr-name fw-bold text-dark fs-6 border-end pe-2 me-2">Ngô Phương Anh</span> 
                                                    <span class="addr-phone text-muted">(+84) 388 319 505</span>
                                                </div>
                                                <div class="addr-detail text-muted mb-2" style="font-size: 0.9rem;">
                                                    F2, Khu Tập Thể Trần Hưng Đạo Dốc Thọ Lão<br>
                                                    Phường Hai Bà Trưng, Thành phố Hà Nội
                                                </div>
                                                <span class="badge border border-danger text-danger bg-white rounded-1 fw-normal default-badge mt-1" style="padding: 4px 8px;">Mặc định</span>
                                            </div>

                                            <div class="d-flex flex-column justify-content-between align-items-end text-end" style="height: 100%; min-width: 150px;">
                                                <div class="mb-2">
                                                    <a href="javascript:void(0)" class="text-primary text-decoration-none me-2 btn-edit-address">Cập nhật</a>
                                                    <a href="javascript:void(0)" class="text-primary text-decoration-none btn-delete-address">Xóa</a>
                                                </div>
                                                <button class="btn btn-outline-secondary bg-white text-dark rounded-1 px-3 py-1 btn-set-default d-none" style="font-size: 0.85rem; border-color: #d9d9d9;">Thiết lập mặc định</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="form-add-address" class="mt-4 d-none p-4 border border-light rounded-3 shadow-sm bg-white">
                                        <h5 class="fw-bold mb-4 text-dark border-bottom pb-2" id="form-address-title">Thêm địa chỉ giao hàng</h5>
                                        <div class="row g-4">
                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Họ tên người nhận *</label>
                                                <input type="text" id="new-addr-name" class="form-control form-control-line" placeholder="Vd: Ngô Phương Anh" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Số điện thoại *</label>
                                                <input type="tel" id="new-addr-phone" class="form-control form-control-line" placeholder="Vd: (+84) 388 319 505" required>
                                            </div>
                                            <div class="col-12">
                                                <label class="form-label small text-muted mb-0">Địa chỉ cụ thể *</label>
                                                <textarea id="new-addr-detail" class="form-control form-control-line" placeholder="F2, Khu Tập Thể Trần Hưng Đạo..." rows="2" required></textarea>
                                            </div>
                                            <div class="col-12 mt-4 d-flex gap-2">
                                                <button type="button" id="btn-submit-address" class="btn text-white px-4 py-2" style="background-color: var(--primary-color); border-radius: 2px;">Hoàn thành</button>
                                                <button type="button" id="btn-cancel-address" class="btn btn-light px-4 py-2 text-dark border" style="border-radius: 2px;">Hủy thao tác</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
       
                        <div id="tab-mat-khau" class="profile-tab-content d-none">
                            <div class="shopee-form-container">
                                <div class="border-bottom pb-3 mb-4">
                                    <h5 class="fw-bold mb-1 text-dark fs-5">Đổi Mật Khẩu</h5>
                                    <p class="text-muted mb-0" style="font-size: 0.9rem;">Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác</p>
                                </div>
                                <form action="#" method="POST" style="max-width: 600px; margin: 0 auto;">
                                    <div class="row mb-4 align-items-center mt-4">
                                        <div class="col-sm-4 text-sm-end text-muted" style="font-size: 0.95rem;">Mật khẩu hiện tại</div>
                                        <div class="col-sm-8"><input type="password" class="form-control shopee-input shadow-none" name="oldPass" required></div>
                                    </div>
                                    <div class="row mb-4 align-items-center">
                                        <div class="col-sm-4 text-sm-end text-muted" style="font-size: 0.95rem;">Mật khẩu mới</div>
                                        <div class="col-sm-8"><input type="password" class="form-control shopee-input shadow-none" name="newPass" required></div>
                                    </div>
                                    <div class="row mb-4 align-items-center">
                                        <div class="col-sm-4 text-sm-end text-muted" style="font-size: 0.95rem;">Xác nhận mật khẩu</div>
                                        <div class="col-sm-8"><input type="password" class="form-control shopee-input shadow-none" name="confirmPass" required></div>
                                    </div>
                                    <div class="row mt-4">
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-8"><button type="submit" class="btn text-white px-5 py-2" style="background-color: var(--primary-color); border-radius: 2px;">Xác nhận</button></div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div id="tab-don-hang" class="profile-tab-content d-none">
                            <div class="shopee-form-container">
                                <div class="border-bottom pb-3 mb-4">
                                    <h5 class="fw-bold mb-1 text-dark fs-5">Đơn Hàng Của Tôi</h5>
                                    <p class="text-muted mb-0" style="font-size: 0.9rem;">Quản lý các đơn hàng bạn đã đặt mua</p>
                                </div>

                                <%
                                    // Đổi thành false để test trạng thái trống
                                    boolean hasOrders = true; 
                                %>

                                <% if (hasOrders) { %>
                                <div class="card border border-light shadow-sm mb-4 rounded-3 overflow-hidden">
                                    <div class="card-header bg-transparent border-bottom pt-3 pb-2 d-flex justify-content-between align-items-center">
                                        <span class="fw-bold text-dark">Mã đơn: #DH1029</span>
                                        <span class="badge bg-success rounded-pill px-3 py-2">Đã giao thành công</span>
                                    </div>

                                    <a href="OrderStatus.jsp" class="text-decoration-none text-dark d-block" style="cursor: pointer;">
                                        <div class="card-body" style="transition: background-color 0.2s;" onmouseover="this.style.backgroundColor = '#f8f9fa'" onmouseout="this.style.backgroundColor = 'transparent'">
                                            <div class="d-flex align-items-center">
                                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=80&q=80" alt="Burger" class="rounded border" style="width: 70px; height: 70px; object-fit: cover;">
                                                <div class="ms-3 flex-grow-1">
                                                    <h6 class="mb-1 fw-bold">Combo Burger Gà Giòn Cay</h6>
                                                    <small class="text-muted fw-semibold">Số lượng: 1</small>
                                                </div>
                                                <div class="ms-auto fw-bold" style="color: var(--primary-color);">125.000đ</div>
                                            </div>
                                        </div>
                                    </a>

                                </div>
                                <% } else { %>
                                <div class="text-center text-muted mt-5 d-flex flex-column align-items-center justify-content-center" style="min-height: 200px;">
                                    <i class="fas fa-receipt mb-3" style="font-size: 3rem; color: #ccc;"></i>
                                    <p class="text-dark">Chưa có đơn hàng</p>
                                </div>
                                <% } %>
                            </div>
                        </div>
                            
                        <div id="tab-yeu-thich" class="profile-tab-content d-none">
                            <div class="shopee-form-container">
                                <div class="border-bottom pb-3 mb-4">
                                    <h5 class="fw-bold mb-1 text-dark fs-5">Món Ăn Yêu Thích</h5>
                                    <p class="text-muted mb-0" style="font-size: 0.9rem;">Danh sách các món ăn bạn đã lưu lại</p>
                                </div>

                                <%
                                    // Đổi thành false để test trạng thái trống
                                    boolean hasFavorites = true; 
                                %>

                                <% if (hasFavorites) { %>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="card border border-light shadow-sm h-100 p-2 d-flex flex-row align-items-center" style="transition: all 0.2s;" onmouseover="this.classList.add('shadow')" onmouseout="this.classList.remove('shadow')">
                                            <a href="ChiTietMonAn.jsp" class="d-flex flex-row align-items-center flex-grow-1 text-decoration-none" style="cursor: pointer;">
                                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=80&q=80" class="rounded border" style="width: 80px; height: 80px; object-fit: cover;" alt="Pizza">
                                                <div class="ms-3">
                                                    <h6 class="fw-bold mb-1 text-dark" onmouseover="this.style.color = 'var(--primary-color)'" onmouseout="this.style.color = '#212529'">Tasty Buzzed Pizza</h6>
                                                    <div class="fw-bold" style="color: var(--primary-color);">99.000đ</div>
                                                </div>
                                            </a>

                                            <button class="btn btn-light text-danger rounded-circle p-2 shadow-sm border ms-2 d-flex align-items-center justify-content-center" 
                                                    style="width: 40px; height: 40px; z-index: 2;" title="Bỏ yêu thích"
                                                    onclick="const icon = this.querySelector('i');
                                                            if (icon.classList.contains('fas')) {
                                                                icon.classList.replace('fas', 'far');
                                                                this.classList.replace('text-danger', 'text-secondary');
                                                            } else {
                                                                icon.classList.replace('far', 'fas');
                                                                this.classList.replace('text-secondary', 'text-danger');
                                                            }">
                                                <i class="fas fa-heart"></i>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                                <% } else { %>
                                <div class="text-center text-muted mt-5 d-flex flex-column align-items-center justify-content-center" style="min-height: 200px;">
                                    <i class="fas fa-heart-broken mb-3" style="font-size: 3rem; color: #ccc;"></i>
                                    <p class="text-dark">Chưa có món ăn yêu thích</p>
                                </div>
                                <% } %>
                            </div>
                        </div>

                        <div id="tab-voucher" class="profile-tab-content d-none">
                            <div class="shopee-form-container p-0">
                                <div class="border-bottom px-4 py-3">
                                    <h5 class="fw-bold mb-1 text-dark fs-5">Kho Voucher</h5>
                                    <p class="text-muted mb-0" style="font-size: 0.9rem;">Danh sách các mã giảm giá và miễn phí vận chuyển bạn đã lưu</p>
                                </div>

                                <%
                                    // Đổi thành false để test trạng thái trống
                                    boolean hasVouchers = true; 
                                %>

                                <div class="p-4 bg-light" style="min-height: 300px;">
                                    <% if (hasVouchers) { %>
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <div class="card border-0 shadow-sm flex-row overflow-hidden" style="height: 110px; border-radius: 4px; border: 1px solid #e5e5e5 !important;">
                                                <div class="text-white d-flex flex-column justify-content-center align-items-center" style="width: 105px; background-color: var(--primary-color); border-right: 2px dashed #fff;">
                                                    <i class="fas fa-utensils fs-3 mb-1"></i>
                                                    <span class="small fw-bold">Giảm Giá</span>
                                                </div>
                                                <div class="p-3 flex-grow-1 d-flex flex-column justify-content-center bg-white position-relative">
                                                    <h6 class="fw-bold mb-1 text-dark text-truncate" style="font-size: 1rem;">Giảm 20K Cho Đơn...</h6>
                                                    <span class="text-muted mb-2" style="font-size: 0.8rem;">Đơn Tối Thiểu 100K</span>
                                                    <div class="d-flex justify-content-between align-items-center mt-auto">
                                                        <span class="text-danger fw-medium" style="font-size: 0.8rem;">HSD: 30.05.2026</span>
                                                        <a href="ThucDon.jsp" class="text-primary-custom fw-bold text-decoration-none" style="font-size: 0.9rem;">Dùng ngay</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <% } else { %>
                                    <div class="text-center text-muted d-flex flex-column align-items-center justify-content-center h-100 mt-4">
                                        <i class="fas fa-ticket-alt mb-3" style="font-size: 3rem; color: #ccc;"></i>
                                        <p class="text-dark mb-1">Bạn chưa có mã giảm giá nào</p>
                                        <a href="KhuyenMai.jsp" class="text-primary-custom text-decoration-none small">Săn mã ngay</a>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
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
    </body>
</html>
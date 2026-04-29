<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Cá Nhân - Foodie</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/Profile.css"/> </head>

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
                        <li class="nav-item"><a class="nav-link active" href="./TrangChu.jsp">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="./ThucDon.jsp">Thực đơn</a></li>
                        <li class="nav-item"><a class="nav-link" href="#promo">Khuyến mãi</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Liên hệ</a></li>
                    </ul>

                    <div class="d-flex align-items-center gap-3 mt-3 mt-lg-0 pb-3 pb-lg-0">
                        <form class="d-flex position-relative" role="search" action="#" method="GET">
                            <input class="form-control rounded-pill shadow-none pe-5 search-input" type="search" placeholder="Tìm món ăn..." aria-label="Search">
                            <button class="btn position-absolute end-0 top-50 translate-middle-y border-0 text-muted hover-primary" type="submit" style="background: transparent; z-index: 10;">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>

                        <div class="dropdown ms-2 position-relative" id="cartDropdownContainer">
                            <%
                                // =================================================================
                                // MOCK DATA (Dùng để test giao diện khi chưa có Backend)
                                // Hướng dẫn test: Đổi giá trị true/false ở 2 biến dưới đây để xem 3 trạng thái
                                // =================================================================
        
                                boolean isLogged = true;       // Đổi thành false để xem trạng thái CHƯA ĐĂNG NHẬP
                                boolean hasItemsInCart = true; // Đổi thành false để xem trạng thái GIỎ HÀNG TRỐNG
        
                                int cartSize = hasItemsInCart ? 3 : 0; // Số lượng hiển thị trên icon (Giả sử là 3 món)
                            %>

                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" 
                               id="cartDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" 
                               style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-shopping-cart"></i> 

                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger cart-badge" style="font-size: 0.6rem;">
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
                        <li><a href="#" class="side-menu-link">Góp Ý & Khiếu Nại</a></li>
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

        <section class="profile-section">
            <div class="container">
                <div class="row g-5">

                    <div class="col-lg-4">
                        <div class="card border-0 h-100 theme-sidebar position-relative overflow-hidden shadow-lg">
                            <div class="red-stripes">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>

                            <div class="card-body p-4 text-center mt-3">
                                <div class="position-relative d-inline-block mb-3">
                                    <img src="https://ui-avatars.com/api/?name=Ngo+Phuong+Anh&background=fff&color=000" alt="Avatar" class="rounded-circle avatar-preview" style="width: 100px; height: 100px; object-fit: cover; border: 3px solid #fff;">
                                    <input type="file" id="avatarInput" class="d-none" accept="image/*">
                                    <label for="avatarInput" class="btn btn-light position-absolute bottom-0 end-0 rounded-circle text-dark shadow-sm d-flex justify-content-center align-items-center" style="width: 32px; height: 32px; padding: 0; cursor: pointer; border: 1px solid #ccc;">
                                        <i class="fas fa-camera small"></i>
                                    </label>
                                </div>
                                <h2 class="fw-bold mb-1 text-white text-uppercase" style="font-family: 'Montserrat', sans-serif;">XIN CHÀO, NGÔ</h2>
                                <a href="#" class="text-white text-decoration-underline small mb-4 d-block" style="text-underline-offset: 4px;">Đăng xuất</a>
                            </div>

                            <div class="profile-sidebar list-group list-group-flush p-0 bg-transparent mb-4">
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-secondary border-0" data-target="tab-don-hang">Đơn hàng đã đặt</a>
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-secondary border-0" data-target="tab-yeu-thich">Đơn hàng yêu thích</a>
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-secondary border-0" data-target="tab-dia-chi">Địa chỉ của bạn</a>
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-white border-0 active-custom" data-target="tab-chi-tiet">Chi tiết tài khoản</a>
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-secondary border-0" data-target="tab-mat-khau">Đặt lại mật khẩu</a>
                                <a href="javascript:void(0)" class="list-group-item list-group-item-action bg-transparent text-secondary border-0" data-target="tab-xoa">Xóa tài khoản</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <div class="card border-0 bg-transparent h-100">
                            <div class="card-body p-2 p-md-4">

                                <div id="tab-chi-tiet" class="profile-tab-content">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">CHI TIẾT TÀI KHOẢN</h2>
                                    </div>
                                    <form action="#" method="POST">
                                        <div class="row g-3">
                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Tên người dùng *</label>
                                                <input type="text" class="form-control form-control-line" name="username" value="phuonganhngo95" required>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Họ và tên *</label>
                                                <input type="text" class="form-control form-control-line" name="hoTen" value="Ngô Phương Anh" required>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Số điện thoại *</label>
                                                <input type="tel" class="form-control form-control-line" name="sdt" required>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Địa chỉ email *</label>
                                                <input type="email" class="form-control form-control-line" name="email" value="phanhzu95@gmail.com" required>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Giới tính *</label>
                                                <select class="form-control form-control-line form-select shadow-none" name="gioiTinh" required>
                                                    <option value=""></option>
                                                    <option value="nam">Nam</option>
                                                    <option value="nu" selected>Nữ</option>
                                                    <option value="khac">Khác</option>
                                                </select>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0 d-block">Ngày sinh (tùy chọn)</label>
                                                <div class="row g-2 mt-0">
                                                    <div class="col-4">
                                                        <select class="form-control form-control-line form-select shadow-none px-1" name="ngaySinh">
                                                            <option value="">Ngày</option>
                                                            <option value="09" selected>09</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4">
                                                        <select class="form-control form-control-line form-select shadow-none px-1" name="thangSinh">
                                                            <option value="">Tháng</option>
                                                            <option value="05" selected>05</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4">
                                                        <select class="form-control form-control-line form-select shadow-none px-1" name="namSinh">
                                                            <option value="">Năm</option>
                                                            <option value="2005" selected>2005</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-12 mt-4">
                                                <button type="submit" class="btn btn-red-custom w-100 py-3 fw-bold rounded-pill text-white fs-5">Cập nhật tài khoản</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div id="tab-don-hang" class="profile-tab-content d-none">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">ĐƠN HÀNG ĐÃ ĐẶT</h2>
                                    </div>

                                    <%
                                        // MOCK DATA: Đổi thành false để xem giao diện lúc chưa có đơn hàng
                                        boolean hasOrderHistory = true; 
                                    %>

                                    <% if (hasOrderHistory) { %>
                                    <div class="order-list">
                                        <div class="card border border-light shadow-sm mb-4 rounded-3">
                                            <div class="card-header bg-transparent border-bottom pt-3 pb-2 d-flex justify-content-between align-items-center">
                                                <span class="fw-bold text-dark">Mã đơn: #DH1029</span>
                                                <span class="badge bg-success rounded-pill px-3 py-2">Đã giao thành công</span>
                                            </div>
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <img src="https://placehold.co/80x80/ffeedd/ea6a47?text=Burger" alt="Burger" class="rounded" style="width: 70px; height: 70px; object-fit: cover;">
                                                    <div class="ms-3 flex-grow-1">
                                                        <h6 class="mb-1 fw-bold">Combo Burger Gà Giòn Cay</h6>
                                                        <small class="text-muted d-block">Phân loại: Cay vừa, Kèm Pepsi</small>
                                                        <small class="text-muted fw-semibold">Số lượng: 1</small>
                                                    </div>
                                                    <div class="ms-auto fw-bold" style="color: #ea6a47;">125.000đ</div>
                                                </div>
                                                <div class="d-flex justify-content-between align-items-center bg-light p-2 rounded">
                                                    <span class="text-muted small"><i class="far fa-clock me-1"></i> Đặt lúc: 18:30 - 25/04/2026</span>
                                                    <span class="fw-bold">Tổng tiền: <span class="fs-5" style="color: #ea6a47;">125.000đ</span></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card border border-light shadow-sm mb-4 rounded-3">
                                            <div class="card-header bg-transparent border-bottom pt-3 pb-2 d-flex justify-content-between align-items-center">
                                                <span class="fw-bold text-dark">Mã đơn: #DH0984</span>
                                                <span class="badge bg-warning text-dark rounded-pill px-3 py-2">Đang xử lý</span>
                                            </div>
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <img src="https://placehold.co/80x80/ffeedd/ea6a47?text=Chicken" alt="Gà Rán" class="rounded" style="width: 70px; height: 70px; object-fit: cover;">
                                                    <div class="ms-3 flex-grow-1">
                                                        <h6 class="mb-1 fw-bold">3 Miếng Gà Rán Không Xương</h6>
                                                        <small class="text-muted d-block">Phân loại: Sốt tiêu đen</small>
                                                        <small class="text-muted fw-semibold">Số lượng: 2</small>
                                                    </div>
                                                    <div class="ms-auto fw-bold" style="color: #ea6a47;">180.000đ</div>
                                                </div>
                                                <div class="d-flex justify-content-between align-items-center bg-light p-2 rounded">
                                                    <span class="text-muted small"><i class="far fa-clock me-1"></i> Đặt lúc: Vừa xong</span>
                                                    <span class="fw-bold">Tổng tiền: <span class="fs-5" style="color: #ea6a47;">180.000đ</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <% } else { %>
                                    <div class="text-center text-muted mt-5 d-flex flex-column align-items-center justify-content-center" style="min-height: 250px;">
                                        <i class="fas fa-receipt mb-3" style="font-size: 4rem; color: #ccc;"></i>
                                        <h5 class="fw-bold text-dark">Chưa có đơn hàng nào</h5>
                                        <p>Bạn chưa thực hiện đơn hàng nào trên hệ thống.</p>
                                        <a href="ThucDon.jsp" class="btn btn-red-custom rounded-pill px-4 py-2 mt-2 text-white text-decoration-none fw-bold">Đặt món ngay</a>
                                    </div>
                                    <% } %>
                                </div>

                                <div id="tab-yeu-thich" class="profile-tab-content d-none">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">MÓN ĂN YÊU THÍCH</h2>
                                    </div>

                                    <%
                                        // MOCK DATA: Đổi thành true để xem giao diện lúc có món yêu thích
                                        boolean hasFavoriteItems = true; 
                                    %>

                                    <% if (hasFavoriteItems) { %>
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <div class="card border border-light shadow-sm h-100 p-2 d-flex flex-row align-items-center">
                                                <img src="https://placehold.co/80x80/ffeedd/ea6a47?text=Gà+Rán" class="rounded" style="width: 80px; height: 80px; object-fit: cover;" alt="Gà rán">
                                                <div class="ms-3 flex-grow-1">
                                                    <h6 class="fw-bold mb-1 text-dark">Gà Rán Giòn Không Xương</h6>
                                                    <div class="fw-bold" style="color: #ea6a47;">45.000đ</div>
                                                </div>
                                                <button class="btn btn-light text-danger rounded-circle p-2 shadow-sm border"><i class="fas fa-heart"></i></button>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="card border border-light shadow-sm h-100 p-2 d-flex flex-row align-items-center">
                                                <img src="https://placehold.co/80x80/ffeedd/ea6a47?text=Khoai" class="rounded" style="width: 80px; height: 80px; object-fit: cover;" alt="Khoai tây">
                                                <div class="ms-3 flex-grow-1">
                                                    <h6 class="fw-bold mb-1 text-dark">Khoai Tây Chiên Cỡ Lớn</h6>
                                                    <div class="fw-bold" style="color: #ea6a47;">30.000đ</div>
                                                </div>
                                                <button class="btn btn-light text-danger rounded-circle p-2 shadow-sm border"><i class="fas fa-heart"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <% } else { %>
                                    <div class="text-center text-muted mt-5 d-flex flex-column align-items-center justify-content-center" style="min-height: 250px;">
                                        <i class="fas fa-heart-broken mb-3" style="font-size: 4rem; color: #ccc;"></i>
                                        <h5 class="fw-bold text-dark">Chưa có món ăn yêu thích</h5>
                                        <p>Hãy thả tim cho những món bạn yêu thích để dễ dàng đặt lại sau nhé.</p>
                                        <a href="ThucDon.jsp" class="btn btn-outline-dark rounded-pill px-4 py-2 mt-2 fw-bold">Khám phá thực đơn</a>
                                    </div>
                                    <% } %>
                                </div>

                                <div id="tab-dia-chi" class="profile-tab-content d-none">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">ĐỊA CHỈ CỦA BẠN</h2>
                                    </div>

                                    <div id="address-list">
                                        <div class="p-4 border rounded mb-3 bg-light position-relative shadow-sm address-item">
                                            <span class="badge bg-danger position-absolute top-0 end-0 m-3 rounded-pill default-badge">Mặc định</span>
                                            <p class="mb-1 fw-bold fs-5 text-dark"><span class="addr-name">Ngô Phương Anh</span> <span class="fw-normal text-muted fs-6">| <span class="addr-phone">0123456789</span></span></p>
                                            <p class="mb-2 text-muted addr-detail">123 Phố X, Phường Y, Quận Z, Hà Nội</p>
                                            <div class="mt-2 d-flex gap-3">
                                                <a href="javascript:void(0)" class="text-primary text-decoration-none small fw-bold btn-edit-address">Cập nhật</a>
                                                <a href="javascript:void(0)" class="text-danger text-decoration-none small fw-bold btn-delete-address">Xóa</a>
                                                <a href="javascript:void(0)" class="text-secondary text-decoration-none small fw-bold btn-set-default d-none">Thiết lập mặc định</a>
                                            </div>
                                        </div>
                                    </div>

                                    <button id="btn-show-add-address" class="btn btn-outline-dark rounded-pill px-4 py-2 mt-2 fw-bold"><i class="fas fa-plus me-2"></i>Thêm địa chỉ mới</button>

                                    <div id="form-add-address" class="mt-4 d-none p-4 border border-light rounded-3 shadow-sm bg-white">
                                        <h5 class="fw-bold mb-4 text-dark border-bottom pb-2" id="form-address-title">Thêm địa chỉ giao hàng</h5>
                                        <div class="row g-4">
                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Họ tên người nhận *</label>
                                                <input type="text" id="new-addr-name" class="form-control form-control-line" placeholder="Vd: Ngô Phương Anh" required>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label small text-muted mb-0">Số điện thoại *</label>
                                                <input type="tel" id="new-addr-phone" class="form-control form-control-line" placeholder="Vd: 0987654321" required>
                                            </div>
                                            <div class="col-12">
                                                <label class="form-label small text-muted mb-0">Địa chỉ cụ thể *</label>
                                                <input type="text" id="new-addr-detail" class="form-control form-control-line" placeholder="Số nhà, Tên đường, Phường/Xã, Quận/Huyện, Tỉnh/Thành phố" required>
                                            </div>
                                            <div class="col-12 mt-4 d-flex gap-2">
                                                <button type="button" id="btn-submit-address" class="btn btn-red-custom px-4 py-2 fw-bold rounded-pill text-white shadow-sm">Hoàn thành</button>
                                                <button type="button" id="btn-cancel-address" class="btn btn-light px-4 py-2 fw-bold rounded-pill text-dark border">Hủy thao tác</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="tab-mat-khau" class="profile-tab-content d-none">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">ĐẶT LẠI MẬT KHẨU</h2>
                                    </div>
                                    <form action="#" method="POST">
                                        <div class="row g-4 mt-2">
                                            <div class="col-12">
                                                <label class="form-label small text-muted mb-0">Mật khẩu hiện tại *</label>
                                                <input type="password" class="form-control form-control-line" name="oldPass" required>
                                            </div>
                                            <div class="col-12">
                                                <label class="form-label small text-muted mb-0">Mật khẩu mới *</label>
                                                <input type="password" class="form-control form-control-line" name="newPass" required>
                                            </div>
                                            <div class="col-12">
                                                <label class="form-label small text-muted mb-0">Xác nhận mật khẩu mới *</label>
                                                <input type="password" class="form-control form-control-line" name="confirmPass" required>
                                            </div>
                                            <div class="col-12 mt-5">
                                                <button type="submit" class="btn btn-red-custom w-100 py-3 fw-bold rounded-pill text-white fs-5">Xác nhận đổi mật khẩu</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div id="tab-xoa" class="profile-tab-content d-none">
                                    <div class="mb-4">
                                        <h2 class="fw-bold mb-1 text-uppercase text-danger" style="font-family: 'Montserrat', sans-serif; font-weight: 800; font-size: 2rem;">XÓA TÀI KHOẢN</h2>
                                    </div>
                                    <div class="alert alert-danger p-4">
                                        <h5 class="fw-bold"><i class="fas fa-exclamation-triangle me-2"></i>Cảnh báo</h5>
                                        <p class="mb-0">Việc xóa tài khoản là vĩnh viễn và không thể khôi phục. Mọi thông tin cá nhân và lịch sử đơn hàng của bạn sẽ bị xóa hoàn toàn khỏi hệ thống.</p>
                                    </div>
                                    <button class="btn btn-danger rounded-pill px-4 py-2 mt-3 fw-bold">Xác nhận xóa tài khoản</button>
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

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/index.js"></script>
    </body>
</html>
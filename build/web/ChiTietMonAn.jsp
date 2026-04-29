<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi Tiết Món Ăn - Foodie</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/ChiTietMonAn.css"/>
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
                        <li class="nav-item"><a class="nav-link active" href="./ThucDon.jsp">Thực đơn</a></li>
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

                        <div class="dropdown ms-2 position-relative" id="cartDropdownContainer">
                            <%
                                // =================================================================
                                // MOCK DATA (Dùng để test giao diện khi chưa có Backend)
                                // Hướng dẫn test: Đổi giá trị true/false ở 2 biến dưới đây để xem 3 trạng thái
                                // =================================================================
        
                                boolean isLogged = false;       // Đổi thành false để xem trạng thái CHƯA ĐĂNG NHẬP
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

        <main class="container" style="margin-top: 200px; margin-bottom: 60px;">
            <div class="row g-5 product-detail-card p-4 p-md-5 bg-white shadow-sm">

                <div class="col-lg-6 pe-lg-5">
                    <div class="text-center mb-4">
                        <img src="https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Fried Chicken" class="img-fluid rounded-4" style="width: 100%; max-height: 420px; object-fit: contain;">
                    </div>

                    <h1 class="product-title mb-3">Gà Rán (1 Miếng)</h1>
                    <div class="price-current" id="total-price-display">36.000 đ</div>
                </div>

                <div class="col-lg-6">
                    <div class="d-flex justify-content-end mb-4">
                        <a href="ThucDon.jsp" class="btn btn-back text-decoration-none d-flex align-items-center gap-1">
                            <i class="fas fa-chevron-left fa-xs"></i> Quay lại
                        </a>
                    </div>

                    <div class="option-box shadow-sm">
                        <div class="option-header">
                            <h5 class="mb-0 fw-bold text-uppercase">Ngon hơn khi ăn với</h5>
                        </div>

                        <div class="option-body">
                            <div class="option-item addable-item" data-price="44000" data-max="99" style="cursor: pointer;">
                                <div class="d-flex align-items-center gap-3 user-select-none">
                                    <span class="item-qty fw-bold" data-qty="0" style="color: var(--primary-color); display: none; min-width: 25px;">0x</span>
                                    <img src="https://cdn-icons-png.flaticon.com/512/1046/1046786.png" alt="Shake Chicken Cheese" width="30">
                                    <span class="text-dark fw-medium">Shake Chicken Cheese</span>
                                </div>
                                <div class="d-flex align-items-center gap-3">
                                    <span class="text-muted fw-medium">+ 44.000 đ</span>
                                    <i class="fas fa-minus-circle text-secondary remove-icon" style="display: none; font-size: 1.2rem;" title="Giảm số lượng"></i>
                                </div>
                            </div>

                            <div class="option-item addable-item" data-price="36000" data-max="99" style="cursor: pointer;">
                                <div class="d-flex align-items-center gap-3 user-select-none">
                                    <span class="item-qty fw-bold" data-qty="0" style="color: var(--primary-color); display: none; min-width: 25px;">0x</span>
                                    <img src="https://cdn-icons-png.flaticon.com/512/1046/1046786.png" alt="Shake Potato Cheese" width="30">
                                    <span class="text-dark fw-medium">Shake Potato Cheese</span>
                                </div>
                                <div class="d-flex align-items-center gap-3">
                                    <span class="text-muted fw-medium">+ 36.000 đ</span>
                                    <i class="fas fa-minus-circle text-secondary remove-icon" style="display: none; font-size: 1.2rem;" title="Giảm số lượng"></i>
                                </div>
                            </div>

                            <div class="option-item addable-item" data-price="36000" data-max="99" style="cursor: pointer;">
                                <div class="d-flex align-items-center gap-3 user-select-none">
                                    <span class="item-qty fw-bold" data-qty="0" style="color: var(--primary-color); display: none; min-width: 25px;">0x</span>
                                    <img src="https://cdn-icons-png.flaticon.com/512/783/783002.png" alt="Cheese Stick" width="30">
                                    <span class="text-dark fw-medium">Cheese Stick</span>
                                </div>
                                <div class="d-flex align-items-center gap-3">
                                    <span class="text-muted fw-medium">+ 36.000 đ</span>
                                    <i class="fas fa-minus-circle text-secondary remove-icon" style="display: none; font-size: 1.2rem;" title="Giảm số lượng"></i>
                                </div>
                            </div>

                            <div class="option-item addable-item" data-price="28000" data-max="99" style="cursor: pointer;">
                                <div class="d-flex align-items-center gap-3 user-select-none">
                                    <span class="item-qty fw-bold" data-qty="0" style="color: var(--primary-color); display: none; min-width: 25px;">0x</span>
                                    <img src="https://cdn-icons-png.flaticon.com/512/3063/3063822.png" alt="Squid Ring" width="30">
                                    <span class="text-dark fw-medium">Squid Ring (3 Pcs)</span>
                                </div>
                                <div class="d-flex align-items-center gap-3">
                                    <span class="text-muted fw-medium">+ 28.000 đ</span>
                                    <i class="fas fa-minus-circle text-secondary remove-icon" style="display: none; font-size: 1.2rem;" title="Giảm số lượng"></i>
                                </div>
                            </div>

                            <div class="option-item addable-item" data-price="28000" data-max="99" style="cursor: pointer; border-bottom: none;">
                                <div class="d-flex align-items-center gap-3 user-select-none">
                                    <span class="item-qty fw-bold" data-qty="0" style="color: var(--primary-color); display: none; min-width: 25px;">0x</span>
                                    <img src="https://cdn-icons-png.flaticon.com/512/1182/1182138.png" alt="French Fries" width="30">
                                    <span class="text-dark fw-medium">French Fries</span>
                                </div>
                                <div class="d-flex align-items-center gap-3">
                                    <span class="text-muted fw-medium">+ 28.000 đ</span>
                                    <i class="fas fa-minus-circle text-secondary remove-icon" style="display: none; font-size: 1.2rem;" title="Giảm số lượng"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-5">
                        <div class="d-flex align-items-center gap-3 mb-3 mb-sm-0">
                            <span class="text-dark fw-bold" style="font-size: 1.1rem;">Quantity</span>
                            <div class="d-flex align-items-center rounded overflow-hidden border">
                                <button class="qty-btn" id="btn-minus"><i class="fas fa-minus fa-xs"></i></button>
                                <input type="text" class="qty-input" id="qty-input" value="1" readonly>
                                <button class="qty-btn" id="btn-plus"><i class="fas fa-plus fa-xs"></i></button>
                            </div>
                        </div>
                        <button class="btn-add-cart-main shadow-sm"><i class="fas fa-shopping-cart me-2"></i> Add to cart</button>
                    </div>
                </div>

            </div>
        </main>

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
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/index.js"></script>
    </body>
</html>
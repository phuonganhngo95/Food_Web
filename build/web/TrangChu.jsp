<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Chủ - Foodie</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
        <link rel="stylesheet" href="./css/TrangChu.css">
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
                        <li class="nav-item"><a class="nav-link active" href="./TrangChu.jsp">Trang chủ</a></li>
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
                               style="width: 40px; height: 40px; border-radius: 50%;">
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

        <section class="menu-section" id="menu">
            <div class="container">
                <div class="text-center mb-4">
                    <p class="section-subtitle">Thực Đơn Của Chúng Tôi</p>
                    <h2 class="display-5 fw-bold">Các Món Ăn <span class="text-primary-custom">Best Seller</span></h2>
                </div>

                <ul class="nav nav-pills justify-content-center mb-5 menu-tabs" id="menu-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="pills-all-tab" data-bs-target="#pills-all" type="button" role="tab">Tất cả</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-burger-tab" data-bs-target="#pills-burger" type="button" role="tab">Burger</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-pizza-tab" data-bs-target="#pills-pizza" type="button" role="tab">Pizza</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-drink-tab" data-bs-target="#pills-drink" type="button" role="tab">Đồ uống</button>
                    </li>
                </ul>

                <div class="tab-pane fade show active" id="pills-all" role="tabpanel">
                    <div class="position-relative px-2 px-md-4">
                        <button class="btn btn-custom-arrow menu-prev arrow-left"><i class="fas fa-chevron-left"></i></button>
                        <div class="menu-slider mx-n2">
                            <div class="px-3 py-4" data-category="burger">
                                <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-15%</span>
                                    <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                        <i class="far fa-heart fs-4 text-secondary"></i>
                                    </button>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a>
                                    </h4>
                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                    <div class="d-flex justify-content-between align-items-end">
                                        <span class="price text-start">
                                            <del class="text-muted fs-6 me-2">150.000đ</del><br>
                                            <span class="text-danger fw-bold">125.000đ</span>
                                        </span>
                                        <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                            Thêm <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4" data-category="burger">
                                <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-15%</span>
                                    <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                        <i class="far fa-heart fs-4 text-secondary"></i>
                                    </button>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a>
                                    </h4>
                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                    <div class="d-flex justify-content-between align-items-end">
                                        <span class="price text-start">
                                            <del class="text-muted fs-6 me-2">150.000đ</del><br>
                                            <span class="text-danger fw-bold">125.000đ</span>
                                        </span>
                                        <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                            Thêm <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4" data-category="burger">
                                <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-15%</span>
                                    <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                        <i class="far fa-heart fs-4 text-secondary"></i>
                                    </button>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a>
                                    </h4>
                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                    <div class="d-flex justify-content-between align-items-end">
                                        <span class="price text-start">
                                            <del class="text-muted fs-6 me-2">150.000đ</del><br>
                                            <span class="text-danger fw-bold">125.000đ</span>
                                        </span>
                                        <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                            Thêm <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4" data-category="drink">
                                <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-15%</span>
                                    <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                        <i class="far fa-heart fs-4 text-secondary"></i>
                                    </button>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a>
                                    </h4>
                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                    <div class="d-flex justify-content-between align-items-end">
                                        <span class="price text-start">
                                            <del class="text-muted fs-6 me-2">150.000đ</del><br>
                                            <span class="text-danger fw-bold">125.000đ</span>
                                        </span>
                                        <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                            Thêm <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4" data-category="pizza">
                                <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-15%</span>
                                    <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                        <i class="far fa-heart fs-4 text-secondary"></i>
                                    </button>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a>
                                    </h4>
                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                    <div class="d-flex justify-content-between align-items-end">
                                        <span class="price text-start">
                                            <del class="text-muted fs-6 me-2">150.000đ</del><br>
                                            <span class="text-danger fw-bold">125.000đ</span>
                                        </span>
                                        <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                            Thêm <i class="fas fa-cart-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-custom-arrow menu-next arrow-right"><i class="fas fa-chevron-right"></i></button>
                    </div>
                </div>
                <div class="text-center pt-3">
                    <a href="ThucDon.jsp" class="btn btn-outline-custom px-4 py-2 rounded-pill fw-bold fs-6">
                        Xem Tất Cả<i class="fas fa-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </section>

        <section class="about-promo-section py-5" id="about">
            <div class="container">
                <div class="row align-items-center mb-5">
                    <div class="col-lg-6 text-center mb-5 mb-lg-0 px-lg-4">
                        <img src="https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Về Chúng Tôi - Foodie" class="about-img shadow-lg">
                    </div>
                    <div class="col-lg-6 ps-lg-5">
                        <p class="section-subtitle mb-2">Về Chúng Tôi</p>
                        <h2 class="display-5 fw-bold mb-4">Khám Phá Hương Vị Burger & Pizza <span class="text-primary-custom">Tuyệt Hảo Nhất!</span></h2>
                        <p class="text-muted mb-4 lead" style="font-size: 1rem;">Chúng tôi mang đến trải nghiệm ẩm thực độc đáo với các nguyên liệu tươi ngon nhất. Từ những chiếc burger đậm đà đến những khay pizza giòn rụm, tất cả đều được chế biến bằng cả đam mê.</p>

                        <ul class="list-unstyled about-list">
                            <li class="d-flex align-items-center mb-3">
                                <i class="fas fa-check-circle fs-5 me-3 text-primary-custom"></i> 
                                <span class="fw-semibold text-dark">Thực phẩm ngon & Tốt cho sức khỏe</span>
                            </li>
                            <li class="d-flex align-items-center mb-3">
                                <i class="fas fa-check-circle fs-5 me-3 text-primary-custom"></i> 
                                <span class="fw-semibold text-dark">Dịch vụ phục vụ nhanh chóng</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="row g-4 justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="promo-card d-flex align-items-center p-4 shadow-sm border-0">
                            <div class="rounded-circle d-flex justify-content-center align-items-center me-3 icon-box">
                                <i class="fas fa-truck fs-3"></i>
                            </div>
                            <div>
                                <h4 class="fw-bold fs-5 mb-1">Giao Hàng Miễn Phí</h4>
                                <p class="text-muted mb-0 small">Cho đơn hàng trên 100k</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="promo-card d-flex align-items-center p-4 shadow-sm border-0">
                            <div class="rounded-circle d-flex justify-content-center align-items-center me-3 icon-box">
                                <i class="fas fa-utensils fs-3"></i>
                            </div>
                            <div>
                                <h4 class="fw-bold fs-5 mb-1">Thực Phẩm Tươi Sạch</h4>
                                <p class="text-muted mb-0 small">Cam kết an toàn 100%</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="promo-card d-flex align-items-center p-4 shadow-sm border-0">
                            <div class="rounded-circle d-flex justify-content-center align-items-center me-3 icon-box">
                                <i class="fas fa-headset fs-3"></i>
                            </div>
                            <div>
                                <h4 class="fw-bold fs-5 mb-1">Hỗ Trợ 24/7</h4>
                                <p class="text-muted mb-0 small">Sẵn sàng phục vụ bạn</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="banner-section text-center position-relative">
            <div style="background: rgba(0,0,0,0.7); position: absolute; top:0; left:0; width:100%; height:100%;"></div>
            <div class="container position-relative" style="z-index: 1;">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <h2 class="display-4 fw-bold text-white mb-4">Chúng Tôi Có Những Chiếc Burger <span class="text-primary-custom">Chất Lượng Tuyệt Hảo Nhất!</span></h2>
                        <p class="text-light mb-5 fs-5">Hãy đến và chia sẻ những khoảnh khắc vui vẻ bên những món ăn ngon miệng cùng gia đình và người thân.</p>
                        <a href="./ThucDon.jsp" class="btn btn-custom btn-lg">Đặt Hàng Ngay <i class="fas fa-shopping-cart ms-2"></i></a>
                    </div>
                </div>
            </div>
        </section>

        <section class="flash-sale-section py-5" id="promo" style="background-color: #ffffff;">
            <div class="container">
                <div class="text-center mb-5">
                    <p class="section-subtitle text-danger"><i class="fas fa-fire me-2"></i>Khuyến Mãi Khủng</p>
                    <h2 class="display-5 fw-bold mb-0">Siêu <span class="text-danger">Giảm Giá</span></h2>
                </div>

                <div class="row g-4">
                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a>
                            </h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2">198.000đ</del><br>
                                    <span class="text-danger fw-bold">99.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a>
                            </h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2">198.000đ</del><br>
                                    <span class="text-danger fw-bold">99.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a>
                            </h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2">198.000đ</del><br>
                                    <span class="text-danger fw-bold">99.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a>
                            </h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2">198.000đ</del><br>
                                    <span class="text-danger fw-bold">99.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center mt-5">
                    <a href="ThucDon.jsp" class="btn btn-outline-custom rounded-pill px-4 py-2 fw-bold fs-6">
                        Xem Tất Cả <i class="fas fa-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </section>

        <section class="new-dish-section py-5" style="background-color: var(--bg-color);">
            <div class="container">
                <div class="text-center mb-5">
                    <p class="section-subtitle text-danger">Hương Vị Mới</p>
                    <h2 class="display-5 fw-bold">Món <span class="text-danger">Mới Ra Mắt</span></h2>
                </div>

                <div class="row g-4 justify-content-center">
                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">NEW</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Burger Bò Phô Mai Kép</a>
                            </h4>
                            <p class="text-muted small mb-3">Công thức độc quyền mới</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2" style="opacity: 0;">&nbsp;</del><br>
                                    <span class="text-danger fw-bold">75.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">NEW</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Pizza Hải Sản Phô Mai</a>
                            </h4>
                            <p class="text-muted small mb-3">Tươi ngon từ biển cả</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2" style="opacity: 0;">&nbsp;</del><br>
                                    <span class="text-danger fw-bold">165.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">NEW</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Drink" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Gà Rán Phô Mai Kéo Sợi</a>
                            </h4>
                            <p class="text-muted small mb-3">Giòn rụm, béo ngậy</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2" style="opacity: 0;">&nbsp;</del><br>
                                    <span class="text-danger fw-bold">85.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25"> 
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">NEW</span>
                            <button class="btn btn-wishlist position-absolute top-0 end-0 m-3 p-2 border-0 bg-transparent shadow-none" style="z-index: 5;">
                                <i class="far fa-heart fs-4 text-secondary"></i>
                            </button>
                            <img src="https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Salad" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1">
                                <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Salad Cá Ngồi Dầu Mè</a>
                            </h4>
                            <p class="text-muted small mb-3">Thanh mát, tốt cho sức khỏe</p>
                            <div class="d-flex justify-content-between align-items-end">
                                <span class="price text-start">
                                    <del class="text-muted fs-6 me-2" style="opacity: 0;">&nbsp;</del><br>
                                    <span class="text-danger fw-bold">45.000đ</span>
                                </span>
                                <button class="btn btn-add-cart action-btn btn-outline-custom rounded-pill px-4 py-2 fw-bold d-flex align-items-center gap-2" style="font-size: 0.9rem;">
                                    Thêm <i class="fas fa-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-5">
                    <a href="ThucDon.jsp" class="btn btn-outline-custom rounded-pill px-4 py-2 fw-bold fs-6">
                        Xem Tất Cả <i class="fas fa-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </section>

        <section class="coupon-section py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-6">
                        <div class="coupon-card large-coupon p-4 p-lg-5 position-relative overflow-hidden h-100 d-flex align-items-center">
                            <div class="position-relative z-1" style="max-width: 60%;">
                                <h3 class="fw-bold text-white mb-2 fs-3">50% Off Now!</h3>
                                <h2 class="fw-bold text-white mb-3 lh-sm" style="font-size: 2.2rem;">Discount For Delicious Tasty Burgers!</h2>
                                <p class="mb-4 text-white opacity-75">Sale off 50% only this week</p>
                                <a href="#menu" class="btn btn-coupon shadow-none">Order Now</a>
                            </div>
                            <div class="position-absolute food-img-wrapper" style="right: -15%; top: 10%; width: 60%; height: 80%;">
                                <img src="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Food" class="rounded-circle shadow-lg w-100 h-100" style="object-fit: cover;">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="row g-4 h-100">
                            <div class="col-md-6">
                                <div class="coupon-card small-coupon red-bg p-4 position-relative overflow-hidden h-100">
                                    <div class="position-relative z-1" style="max-width: 70%;">
                                        <h3 class="fw-bold text-white mb-1 fs-4">Delicious Pizza</h3>
                                        <p class="mb-3 text-white opacity-75 small">50% off Now</p>
                                        <a href="#menu" class="btn btn-coupon btn-sm">Order Now</a>
                                    </div>
                                    <div class="position-absolute food-img-wrapper" style="right: -25%; bottom: -20%; width: 80%; height: 110%;">
                                        <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="rounded-circle shadow w-100 h-100" style="object-fit: cover;">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="coupon-card small-coupon green-bg p-4 position-relative overflow-hidden h-100">
                                    <div class="position-relative z-1" style="max-width: 70%;">
                                        <h3 class="fw-bold text-white mb-1 fs-4">American Burgers</h3>
                                        <p class="mb-3 text-white opacity-75 small">50% off Now</p>
                                        <a href="#menu" class="btn btn-coupon btn-sm">Order Now</a>
                                    </div>
                                    <div class="position-absolute food-img-wrapper" style="right: -20%; bottom: -15%; width: 75%; height: 90%;">
                                        <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="rounded-circle shadow w-100 h-100" style="object-fit: cover;">
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="coupon-card medium-coupon black-bg p-4 position-relative overflow-hidden h-100 d-flex align-items-center">
                                    <div class="position-absolute food-img-wrapper" style="left: -10%; top: -20%; width: 45%; height: 140%;">
                                        <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80" alt="Pizza" class="rounded-circle shadow-lg w-100 h-100" style="object-fit: cover;">
                                    </div>
                                    <div class="position-relative z-1 ms-auto text-start ps-4" style="width: 60%;">
                                        <h3 class="fw-bold text-white mb-2 fs-2 lh-sm">Tasty Buzzed Pizza</h3>
                                        <p class="mb-3 text-white opacity-75" style="font-size: 0.95rem;">Sale off 50% only this week</p>
                                        <a href="#menu" class="btn btn-coupon">Order Now</a>
                                    </div>
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
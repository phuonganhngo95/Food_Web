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
                <a class="navbar-brand logo" href="#home">
                    <img src="./img/logo.png" alt="Logo" style="height: 80px; width: auto; object-fit: contain; transition: transform 0.3s ease;">
                </a>

                <button class="navbar-toggler border-0 shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <i class="fas fa-bars fs-2 text-dark"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto fw-bold">
                        <li class="nav-item"><a class="nav-link active" href="#home">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="#menu">Thực đơn</a></li>
                        <li class="nav-item"><a class="nav-link" href="#promo">Khuyến mãi</a></li> <li class="nav-item"><a class="nav-link" href="#about">Giới thiệu</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Liên hệ</a></li>
                    </ul>

                    <div class="d-flex align-items-center gap-3 mt-3 mt-lg-0 pb-3 pb-lg-0">
                        <form class="d-flex position-relative" role="search" action="#" method="GET">
                            <input class="form-control rounded-pill shadow-none pe-5 search-input" type="search" placeholder="Tìm món ăn..." aria-label="Search">
                            <button class="btn position-absolute end-0 top-50 translate-middle-y border-0 text-muted hover-primary" type="submit" style="background: transparent; z-index: 10;">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>

                        <a href="#" class="text-dark fs-5 position-relative ms-2 icon-action">
                            <i class="fas fa-shopping-cart"></i> <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style="font-size: 0.6rem;">3</span>
                        </a>

                        <div class="dropdown ms-2 position-relative">
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-center border-0" aria-labelledby="accountDropdown">
                                <li><a class="dropdown-item py-2" href="#"><i class="fas fa-sign-in-alt me-2 text-muted"></i> Đăng nhập</a></li>
                                <li><a class="dropdown-item py-2" href="#"><i class="fas fa-user-plus me-2 text-muted"></i> Đăng ký</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item py-2" href="#"><i class="fas fa-clipboard-list me-2 text-muted"></i> Đơn hàng</a></li>
                                <li><a class="dropdown-item py-2 text-danger" href="#"><i class="fas fa-sign-out-alt me-2"></i> Thoát</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <section class="hero-section" id="home">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <p class="section-subtitle mb-2">Nhanh chóng & Ngon miệng</p>
                        <h1 class="hero-title mb-4">Super Delicious Food in <span class="text-primary-custom">Town!</span></h1>
                        <p class="lead mb-4">Thưởng thức những món ăn nhanh nóng hổi, giòn rụm với hương vị bùng nổ. Giao hàng tận nơi trong vòng 30 phút. Đặt hàng ngay!</p>
                        <a href="#menu" class="btn btn-custom btn-lg">Khám phá thực đơn</a>
                    </div>
                    <div class="col-lg-6 text-center">
                        <img src="./img/dishes/food1.jpg" alt="Hero Burger" class="hero-img rounded-circle shadow-lg" style="object-fit: cover; height: 500px; width: 500px;">
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
                        <button class="nav-link active" id="pills-all-tab" data-bs-toggle="pill" data-bs-target="#pills-all" type="button" role="tab">Tất cả</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-burger-tab" data-bs-toggle="pill" data-bs-target="#pills-burger" type="button" role="tab">Burger</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-pizza-tab" data-bs-toggle="pill" data-bs-target="#pills-pizza" type="button" role="tab">Pizza</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-drink-tab" data-bs-toggle="pill" data-bs-target="#pills-drink" type="button" role="tab">Đồ uống</button>
                    </li>
                </ul>

                <div class="tab-pane fade show active" id="pills-all" role="tabpanel">
                    <div class="position-relative px-2 px-md-4">

                        <button class="btn btn-custom-arrow menu-prev arrow-left"><i class="fas fa-chevron-left"></i></button>
                        <div class="menu-slider mx-n2">

                            <div class="px-3 py-4">
                                <div class="food-card position-relative"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <div class="text-warning mb-2"></div>

                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">
                                            Beef Burger Classic
                                        </a>
                                    </h4>

                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>

                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="price"><del class="text-muted fs-6 me-1">150.000d</del> 125.000đ</span>
                                        <button class="btn btn-add-cart rounded-circle"><i class="fas fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4">
                                <div class="food-card position-relative"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <div class="text-warning mb-2"></div>

                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">
                                            Beef Burger Classic
                                        </a>
                                    </h4>

                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>

                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="price"><del class="text-muted fs-6 me-1">150.000d</del> 125.000đ</span>
                                        <button class="btn btn-add-cart rounded-circle"><i class="fas fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4">
                                <div class="food-card position-relative"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <div class="text-warning mb-2"></div>

                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">
                                            Beef Burger Classic
                                        </a>
                                    </h4>

                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>

                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="price"><del class="text-muted fs-6 me-1">150.000d</del> 125.000đ</span>
                                        <button class="btn btn-add-cart rounded-circle"><i class="fas fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4">
                                <div class="food-card position-relative"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <div class="text-warning mb-2"></div>

                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">
                                            Beef Burger Classic
                                        </a>
                                    </h4>

                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>

                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="price"><del class="text-muted fs-6 me-1">150.000d</del> 125.000đ</span>
                                        <button class="btn btn-add-cart rounded-circle"><i class="fas fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="px-3 py-4">
                                <div class="food-card position-relative"> 
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                    <div class="text-warning mb-2"></div>

                                    <h4 class="fw-bold fs-5 mb-1">
                                        <a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">
                                            Beef Burger Classic
                                        </a>
                                    </h4>

                                    <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>

                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="price"><del class="text-muted fs-6 me-1">150.000d</del> 125.000đ</span>
                                        <button class="btn btn-add-cart rounded-circle"><i class="fas fa-plus"></i></button>
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
                        <a href="#menu" class="btn btn-custom btn-lg">Đặt Hàng Ngay <i class="fas fa-shopping-cart ms-2"></i></a>
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
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a></h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price"><del class="text-muted fs-6 me-2">198.000đ</del><br><span class="text-danger fw-bold">99.000đ</span></span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a></h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price"><del class="text-muted fs-6 me-2">198.000đ</del><br><span class="text-danger fw-bold">99.000đ</span></span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a></h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price"><del class="text-muted fs-6 me-2">198.000đ</del><br><span class="text-danger fw-bold">99.000đ</span></span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Tasty Buzzed Pizza</a></h4>
                            <p class="text-muted small mb-3">Áp dụng mã Coupon</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price"><del class="text-muted fs-6 me-2">198.000đ</del><br><span class="text-danger fw-bold">99.000đ</span></span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
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
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm">NEW</span>
                            <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Burger Bò Phô Mai Kép</a></h4>
                            <p class="text-muted small mb-3">Công thức độc quyền mới</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">75.000đ</span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm">NEW</span>
                            <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Pizza Hải Sản Phô Mai</a></h4>
                            <p class="text-muted small mb-3">Tươi ngon từ biển cả</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">165.000đ</span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm">NEW</span>
                            <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Drink" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Gà Rán Phô Mai Kéo Sợi</a></h4>
                            <p class="text-muted small mb-3">Giòn rụm, béo ngậy</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">85.000đ</span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="food-card position-relative h-100 border border-danger border-opacity-25">
                            <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2 shadow-sm">NEW</span>
                            <img src="https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Salad" class="food-img rounded-circle shadow-sm">
                            <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Salad Cá Ngồi Dầu Mè</a></h4>
                            <p class="text-muted small mb-3">Thanh mát, tốt cho sức khỏe</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">45.000đ</span>
                                <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
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
            <div class="container">
                <div class="row g-4 mb-5">
                    <div class="col-lg-3 col-md-6">
                        <a class="navbar-brand logo d-block mb-3" href="#">
                            <img src="./img/logo.png" alt="Fast Food Logo" style="height: 80px; width: auto; object-fit: contain;">
                        </a>
                        <p class="text-muted">Đem đến cho bạn những trải nghiệm ẩm thực nhanh gọn, ngon miệng và an toàn nhất cho gia đình.</p>
                        <div class="mt-4">
                            <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <h5 class="footer-title fw-bold">Liên Kết Hữu Ích</h5>
                        <ul class="list-unstyled text-muted">
                            <li class="mb-2"><a href="#" class="text-muted text-decoration-none hover-primary">Về Chúng Tôi</a></li>
                            <li class="mb-2"><a href="#" class="text-muted text-decoration-none hover-primary">Thực Đơn</a></li>
                            <li class="mb-2"><a href="#" class="text-muted text-decoration-none hover-primary">Chính sách giao hàng</a></li>
                            <li class="mb-2"><a href="#" class="text-muted text-decoration-none hover-primary">Liên hệ</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <h5 class="footer-title fw-bold">Thông Tin Liên Hệ</h5>
                        <ul class="list-unstyled text-muted">
                            <li class="mb-3"><i class="fas fa-map-marker-alt text-primary-custom me-2"></i> 298 Đ. Cầu Diễn, Bắc Từ Liêm, Hà Nội</li>
                            <li class="mb-3"><i class="fas fa-phone-alt text-primary-custom me-2"></i> +84 123 456 789</li>
                            <li class="mb-3"><i class="fas fa-envelope text-primary-custom me-2"></i> info@foodie.com</li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <h5 class="footer-title fw-bold">Đăng Ký Nhận Tin</h5>
                        <p class="text-muted">Nhận ngay mã giảm giá 20% khi đăng ký email.</p>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control shadow-none" placeholder="Email của bạn...">
                            <button class="btn btn-custom rounded-end" type="button"><i class="fas fa-paper-plane"></i></button>
                        </div>
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
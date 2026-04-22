<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thực Đơn - Foodie</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/ThucDon.css">
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
                        <li class="nav-item"><a class="nav-link active" href="./TrangChu.jsp">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="./ThucDon.jsp">Thực đơn</a></li>
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

        <section class="menu-section pt-4" id="menu" style="background-color: #fffafa;">
            <div class="container">
                <ul class="nav nav-pills justify-content-center mb-5 menu-tabs" id="menu-filter">
                    <li class="nav-item"><button class="nav-link active filter-btn" data-filter="all">Tất cả</button></li>
                    <li class="nav-item"><button class="nav-link filter-btn" data-filter="burger">Burger</button></li>
                    <li class="nav-item"><button class="nav-link filter-btn" data-filter="pizza">Pizza</button></li>
                    <li class="nav-item"><button class="nav-link filter-btn" data-filter="chicken">Gà Rán</button></li>
                    <li class="nav-item"><button class="nav-link filter-btn" data-filter="drink">Đồ uống</button></li>
                </ul>

                <div class="mx-auto" style="max-width: 1050px;">
                    <div class="row g-4 justify-content-center" id="menu-grid">

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2">-15%</span>
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Beef Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Beef Burger Classic</a></h4>
                                <p class="text-muted small mb-3">Thịt bò, Phô mai, Rau thơm</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price"><del class="text-muted fs-6 me-1">150k</del> 125.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Chicken Burger</a></h4>
                                <p class="text-muted small mb-3">Gà giòn, Sốt mayo</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">85.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2">NEW</span>
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Double Cheese Burger</a></h4>
                                <p class="text-muted small mb-3">Phô mai nhân đôi</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">140.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Fish Burger</a></h4>
                                <p class="text-muted small mb-3">Cá biển, Sốt Tartar</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">90.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Spicy BBQ Burger</a></h4>
                                <p class="text-muted small mb-3">Vị cay nồng, Sốt BBQ</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">110.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="burger">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;"> 
                                <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Burger" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Vegan Burger</a></h4>
                                <p class="text-muted small mb-3">Dành cho người ăn chay</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">95.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="pizza">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <span class="badge bg-danger position-absolute top-0 start-0 m-3 p-2 shadow-sm fs-6">-50%</span>
                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Seafood Pizza</a></h4>
                                <p class="text-muted small mb-3">Hải sản tươi sống</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price"><del class="text-muted fs-6 me-2">198k</del><br><span class="text-danger fw-bold">99.000đ</span></span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="pizza">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Margherita Pizza</a></h4>
                                <p class="text-muted small mb-3">Phô mai Mozzarella, Cà chua</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">120.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="pizza">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Pepperoni Pizza</a></h4>
                                <p class="text-muted small mb-3">Xúc xích Ý cay nồng</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">150.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="pizza">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Hawaiian Pizza</a></h4>
                                <p class="text-muted small mb-3">Dứa thanh mát, Dăm bông</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">145.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="pizza">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Pizza" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Meat Lover Pizza</a></h4>
                                <p class="text-muted small mb-3">Ngập tràn các loại thịt</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">180.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="chicken">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Chicken" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Gà Rán Truyền Thống</a></h4>
                                <p class="text-muted small mb-3">Giòn rụm, mọng nước bên trong</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">35.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="chicken">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <span class="badge bg-success position-absolute top-0 start-0 m-3 p-2">HOT</span>
                                <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Chicken" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Gà Phủ Sốt Cay Hàn</a></h4>
                                <p class="text-muted small mb-3">Sốt cay ngọt đậm đà</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">40.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="chicken">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Chicken" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Combo 3 Miếng Gà</a></h4>
                                <p class="text-muted small mb-3">Tiết kiệm hơn</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">99.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="chicken">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Chicken" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Cánh Gà BBQ (6 miếng)</a></h4>
                                <p class="text-muted small mb-3">Thơm lừng mùi khói</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">85.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="drink">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Drink" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Trà Đào Cam Sả</a></h4>
                                <p class="text-muted small mb-3">Thanh mát, giải nhiệt</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">45.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="drink">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Drink" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Coca Cola Tươi</a></h4>
                                <p class="text-muted small mb-3">Size L, Kèm đá mát lạnh</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">20.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 food-item" data-category="drink">
                            <div class="food-card position-relative h-100 border border-danger border-opacity-25 mx-auto" style="max-width: 280px; width: 100%;">
                                <img src="https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" alt="Drink" class="food-img rounded-circle shadow-sm">
                                <h4 class="fw-bold fs-5 mb-1"><a href="ChiTietMonAn.jsp" class="text-dark text-decoration-none stretched-link food-title">Nước Ép Trái Cây Mix</a></h4>
                                <p class="text-muted small mb-3">Táo, Thơm, Cà Rốt nguyên chất</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="price">55.000đ</span>
                                    <button class="btn btn-add-cart rounded-circle action-btn"><i class="fas fa-plus"></i></button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div> <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center mt-5" id="pagination">
                    </ul>
                </nav>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/index.js"></script>
    </body>
</html>
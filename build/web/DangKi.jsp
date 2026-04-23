<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng Ký - Foodie</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="./css/TrangChu.css">
        <link rel="stylesheet" href="./css/Form.css"/>
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
                        <li class="nav-item"><a class="nav-link" href="./TrangChu.jsp#promo">Khuyến mãi</a></li> 
                        <li class="nav-item"><a class="nav-link" href="./TrangChu.jsp#about">Giới thiệu</a></li>
                        <li class="nav-item"><a class="nav-link" href="./TrangChu.jsp#contact">Liên hệ</a></li>
                    </ul>
                    <div class="d-flex align-items-center gap-3 mt-3 mt-lg-0 pb-3 pb-lg-0">
                        <form class="d-flex position-relative" role="search" action="#" method="GET">
                            <input class="form-control rounded-pill shadow-none pe-5 search-input" type="search" placeholder="Tìm món ăn..." aria-label="Search">
                            <button class="btn position-absolute end-0 top-50 translate-middle-y border-0 text-muted hover-primary" type="submit" style="background: transparent; z-index: 10;">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                        <a href="#" class="text-dark fs-5 position-relative ms-2 icon-action">
                            <i class="fas fa-shopping-cart"></i> <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style="font-size: 0.6rem;">0</span>
                        </a>
                        <div class="dropdown ms-2 position-relative">
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-center border-0" aria-labelledby="accountDropdown">
                                <li><a class="dropdown-item py-2" href="DangNhap.jsp"><i class="fas fa-sign-in-alt me-2 text-muted"></i> Đăng nhập</a></li>
                                <li><a class="dropdown-item py-2 active" href="DangKy.jsp"><i class="fas fa-user-plus me-2 text-muted"></i> Đăng ký</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <section class="auth-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-8">
                        <div class="auth-card">
                            <h2 class="auth-title">Tạo Tài Khoản Mới</h2>
                            <p class="auth-subtitle">Trở thành thành viên của Foodie để nhận nhiều ưu đãi hấp dẫn!</p>

                            <form action="#" method="POST">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="fullname" class="form-label">Tên tài khoản (Họ và tên)</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-id-card"></i></span>
                                            <input type="text" class="form-control border-start-0" id="fullname" name="fullname" placeholder="Nhập họ tên của bạn..." required>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="username" class="form-label">Tên đăng nhập</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-user"></i></span>
                                            <input type="text" class="form-control border-start-0" id="username" name="username" placeholder="Nhập tên đăng nhập..." required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="email" class="form-label">Địa chỉ Email</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-envelope"></i></span>
                                            <input type="email" class="form-control border-start-0" id="email" name="email" placeholder="example@gmail.com" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="phone" class="form-label">Số điện thoại</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-phone-alt"></i></span>
                                            <input type="tel" class="form-control border-start-0" id="phone" name="phone" placeholder="Nhập số điện thoại..." required>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="address" class="form-label">Địa chỉ giao hàng</label>
                                    <div class="input-group">
                                        <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-map-marker-alt"></i></span>
                                        <input type="text" class="form-control border-start-0" id="address" name="address" placeholder="Nhập địa chỉ nhận hàng chi tiết..." required>
                                    </div>
                                </div>

                                <div class="row mb-4">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label for="password" class="form-label">Mật khẩu</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-lock"></i></span>
                                            <input type="password" class="form-control border-start-0" id="password" name="password" placeholder="Tạo mật khẩu..." required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="confirm_password" class="form-label">Nhập lại mật khẩu</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-end-0 text-muted"><i class="fas fa-lock"></i></span>
                                            <input type="password" class="form-control border-start-0" id="confirm_password" name="confirm_password" placeholder="Xác nhận mật khẩu..." required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-check mb-4">
                                    <input class="form-check-input" type="checkbox" id="agreeTerms" required>
                                    <label class="form-check-label text-muted" for="agreeTerms" style="font-size: 0.9rem;">
                                        Tôi đồng ý với các <a href="#" class="auth-link">Điều khoản dịch vụ</a> và <a href="#" class="auth-link">Chính sách bảo mật</a>
                                    </label>
                                </div>

                                <button type="submit" class="btn btn-custom w-100 py-2 fs-5 mb-3">Tạo Tài Khoản</button>

                                <div class="text-center mt-3">
                                    <span class="text-muted">Đã có tài khoản?</span> 
                                    <a href="DangNhap.jsp" class="auth-link">Đăng nhập tại đây</a>
                                </div>
                            </form>
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

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
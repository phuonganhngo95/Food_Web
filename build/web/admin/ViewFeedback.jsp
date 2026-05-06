<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Xem Phản Hồi</title>

        <link rel="icon" href="../img/logo.png" type="image/png">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <link rel="stylesheet" href="../css/TrangChu.css">
        <link rel="stylesheet" href="../css/admin/index.css">

        <style>
            body {
                background-color: #f8f9fc;
            }

            .form-control-custom:focus {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 0.25rem rgba(234, 106, 71, 0.25);
            }

            .pagination-custom .page-link {
                color: var(--primary-color);
                border-color: #dee2e6;
            }
            .pagination-custom .page-link:hover {
                background-color: var(--bg-color);
                color: var(--primary-hover);
            }
            .pagination-custom .page-item.active .page-link {
                z-index: 3;
                color: #fff;
                background-color: var(--primary-color);
                border-color: var(--primary-color);
            }

            .card-title-custom {
                font-family: var(--ff-heading);
                font-weight: 500;
            }

            .table-bordered th, .table-bordered td {
                border-color: #eaeaea;
                vertical-align: middle;
            }

            .rating-stars {
                color: #ffb703;
                font-size: 0.9rem;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container align-items-center">
                <a class="navbar-brand logo" href="../TrangChu.jsp">
                    <img src="../img/logo.png" alt="Logo" style="height: 80px; width: auto; object-fit: contain; transition: transform 0.3s ease;">
                </a>

                <button class="navbar-toggler border-0 shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <i class="fas fa-bars fs-2 text-dark"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto fw-bold">
                        <li class="nav-item"><a class="nav-link" href="../admin/index.jsp">Trang chủ</a></li>
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

        <section class="admin-dashboard-section" style="margin-top: 50px; padding-bottom: 50px;">
            <div class="container-fluid px-4 px-lg-5">
                <div class="card shadow-sm border-0" style="border-radius: 4px;">
                    <div class="card-header bg-white text-center py-3" style="border-bottom: 1px solid #eaeaea;">
                        <h3 class="mb-0 card-title-custom text-dark">Quản Lý Liên Hệ & Thắc Mắc</h3>
                    </div>

                    <div class="card-body p-4">
                        <div class="d-flex flex-wrap justify-content-between align-items-center mb-4 gap-3">
                            <a href="./index.jsp" class="text-decoration-none fw-bold" style="color: var(--primary-color); font-size: 1.05rem;">
                                <i class="fas fa-arrow-left me-1"></i> Trở về
                            </a>

                            <form action="#" method="GET" class="d-flex" style="width: 100%; max-width: 400px;">
                                <input type="text" class="form-control form-control-custom me-2 rounded-0" placeholder="Tìm kiếm theo tên hoặc SĐT...">
                                <button type="button" class="btn btn-custom px-4 rounded-0">Tìm kiếm</button>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle mb-0">
                                <thead class="bg-light text-dark text-center" style="font-family: var(--ff-heading); font-size: 0.95rem;">
                                    <tr>
                                        <th scope="col" class="py-3">STT</th>
                                        <th scope="col" class="py-3 text-start">Thông Tin Khách Hàng</th>
                                        <th scope="col" class="py-3 text-start">Vấn Đề</th>
                                        <th scope="col" class="py-3 text-start" style="width: 30%;">Nội Dung Phản Hồi</th>
                                        <th scope="col" class="py-3">File Đính Kèm</th>
                                        <th scope="col" class="py-3">Trạng Thái</th>
                                        <th scope="col" class="py-3">Hành Động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="fw-bold text-center">1</td>
                                        <td>
                                            <div class="fw-bold">Ngô Phương Anh</div>
                                            <div class="small text-muted"><i class="fas fa-envelope me-1"></i>nguyenvana@gmail.com</div>
                                            <div class="small text-muted"><i class="fas fa-phone-alt me-1"></i>0912345678</div>
                                        </td>
                                        <td class="fw-medium text-danger">Đơn hàng</td>
                                        <td>
                                            <p class="mb-1" style="white-space: pre-wrap; word-break: break-word;">Tôi đã đặt món nhưng đột nhiên bị hủy</p>
                                            <small class="text-muted d-block"><i>Gửi lúc: 06/05/2026 14:30</i></small>
                                        </td>
                                        <td class="text-center">
                                            <a href="#" class="text-decoration-none text-primary" title="Xem ảnh bill_momo.jpg">
                                                <i class="fas fa-file-image fs-4"></i>
                                            </a>
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-warning text-dark px-3 py-2 rounded-pill">Chưa xử lý</span>
                                        </td>
                                        <td class="text-center">
                                            <div class="d-flex justify-content-center gap-2">
                                                <button class="btn btn-sm text-white" style="background-color: var(--primary-color); border-radius: 4px;" data-bs-toggle="modal" data-bs-target="#replyModal">
                                                    <i class="fas fa-reply me-1"></i>Trả lời
                                                </button>
                                                <button class="btn btn-danger btn-sm" style="border-radius: 4px;"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="fw-bold text-center">2</td>
                                        <td>
                                            <div class="fw-bold">Vũ Ngọc Hương Giang</div>
                                            <div class="small text-muted"><i class="fas fa-envelope me-1"></i>thibtran99@gmail.com</div>
                                            <div class="small text-muted"><i class="fas fa-phone-alt me-1"></i>0987654321</div>
                                        </td>
                                        <td class="fw-medium text-info">Chất lượng món ăn</td>
                                        <td>
                                            <p class="mb-1" style="white-space: pre-wrap; word-break: break-word;">Gà rán hôm nay giao đến bị nguội</p>
                                            <small class="text-muted d-block"><i>Gửi lúc: 05/05/2026 19:15</i></small>
                                        </td>
                                        <td class="text-center text-muted">
                                            Không có
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-success px-3 py-2 rounded-pill">Đã phản hồi</span>
                                        </td>
                                        <td class="text-center">
                                            <div class="d-flex justify-content-center gap-2">
                                                <button class="btn btn-sm btn-outline-secondary" style="border-radius: 4px;" data-bs-toggle="modal" data-bs-target="#replyModal">
                                                    <i class="fas fa-eye me-1"></i>Xem lại
                                                </button>
                                                <button class="btn btn-danger btn-sm" style="border-radius: 4px;"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="modal fade" id="replyModal" tabindex="-1" aria-labelledby="replyModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow">
                    <div class="modal-header bg-light border-bottom-0">
                        <h5 class="modal-title fw-bold" id="replyModalLabel" style="color: var(--primary-color);">
                            <i class="fas fa-envelope-open-text me-2"></i>Chi Tiết Phản Hồi & Trả Lời
                        </h5>
                        <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-4">
                        <div class="bg-light p-3 rounded mb-4 border">
                            <div class="row mb-2">
                                <div class="col-sm-3 text-muted fw-semibold">Người gửi:</div>
                                <div class="col-sm-9 fw-bold">Nguyễn Văn A (0912345678)</div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-sm-3 text-muted fw-semibold">Chủ đề:</div>
                                <div class="col-sm-9 text-danger fw-medium">Đơn hàng & Thanh toán</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 text-muted fw-semibold">Nội dung:</div>
                                <div class="col-sm-9">
                                    Tôi đã thanh toán qua Momo nhưng đơn hàng vẫn báo chưa thanh toán. Trừ tiền rồi nhưng không thấy đơn ở đâu. Nhờ shop kiểm tra gấp!
                                </div>
                            </div>
                        </div>

                        <form id="sendReplyForm">
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Gửi đến Email:</label>
                                <input type="email" class="form-control rounded-0 bg-light" value="nguyenvana@gmail.com" readonly>
                            </div>
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Tiêu đề Email:</label>
                                <input type="text" class="form-control form-control-custom rounded-0" value="[Fast Food] Phản hồi về vấn đề Đơn hàng & Thanh toán">
                            </div>
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Nội dung trả lời:</label>
                                <textarea class="form-control form-control-custom rounded-0" rows="5" placeholder="Nhập nội dung email phản hồi cho khách hàng..."></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer border-top-0">
                        <button type="button" class="btn btn-secondary rounded-0 px-4" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn text-white rounded-0 px-4" style="background-color: var(--primary-color);">
                            <i class="fas fa-paper-plane me-2"></i>Gửi Phản Hồi
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container text-center">
                <h4 class="footer-title mb-4">Các thành viên trong nhóm:</h4>
                <div class="d-flex flex-column align-items-center gap-3">
                    <div class="member-item"><div class="member-name">1. Ngô Phương Anh - 09/05/2005</div></div>
                    <div class="member-item"><div class="member-name">2. Phùng Ngọc Bảo - 13/12/2005</div></div>
                    <div class="member-item"><div class="member-name">3. Vũ Ngọc Hương Giang - 25/12/2005</div></div>
                </div>
            </div>
        </footer>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
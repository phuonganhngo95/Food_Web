<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thêm Danh Mục</title>

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

            .form-control.is-invalid, .form-select.is-invalid {
                transition: none !important;
            }
            .invalid-feedback {
                animation: none !important;
                transition: none !important;
            }

            .form-control-custom:focus:not(.is-invalid), .form-select-custom:focus:not(.is-invalid) {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 0.25rem rgba(234, 106, 71, 0.25);
            }
            .form-check-input-custom:checked {
                background-color: var(--primary-color);
                border-color: var(--primary-color);
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
                color: #333;
                font-weight: 500;
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
            <div class="container-xl">
                <div class="row g-4">
                    <div class="col-lg-4">
                        <div class="card shadow-sm border-0" style="border-radius: 4px;">
                            <div class="card-header bg-white text-center py-3" style="border-bottom: 1px solid #eaeaea;">
                                <h4 class="mb-0 card-title-custom">Add Category</h4>
                            </div>

                            <div class="card-body p-4">
                                <form id="addCategoryForm" action="AddCategoryServlet" method="POST" enctype="multipart/form-data" novalidate>
                                    <div class="mb-3">
                                        <label for="categoryName" class="form-label text-dark" style="font-size: 0.95rem;">Enter Category</label>
                                        <input type="text" class="form-control form-control-custom" id="categoryName" name="categoryName" required>
                                        <div class="invalid-feedback">Vui lòng nhập tên danh mục.</div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label text-dark d-block" style="font-size: 0.95rem;">Status</label>
                                        <div class="form-check mb-1">
                                            <input class="form-check-input form-check-input-custom" type="radio" name="categoryStatus" id="statusActive" value="active" checked>
                                            <label class="form-check-label" for="statusActive">Active</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input form-check-input-custom" type="radio" name="categoryStatus" id="statusInactive" value="inactive">
                                            <label class="form-check-label" for="statusInactive">Inactive</label>
                                        </div>
                                    </div>

                                    <div class="mb-4">
                                        <label for="categoryImage" class="form-label text-dark" style="font-size: 0.95rem;">Upload Image</label>
                                        <input class="form-control form-control-custom" type="file" id="categoryImage" name="categoryImage" accept="image/*" style="font-size: 0.9rem;" required>
                                        <div class="invalid-feedback">Vui lòng chọn hình ảnh danh mục.</div>
                                    </div>

                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-custom py-2" style="font-size: 1.05rem; border-radius: 4px;">Save</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <div class="card shadow-sm border-0" style="border-radius: 4px; height: 100%;">
                            <div class="card-header bg-white text-center py-3" style="border-bottom: 1px solid #eaeaea;">
                                <h4 class="mb-0 card-title-custom">Category Details</h4>
                            </div>

                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-hover align-middle mb-0">
                                        <thead class="bg-light">
                                            <tr>
                                                <th scope="col" class="ps-4 py-3">Sl No</th>
                                                <th scope="col" class="py-3">Category</th>
                                                <th scope="col" class="py-3">Status</th>
                                                <th scope="col" class="py-3">Image</th>
                                                <th scope="col" class="pe-4 py-3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="border-top-0">
                                            <tr>
                                                <td class="ps-4 fw-bold">1</td>
                                                <td>Burger</td>
                                                <td>true</td>
                                                <td>
                                                    <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&auto=format&fit=crop&w=50&q=80" alt="Burger" class="rounded shadow-sm" style="width: 50px; height: 50px; object-fit: cover;">
                                                </td>
                                                <td class="pe-4">
                                                    <button type="button" class="btn btn-sm text-white me-1 btn-edit-category" 
                                                            style="background-color: var(--primary-color);" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#editCategoryModal">
                                                        <i class="fas fa-edit me-1"></i>Edit
                                                    </button>
                                                    <a href="#" class="btn btn-danger btn-sm"><i class="fas fa-trash-alt me-1"></i>Delete</a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="ps-4 fw-bold">2</td>
                                                <td>Pizza</td>
                                                <td>true</td>
                                                <td>
                                                    <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&auto=format&fit=crop&w=50&q=80" alt="Pizza" class="rounded shadow-sm" style="width: 50px; height: 50px; object-fit: cover;">
                                                </td>
                                                <td class="pe-4">
                                                    <button type="button" class="btn btn-sm text-white me-1 btn-edit-category" 
                                                            style="background-color: var(--primary-color);" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#editCategoryModal">
                                                        <i class="fas fa-edit me-1"></i>Edit
                                                    </button>
                                                    <a href="#" class="btn btn-danger btn-sm"><i class="fas fa-trash-alt me-1"></i>Delete</a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="ps-4 fw-bold">3</td>
                                                <td>Thức uống</td>
                                                <td>false</td>
                                                <td>
                                                    <img src="https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-4.0.3&auto=format&fit=crop&w=50&q=80" alt="Drink" class="rounded shadow-sm" style="width: 50px; height: 50px; object-fit: cover;">
                                                </td>
                                                <td class="pe-4">
                                                    <button type="button" class="btn btn-sm text-white me-1 btn-edit-category" 
                                                            style="background-color: var(--primary-color);" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#editCategoryModal">
                                                        <i class="fas fa-edit me-1"></i>Edit
                                                    </button>
                                                    <a href="#" class="btn btn-danger btn-sm"><i class="fas fa-trash-alt me-1"></i>Delete</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="card-footer bg-white d-flex justify-content-between align-items-center py-3 border-top" style="border-color: #eaeaea !important;">
                                <span class="text-muted" style="font-size: 0.95rem;">Total Category: 3</span>

                                <nav aria-label="Page navigation">
                                    <ul class="pagination pagination-custom mb-0">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
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

        <div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow">
                    <div class="modal-header bg-light border-bottom-0">
                        <h5 class="modal-title card-title-custom fw-bold" id="editCategoryModalLabel" style="color: var(--primary-color);">
                            <i class="fas fa-edit me-2"></i>Chỉnh Sửa Danh Mục
                        </h5>
                        <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-4">
                        <form id="editCategoryFormModal">
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Tên Danh Mục (Category Name)</label>
                                <input type="text" class="form-control form-control-custom rounded-0" id="editCategoryName" placeholder="Nhập tên danh mục">
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label fw-semibold">Hình ảnh (Chọn file)</label>
                                    <input type="file" class="form-control form-control-custom rounded-0" id="editCategoryImage" accept="image/*">

                                    <div class="mt-3 text-start">
                                        <img id="categoryImagePreview" src="" alt="Preview" class="img-thumbnail d-none shadow-sm" style="width: 100%; height: 250px; object-fit: cover; border-radius: 6px;">
                                    </div>
                                </div>
                                <div class="col-md-6 mt-3 mt-md-0">
                                    <label class="form-label fw-semibold d-block">Trạng thái (Status)</label>
                                    <div class="d-flex align-items-center mt-2">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="editCategoryStatus" id="editStatusActive" value="true" style="cursor: pointer;">
                                            <label class="form-check-label" for="editStatusActive">Active</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="editCategoryStatus" id="editStatusInactive" value="false" style="cursor: pointer;">
                                            <label class="form-check-label" for="editStatusInactive">Inactive</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer border-top-0">
                        <button type="button" class="btn btn-secondary rounded-0 px-4" data-bs-dismiss="modal">Hủy</button>
                        <button type="button" class="btn text-white rounded-0 px-4" style="background-color: var(--primary-color);">Lưu Thay Đổi</button>
                    </div>
                </div>
            </div>
        </div>

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
        <script src="../js/index.js"></script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const form = document.getElementById('addCategoryForm');
                form.addEventListener('submit', function (event) {
                    event.preventDefault();
                    let isValid = true;
                    const name = document.getElementById('categoryName');
                    const image = document.getElementById('categoryImage');
                    const inputs = form.querySelectorAll('.form-control, .form-select');
                    inputs.forEach(input => input.classList.remove('is-invalid'));

                    if (name.value.trim() === '') {
                        name.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (image.files.length === 0) {
                        image.classList.add('is-invalid');
                        isValid = false;
                    }
                    if (isValid) {
                        alert('Đã lưu danh mục thành công!');
                        form.reset();
                    }
                });

                const editCategoryButtons = document.querySelectorAll('.btn-edit-category');
                const categoryImagePreview = document.getElementById('categoryImagePreview');
                const editCategoryImageInput = document.getElementById('editCategoryImage');

                editCategoryButtons.forEach(button => {
                    button.addEventListener('click', function () {
                        const tr = this.closest('tr');

                        const categoryName = tr.querySelector('td:nth-child(2)').innerText.trim();
                        const statusStr = tr.querySelector('td:nth-child(3)').innerText.trim();
                        const imgSrc = tr.querySelector('td:nth-child(4) img').src;

                        document.getElementById('editCategoryName').value = categoryName;

                        if (statusStr === 'true') {
                            document.getElementById('editStatusActive').checked = true;
                        } else {
                            document.getElementById('editStatusInactive').checked = true;
                        }

                        editCategoryImageInput.value = ''; // Reset file input
                        if (imgSrc) {
                            categoryImagePreview.src = imgSrc;
                            categoryImagePreview.classList.remove('d-none');
                        } else {
                            categoryImagePreview.classList.add('d-none');
                        }
                    });
                });

                editCategoryImageInput.addEventListener('change', function (event) {
                    const file = event.target.files[0];
                    if (file) {
                        const reader = new FileReader();
                        reader.onload = function (e) {
                            categoryImagePreview.src = e.target.result;
                            categoryImagePreview.classList.remove('d-none');
                        };
                        reader.readAsDataURL(file);
                    }
                });

            });
        </script>
    </body>
</html>
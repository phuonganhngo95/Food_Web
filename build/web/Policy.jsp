<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chính Sách & Quy Định - Foodie</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Montserrat:wght@500;600;700;800&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

        <link rel="stylesheet" href="./css/TrangChu.css">

        <style>
            .policy-header {
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--primary-hover) 100%);
                padding: 120px 0 60px;
                color: white;
                text-align: center;
            }
            .policy-content {
                background: #ffffff;
                border-radius: 8px;
                box-shadow: 0 5px 20px rgba(0,0,0,0.05);
                padding: 40px;
                margin-top: -30px;
                position: relative;
                z-index: 10;
                line-height: 1.8;
                color: var(--text-color);
            }
            .policy-content h4 {
                color: var(--title-color);
                font-family: var(--ff-heading);
                font-weight: 700;
                margin-top: 30px;
                margin-bottom: 15px;
                padding-bottom: 10px;
                border-bottom: 2px dashed #f0f0f0;
            }
            .policy-content ul {
                padding-left: 20px;
            }
            .policy-content li {
                margin-bottom: 10px;
            }
            .policy-content strong {
                color: var(--title-color);
            }
        </style>
    </head>

    <body style="background-color: #f5f5f5;">

        <!-- ================= NAVBAR ================= -->
        <nav class="navbar navbar-expand-lg fixed-top bg-white border-bottom shadow-sm">
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

                        <div class="dropdown ms-2 position-relative" id="cartDropdownContainer">
                            <%
                                boolean isLogged = false;
                                boolean hasItemsInCart = false;
                                int cartSize = hasItemsInCart ? 3 : 0;
                            %>
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" 
                               id="cartDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside" 
                               style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-shopping-cart"></i> 
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger cart-badge" style="font-size: 0.6rem; margin-top: 8px; margin-left: -5px;">
                                    <%= isLogged ? cartSize : 0 %>
                                </span>
                            </a>
                        </div>

                        <div class="dropdown ms-2 position-relative">
                            <a href="#" class="text-dark fs-4 text-decoration-none icon-action d-flex align-items-center justify-content-center" id="accountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px; border-radius: 50%;">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-center border-0 shadow" aria-labelledby="accountDropdown" style="width: 220px; border-radius: 10px;">
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangNhap.jsp"><i class="fas fa-sign-in-alt me-2 text-muted"></i> Đăng nhập</a></li>
                                <li><a class="dropdown-item py-2 fw-semibold" href="./DangKi.jsp"><i class="fas fa-user-plus me-2 text-muted"></i> Đăng ký</a></li>
                            </ul>
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

        <!-- ================= OFFCANVAS MENU ================= -->
        <div class="offcanvas offcanvas-start border-0 shadow" tabindex="-1" id="offcanvasLeftMenu" aria-labelledby="offcanvasLeftMenuLabel" style="width: 320px;">
            <div class="offcanvas-header border-bottom position-relative d-flex justify-content-end align-items-center" style="height: 75px;">
                <button type="button" class="btn-close shadow-none" data-bs-dismiss="offcanvas" aria-label="Close" style="z-index: 1;"></button>
            </div>
            <div class="offcanvas-body px-0 custom-scrollbar d-flex flex-column pb-0">
                <div class="side-menu-group px-4 mb-3 mt-3">
                    <h5 class="fw-bold text-dark mb-3 text-uppercase">Chính Sách</h5>
                    <ul class="list-unstyled">
                        <li><a href="#chinh-sach-hoat-dong" class="side-menu-link">Chính Sách Hoạt Động <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#chinh-sach-bao-mat" class="side-menu-link">Chính Sách Bảo Mật <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#quy-dinh-giao-hang" class="side-menu-link">Quy Định Giao Hàng <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#chinh-sach-doi-tra" class="side-menu-link">Đổi Trả & Hoàn Tiền <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div> 

        <!-- ================= POLICY HEADER ================= -->
        <section class="policy-header">
            <div class="container">
                <h1 class="display-4 fw-bold mb-2">Chính Sách & Quy Định</h1>
                <p class="fs-5 opacity-75">Cam kết mang lại trải nghiệm an toàn và minh bạch cho khách hàng</p>
            </div>
        </section>

        <!-- ================= POLICY CONTENT ================= -->
        <section class="pb-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="policy-content">

                            <p>Chào mừng bạn đến với Foodie! Việc bạn sử dụng website và dịch vụ đặt đồ ăn của chúng tôi đồng nghĩa với việc bạn đã đọc, hiểu và đồng ý với các chính sách dưới đây. Vui lòng đọc kỹ để đảm bảo quyền lợi của mình.</p>

                            <h4 id="chinh-sach-hoat-dong"><i class="fas fa-store me-2 text-primary-custom"></i> 1. Chính Sách Hoạt Động</h4>
                            <p>Foodie hoạt động với tiêu chí cung cấp những bữa ăn nhanh chóng, nóng hổi và chất lượng nhất. </p>
                            <ul>
                                <li><strong>Thời gian hoạt động:</strong> Hệ thống tiếp nhận đơn hàng trực tuyến từ 08:00 sáng đến 22:00 tối các ngày trong tuần (bao gồm cả Lễ, Tết).</li>
                                <li><strong>Xác nhận đơn hàng:</strong> Sau khi đặt hàng thành công, hệ thống sẽ tự động gửi email hoặc thông báo qua ứng dụng. Đơn hàng chỉ được tính là thành công khi chuyển sang trạng thái "Đang xử lý".</li>
                                <li><strong>Hủy đơn hàng:</strong> Quý khách chỉ có thể hủy đơn hàng khi trạng thái là "Chờ xác nhận". Khi bếp đã bắt đầu chuẩn bị món, đơn hàng không thể hủy.</li>
                            </ul>

                            <h4 id="chinh-sach-bao-mat"><i class="fas fa-user-shield me-2 text-primary-custom"></i> 2. Chính Sách Bảo Mật Thông Tin</h4>
                            <p>Bảo mật thông tin của khách hàng là ưu tiên hàng đầu của chúng tôi.</p>
                            <ul>
                                <li><strong>Mục đích thu thập:</strong> Chúng tôi chỉ thu thập họ tên, số điện thoại, địa chỉ giao hàng và email nhằm mục đích xử lý đơn hàng, giao nhận và cung cấp các chương trình khuyến mãi.</li>
                                <li><strong>Cam kết bảo mật:</strong> Thông tin của quý khách được mã hóa và lưu trữ an toàn. Chúng tôi cam kết <strong>KHÔNG</strong> bán, trao đổi hay chia sẻ thông tin cá nhân của khách hàng cho bất kỳ bên thứ ba nào vì mục đích thương mại.</li>
                                <li><strong>Quyền của khách hàng:</strong> Khách hàng có thể truy cập vào "Trang cá nhân" để tự do chỉnh sửa, cập nhật hoặc yêu cầu xóa bỏ thông tin của mình bất cứ lúc nào.</li>
                            </ul>

                            <h4 id="quy-dinh-giao-hang"><i class="fas fa-shipping-fast me-2 text-primary-custom"></i> 3. Quy Định Giao Hàng</h4>
                            <p>Chúng tôi luôn nỗ lực để món ăn đến tay bạn trong thời gian ngắn nhất với chất lượng giữ nguyên.</p>
                            <ul>
                                <li><strong>Thời gian giao hàng dự kiến:</strong> Từ 20 - 45 phút tùy thuộc vào khoảng cách địa lý và tình hình giao thông. Trong điều kiện thời tiết xấu, thời gian có thể kéo dài hơn và chúng tôi sẽ thông báo trước cho bạn.</li>
                                <li><strong>Phí vận chuyển (Freeship):</strong> Miễn phí vận chuyển cho các đơn hàng trong bán kính 3km hoặc đạt giá trị tối thiểu theo từng chương trình khuyến mãi hiện hành.</li>
                                <li><strong>Kiểm tra hàng:</strong> Quý khách vui lòng kiểm tra kỹ số lượng, bao bì và hóa đơn ngay khi nhận hàng từ Shipper trước khi tiến hành thanh toán.</li>
                            </ul>

                            <h4 id="chinh-sach-doi-tra"><i class="fas fa-sync-alt me-2 text-primary-custom"></i> 4. Chính Sách Đổi Trả & Hoàn Tiền</h4>
                            <p>Vì tính chất của sản phẩm là thức ăn chế biến sẵn, chúng tôi áp dụng chính sách đổi trả theo các điều kiện nghiêm ngặt sau:</p>
                            <ul>
                                <li><strong>Trường hợp được đổi/trả:</strong> Món ăn bị ôi thiu, có dị vật, giao sai món so với đơn đặt hàng, hoặc bao bì bị rách hỏng nghiêm trọng trong quá trình vận chuyển.</li>
                                <li><strong>Thời gian khiếu nại:</strong> Khách hàng cần phản hồi cho hotline hỗ trợ ngay lập tức (không quá 30 phút kể từ lúc nhận hàng) kèm theo hình ảnh/video bằng chứng rõ ràng.</li>
                                <li><strong>Hoàn tiền:</strong> Nếu lỗi thuộc về nhà hàng, chúng tôi sẽ tiến hành đổi món mới hoặc hoàn trả 100% giá trị món ăn bị lỗi qua ví điện tử/tài khoản ngân hàng của quý khách trong vòng 24 giờ.</li>
                            </ul>

                            <div class="mt-5 p-3 bg-light rounded text-center border">
                                <p class="mb-0 fw-medium">Nếu có bất kỳ thắc mắc nào về các chính sách trên, xin vui lòng liên hệ bộ phận CSKH qua Hotline: <strong class="text-danger">1900 1234</strong> hoặc Email: <strong>support@foodie.vn</strong></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ================= FOOTER ================= -->
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
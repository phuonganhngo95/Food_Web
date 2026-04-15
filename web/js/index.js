$(document).ready(function () {
    // 1. Khởi tạo Banner Slider
    $('.banner-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        dots: false,
    });

    // 2. Khởi tạo Featured Products Slider (đã chỉnh thành 4 món)
    $('.featured-products').slick({
        infinite: false, /* Nên đổi thành false để khi lọc ít món không bị lỗi lặp clone */
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3500,
        arrows: false,
        dots: true
    });

    // 3. Xử lý chức năng lọc (Filter) khi click vào Sidebar Menu
    $('.sidebar-menu a').on('click', function (e) {
        e.preventDefault(); // Ngăn chặn hành vi nhảy trang mặc định của thẻ a

        // Đổi màu nút được chọn (active)
        $('.sidebar-menu a').removeClass('active');
        $(this).addClass('active');

        // Lấy từ khóa lọc từ data-filter
        var filterValue = $(this).attr('data-filter');

        // Áp dụng filter cho Slick Slider
        if (filterValue === 'all') {
            // Nếu chọn "Tất Cả", hủy bỏ mọi bộ lọc
            $('.featured-products').slick('slickUnfilter');
        } else {
            // Hủy bộ lọc cũ trước khi áp dụng bộ lọc mới
            $('.featured-products').slick('slickUnfilter');
            // Lọc ra các thẻ div có chứa class tương ứng (ví dụ: .ga-ran)
            $('.featured-products').slick('slickFilter', '.' + filterValue);
        }
    });
});
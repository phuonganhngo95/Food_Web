$(document).ready(function () {
    $('.popular-food-slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        prevArrow: $('.custom-prev'), /* Gắn nút Prev */
        nextArrow: $('.custom-next'), /* Gắn nút Next */
        dots: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1,
                }
            }
        ]
    });

    // Khởi tạo Slick Slider cho phần Đánh giá khách hàng (Testimonial)
    $('.testimonial-slider').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000, // Tự động trượt sau 4 giây
        arrows: false, // Tắt nút mũi tên hai bên
        dots: true, // Bật dấu chấm điều hướng ở dưới
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                }
            }
        ]
    });
});
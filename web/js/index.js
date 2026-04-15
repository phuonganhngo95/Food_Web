$(document).ready(function () {
    $('.banner-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        dots: false,
    });

    $('.featured-products').slick({
        infinite: false, /* Nên đổi thành false để khi lọc ít món không bị lỗi lặp clone */
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3500,
        arrows: false,
        dots: true
    });
    
    $('.sidebar-menu a').on('click', function (e) {
        e.preventDefault(); 
        $('.sidebar-menu a').removeClass('active');
        $(this).addClass('active');

        var filterValue = $(this).attr('data-filter');

        if (filterValue === 'all') {
            $('.featured-products').slick('slickUnfilter');
        } else {
            $('.featured-products').slick('slickUnfilter');
            
            $('.featured-products').slick('slickFilter', '.' + filterValue);
        }
    });
});
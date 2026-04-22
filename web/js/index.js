$(document).ready(function () {
    $('.popular-food-slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        prevArrow: $('.custom-prev'),
        nextArrow: $('.custom-next'), 
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
    
    $('.testimonial-slider').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000, 
        arrows: false,
        dots: true, 
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

document.addEventListener("DOMContentLoaded", function () {
    const backTopBtn = document.querySelector("[data-back-top-btn]");

    window.addEventListener("scroll", function () {
        if (window.scrollY >= 400) {
            backTopBtn.classList.add("active");
        } else {
            backTopBtn.classList.remove("active");
        }
    });
});
$(document).ready(function ($) {
    "use strict";

    const book_table = new Swiper(".book-table-img-slider", {
        slidesPerView: 1,
        spaceBetween: 20,
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        speed: 2000,
        effect: "coverflow",
        coverflowEffect: {
            rotate: 3,
            stretch: 2,
            depth: 100,
            modifier: 5,
            slideShadows: false,
        },
        loopAdditionSlides: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });

    const team_slider = new Swiper(".team-slider", {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        speed: 2000,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            0: {slidesPerView: 1.2},
            768: {slidesPerView: 2},
            992: {slidesPerView: 3},
            1200: {slidesPerView: 3},
        },
    });

    $(".filters").on("click", function () {
        $("#menu-dish").removeClass("bydefault_show");
    });

    const filterList = {
        init: function () {
            $("#menu-dish").mixItUp({
                selectors: {
                    target: ".dish-box-wp",
                    filter: ".filter",
                },
                animation: {
                    effects: "fade",
                    easing: "ease-in-out",
                },
                load: {
                    filter: ".all, .breakfast, .lunch, .dinner",
                },
            });
        },
    };
    filterList.init();

    $(".menu-toggle").click(() => $(".main-navigation").toggleClass("toggled"));
    $(".header-menu ul li a").click(() => $(".main-navigation").removeClass("toggled"));

    gsap.registerPlugin(ScrollTrigger);

    const elementFirst = document.querySelector('.site-header');
    if (elementFirst) {
        ScrollTrigger.create({
            trigger: "body",
            start: "30px top",
            end: "bottom bottom",
            onEnter: () => elementFirst.classList.toggle('sticky_head'),
            onLeaveBack: () => elementFirst.classList.toggle('sticky_head'),
        });
    }

    const scene = $(".js-parallax-scene").get(0);
    if (scene) {
        const parallaxInstance = new Parallax(scene);
    }
});

jQuery(window).on('load', function () {
    $('body').removeClass('body-fixed');

    const targets = document.querySelectorAll(".filter");
    let activeTab = 0;
    let old = 0;
    let animation;

    if (targets.length > 0) {
        targets.forEach((target, i) => {
            target.index = i;
            target.addEventListener("click", moveBar);
        });

        gsap.set(".filter-active", {
            x: targets[0].offsetLeft,
            width: targets[0].offsetWidth
        });

        function moveBar() {
            if (this.index !== activeTab) {
                if (animation && animation.isActive()) {
                    animation.progress(1);
                }
                animation = gsap.timeline({
                    defaults: {duration: 0.4}
                });
                old = activeTab;
                activeTab = this.index;

                animation.to(".filter-active", {
                    x: targets[activeTab].offsetLeft,
                    width: targets[activeTab].offsetWidth
                });

                animation.to(targets[old], {
                    color: "#0d0d25",
                    ease: "none"
                }, 0);

                animation.to(targets[activeTab], {
                    color: "#fff",
                    ease: "none"
                }, 0);
            }
        }
    }
});
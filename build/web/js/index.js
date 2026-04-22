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
            {breakpoint: 1024, settings: {slidesToShow: 3, }},
            {breakpoint: 768, settings: {slidesToShow: 2, }},
            {breakpoint: 576, settings: {slidesToShow: 1, }}
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
            {breakpoint: 1024, settings: {slidesToShow: 2, }},
            {breakpoint: 768, settings: {slidesToShow: 1, }}
        ]
    });

    $('.menu-slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        prevArrow: $('.menu-prev'),
        nextArrow: $('.menu-next'),
        dots: false,
        responsive: [
            {breakpoint: 1024, settings: {slidesToShow: 3, }},
            {breakpoint: 768, settings: {slidesToShow: 2, }},
            {breakpoint: 576, settings: {slidesToShow: 1, }}
        ]
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const backTopBtn = document.querySelector("[data-back-top-btn]");
    if (backTopBtn) {
        window.addEventListener("scroll", function () {
            if (window.scrollY >= 400) {
                backTopBtn.classList.add("active");
            } else {
                backTopBtn.classList.remove("active");
            }
        });
    }

    const paginationContainer = document.getElementById('pagination');

    if (paginationContainer) {
        const filterBtns = document.querySelectorAll('.filter-btn');
        const menuItems = Array.from(document.querySelectorAll('.food-item'));

        const itemsPerPage = 15; 
        let currentPage = 1;
        let currentCategory = 'all';

        function updateView() {
            let filteredItems = menuItems.filter(item => {
                return currentCategory === 'all' || item.getAttribute('data-category') === currentCategory;
            });

            const totalPages = Math.ceil(filteredItems.length / itemsPerPage);
            if (currentPage > totalPages && totalPages > 0)
                currentPage = totalPages;

            const startIndex = (currentPage - 1) * itemsPerPage;
            const endIndex = startIndex + itemsPerPage;

            menuItems.forEach(item => {
                item.classList.remove('show');
                item.style.display = 'none';
            });

            const itemsToShow = filteredItems.slice(startIndex, endIndex);
            itemsToShow.forEach(item => {
                item.style.display = 'block';
                setTimeout(() => {
                    item.classList.add('show');
                }, 10);
            });

            renderPagination(totalPages);
        }

        function renderPagination(totalPages) {
            paginationContainer.innerHTML = '';

            if (totalPages <= 1)
                return;

            let prevLi = document.createElement('li');
            prevLi.className = `page-item ${currentPage === 1 ? 'disabled' : ''}`;
            prevLi.innerHTML = `<a class="page-link" href="#" aria-label="Previous">&laquo;</a>`;
            prevLi.addEventListener('click', (e) => {
                e.preventDefault();
                if (currentPage > 1) {
                    currentPage--;
                    updateView();
                    scrollToMenu();
                }
            });
            paginationContainer.appendChild(prevLi);

            for (let i = 1; i <= totalPages; i++) {
                let li = document.createElement('li');
                li.className = `page-item ${currentPage === i ? 'active' : ''}`;
                li.innerHTML = `<a class="page-link" href="#">${i}</a>`;
                li.addEventListener('click', (e) => {
                    e.preventDefault();
                    currentPage = i;
                    updateView();
                    scrollToMenu();
                });
                paginationContainer.appendChild(li);
            }

            let nextLi = document.createElement('li');
            nextLi.className = `page-item ${currentPage === totalPages ? 'disabled' : ''}`;
            nextLi.innerHTML = `<a class="page-link" href="#" aria-label="Next">&raquo;</a>`;
            nextLi.addEventListener('click', (e) => {
                e.preventDefault();
                if (currentPage < totalPages) {
                    currentPage++;
                    updateView();
                    scrollToMenu();
                }
            });
            paginationContainer.appendChild(nextLi);
        }

        function scrollToMenu() {
            const menuSection = document.getElementById('menu');
            if (menuSection) {
                const offset = 100; 
                const bodyRect = document.body.getBoundingClientRect().top;
                const elementRect = menuSection.getBoundingClientRect().top;
                const offsetPosition = (elementRect - bodyRect) - offset;

                window.scrollTo({
                    top: offsetPosition,
                    behavior: "smooth"
                });
            }
        }

        filterBtns.forEach(btn => {
            btn.addEventListener('click', function () {
                filterBtns.forEach(b => b.classList.remove('active'));
                this.classList.add('active');

                currentCategory = this.getAttribute('data-filter');
                currentPage = 1; 
                updateView();
            });
        });

        updateView();
    }
});
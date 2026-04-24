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

    // --- XỬ LÝ BẬT POPUP GIỎ HÀNG ---
    const addCartBtns = document.querySelectorAll('.btn-add-cart');
    const cartDropdownToggle = document.getElementById('cartDropdown');

    if (addCartBtns.length > 0 && cartDropdownToggle) {
        // Khởi tạo API Dropdown của Bootstrap 5
        const cartDropdown = new bootstrap.Dropdown(cartDropdownToggle);

        addCartBtns.forEach(btn => {
            btn.addEventListener('click', function (e) {
                e.preventDefault();

                // Mở dropdown giỏ hàng
                cartDropdown.show();

                // (Tùy chọn Frontend) Hiệu ứng tăng số lượng trên icon
                const badge = document.querySelector('.cart-badge');
                if (badge) {
                    let currentCount = parseInt(badge.innerText || 0);
                    badge.innerText = currentCount + 1;

                    // Tạo hiệu ứng nảy nhẹ khi thêm số lượng
                    badge.style.transform = "scale(1.5)";
                    setTimeout(() => {
                        badge.style.transform = "scale(1)";
                    }, 200);
                }
            });
        });
    }

    // --- XỬ LÝ THANH TRƯỢT GIÁ (DUAL RANGE SLIDER) ---
    const minPriceInput = document.getElementById('minPrice');
    const maxPriceInput = document.getElementById('maxPrice');
    const priceDisplay = document.getElementById('priceDisplay');
    const sliderTrack = document.getElementById('sliderTrack');

    if (minPriceInput && maxPriceInput && priceDisplay && sliderTrack) {
        // Hàm định dạng tiền tệ VNĐ
        function formatCurrency(value) {
            return new Intl.NumberFormat('vi-VN').format(value) + 'đ';
        }

        // Cập nhật giao diện thanh trượt
        function updateSlider() {
            let minVal = parseInt(minPriceInput.value);
            let maxVal = parseInt(maxPriceInput.value);
            const maxLimit = parseInt(minPriceInput.max);

            // Tính toán phần trăm để vẽ dải màu cam ở giữa
            const percent1 = (minVal / maxLimit) * 100;
            const percent2 = (maxVal / maxLimit) * 100;

            sliderTrack.style.left = percent1 + '%';
            sliderTrack.style.width = (percent2 - percent1) + '%';

            // Cập nhật text hiển thị giá
            priceDisplay.textContent = formatCurrency(minVal) + ' - ' + formatCurrency(maxVal);
        }

        // Bắt sự kiện khi kéo nút Min
        minPriceInput.addEventListener('input', function () {
            let minVal = parseInt(minPriceInput.value);
            let maxVal = parseInt(maxPriceInput.value);

            // Không cho nút Min vượt quá nút Max (giữ khoảng cách tối thiểu là 10.000đ)
            if (minVal >= maxVal) {
                minPriceInput.value = maxVal - 10000;
            }
            updateSlider();
        });

        // Bắt sự kiện khi kéo nút Max
        maxPriceInput.addEventListener('input', function () {
            let minVal = parseInt(minPriceInput.value);
            let maxVal = parseInt(maxPriceInput.value);

            // Không cho nút Max tụt xuống thấp hơn nút Min
            if (maxVal <= minVal) {
                maxPriceInput.value = minVal + 10000;
            }
            updateSlider();
        });

        // Chạy lần đầu để set UI
        updateSlider();
    }
});


//$(document).ready(function () {
//    $('.popular-food-slider').slick({
//        infinite: true,
//        slidesToShow: 4,
//        slidesToScroll: 1,
//        autoplay: true,
//        autoplaySpeed: 3000,
//        arrows: true,
//        prevArrow: $('.custom-prev'),
//        nextArrow: $('.custom-next'),
//        dots: false,
//        responsive: [
//            {breakpoint: 1024, settings: {slidesToShow: 3, }},
//            {breakpoint: 768, settings: {slidesToShow: 2, }},
//            {breakpoint: 576, settings: {slidesToShow: 1, }}
//        ]
//    });
//
//    $('.testimonial-slider').slick({
//        infinite: true,
//        slidesToShow: 3,
//        slidesToScroll: 1,
//        autoplay: true,
//        autoplaySpeed: 4000,
//        arrows: false,
//        dots: true,
//        responsive: [
//            {breakpoint: 1024, settings: {slidesToShow: 2, }},
//            {breakpoint: 768, settings: {slidesToShow: 1, }}
//        ]
//    });
//
//    $('.menu-slider').slick({
//        infinite: true,
//        slidesToShow: 4,
//        slidesToScroll: 1,
//        autoplay: true,
//        autoplaySpeed: 3000,
//        arrows: true,
//        prevArrow: $('.menu-prev'),
//        nextArrow: $('.menu-next'),
//        dots: false,
//        responsive: [
//            {breakpoint: 1024, settings: {slidesToShow: 3, }},
//            {breakpoint: 768, settings: {slidesToShow: 2, }},
//            {breakpoint: 576, settings: {slidesToShow: 1, }}
//        ]
//    });
//});
//
//document.addEventListener("DOMContentLoaded", function () {
//    const backTopBtn = document.querySelector("[data-back-top-btn]");
//    if (backTopBtn) {
//        window.addEventListener("scroll", function () {
//            if (window.scrollY >= 400) {
//                backTopBtn.classList.add("active");
//            } else {
//                backTopBtn.classList.remove("active");
//            }
//        });
//    }
//
//    const paginationContainer = document.getElementById('pagination');
//
//    if (paginationContainer) {
//        const filterBtns = document.querySelectorAll('.filter-btn');
//        const menuItems = Array.from(document.querySelectorAll('.food-item'));
//
//        const itemsPerPage = 15;
//        let currentPage = 1;
//        let currentCategory = 'all';
//
//        function updateView() {
//            let filteredItems = menuItems.filter(item => {
//                return currentCategory === 'all' || item.getAttribute('data-category') === currentCategory;
//            });
//
//            const totalPages = Math.ceil(filteredItems.length / itemsPerPage);
//            if (currentPage > totalPages && totalPages > 0)
//                currentPage = totalPages;
//
//            const startIndex = (currentPage - 1) * itemsPerPage;
//            const endIndex = startIndex + itemsPerPage;
//
//            menuItems.forEach(item => {
//                item.classList.remove('show');
//                item.style.display = 'none';
//            });
//
//            const itemsToShow = filteredItems.slice(startIndex, endIndex);
//            itemsToShow.forEach(item => {
//                item.style.display = 'block';
//                setTimeout(() => {
//                    item.classList.add('show');
//                }, 10);
//            });
//
//            renderPagination(totalPages);
//        }
//
//        function renderPagination(totalPages) {
//            paginationContainer.innerHTML = '';
//
//            if (totalPages <= 1)
//                return;
//
//            let prevLi = document.createElement('li');
//            prevLi.className = `page-item ${currentPage === 1 ? 'disabled' : ''}`;
//            prevLi.innerHTML = `<a class="page-link" href="#" aria-label="Previous">&laquo;</a>`;
//            prevLi.addEventListener('click', (e) => {
//                e.preventDefault();
//                if (currentPage > 1) {
//                    currentPage--;
//                    updateView();
//                    scrollToMenu();
//                }
//            });
//            paginationContainer.appendChild(prevLi);
//
//            for (let i = 1; i <= totalPages; i++) {
//                let li = document.createElement('li');
//                li.className = `page-item ${currentPage === i ? 'active' : ''}`;
//                li.innerHTML = `<a class="page-link" href="#">${i}</a>`;
//                li.addEventListener('click', (e) => {
//                    e.preventDefault();
//                    currentPage = i;
//                    updateView();
//                    scrollToMenu();
//                });
//                paginationContainer.appendChild(li);
//            }
//
//            let nextLi = document.createElement('li');
//            nextLi.className = `page-item ${currentPage === totalPages ? 'disabled' : ''}`;
//            nextLi.innerHTML = `<a class="page-link" href="#" aria-label="Next">&raquo;</a>`;
//            nextLi.addEventListener('click', (e) => {
//                e.preventDefault();
//                if (currentPage < totalPages) {
//                    currentPage++;
//                    updateView();
//                    scrollToMenu();
//                }
//            });
//            paginationContainer.appendChild(nextLi);
//        }
//
//        function scrollToMenu() {
//            const menuSection = document.getElementById('menu');
//            if (menuSection) {
//                const offset = 100;
//                const bodyRect = document.body.getBoundingClientRect().top;
//                const elementRect = menuSection.getBoundingClientRect().top;
//                const offsetPosition = (elementRect - bodyRect) - offset;
//
//                window.scrollTo({
//                    top: offsetPosition,
//                    behavior: "smooth"
//                });
//            }
//        }
//
//        filterBtns.forEach(btn => {
//            btn.addEventListener('click', function () {
//                filterBtns.forEach(b => b.classList.remove('active'));
//                this.classList.add('active');
//
//                currentCategory = this.getAttribute('data-filter');
//                currentPage = 1;
//                updateView();
//            });
//        });
//
//        updateView();
//    }
//
//    // --- XỬ LÝ BẬT POPUP GIỎ HÀNG ---
//    const addCartBtns = document.querySelectorAll('.btn-add-cart');
//    const cartDropdownToggle = document.getElementById('cartDropdown');
//
//    if (addCartBtns.length > 0 && cartDropdownToggle) {
//        // Khởi tạo API Dropdown của Bootstrap 5
//        const cartDropdown = new bootstrap.Dropdown(cartDropdownToggle);
//
//        addCartBtns.forEach(btn => {
//            btn.addEventListener('click', function (e) {
//                e.preventDefault();
//
//                // Mở dropdown giỏ hàng
//                cartDropdown.show();
//
//                // (Tùy chọn Frontend) Hiệu ứng tăng số lượng trên icon
//                const badge = document.querySelector('.cart-badge');
//                if (badge) {
//                    let currentCount = parseInt(badge.innerText || 0);
//                    badge.innerText = currentCount + 1;
//
//                    // Tạo hiệu ứng nảy nhẹ khi thêm số lượng
//                    badge.style.transform = "scale(1.5)";
//                    setTimeout(() => {
//                        badge.style.transform = "scale(1)";
//                    }, 200);
//                }
//            });
//        });
//    }
//
//    // --- XỬ LÝ THANH TRƯỢT GIÁ (DUAL RANGE SLIDER) ---
//    const minPriceInput = document.getElementById('minPrice');
//    const maxPriceInput = document.getElementById('maxPrice');
//    const priceDisplay = document.getElementById('priceDisplay');
//    const sliderTrack = document.getElementById('sliderTrack');
//
//    if (minPriceInput && maxPriceInput && priceDisplay && sliderTrack) {
//        // Hàm định dạng tiền tệ VNĐ
//        function formatCurrency(value) {
//            return new Intl.NumberFormat('vi-VN').format(value) + 'đ';
//        }
//
//        // Cập nhật giao diện thanh trượt
//        function updateSlider() {
//            let minVal = parseInt(minPriceInput.value);
//            let maxVal = parseInt(maxPriceInput.value);
//            const maxLimit = parseInt(minPriceInput.max);
//
//            // Tính toán phần trăm để vẽ dải màu cam ở giữa
//            const percent1 = (minVal / maxLimit) * 100;
//            const percent2 = (maxVal / maxLimit) * 100;
//
//            sliderTrack.style.left = percent1 + '%';
//            sliderTrack.style.width = (percent2 - percent1) + '%';
//
//            // Cập nhật text hiển thị giá
//            priceDisplay.textContent = formatCurrency(minVal) + ' - ' + formatCurrency(maxVal);
//        }
//
//        // Bắt sự kiện khi kéo nút Min
//        minPriceInput.addEventListener('input', function () {
//            let minVal = parseInt(minPriceInput.value);
//            let maxVal = parseInt(maxPriceInput.value);
//
//            // Không cho nút Min vượt quá nút Max (giữ khoảng cách tối thiểu là 10.000đ)
//            if (minVal >= maxVal) {
//                minPriceInput.value = maxVal - 10000;
//            }
//            updateSlider();
//        });
//
//        // Bắt sự kiện khi kéo nút Max
//        maxPriceInput.addEventListener('input', function () {
//            let minVal = parseInt(minPriceInput.value);
//            let maxVal = parseInt(maxPriceInput.value);
//
//            // Không cho nút Max tụt xuống thấp hơn nút Min
//            if (maxVal <= minVal) {
//                maxPriceInput.value = minVal + 10000;
//            }
//            updateSlider();
//        });
//
//        // Chạy lần đầu để set UI
//        updateSlider();
//    }
//});
//


$(document).ready(function () {
    // 1. Khởi tạo Slick Slider cho Trang Chủ
    $('.popular-food-slider').slick({
        infinite: true, slidesToShow: 4, slidesToScroll: 1, autoplay: true, autoplaySpeed: 3000, arrows: true, prevArrow: $('.custom-prev'), nextArrow: $('.custom-next'), dots: false,
        responsive: [{breakpoint: 1024, settings: {slidesToShow: 3}}, {breakpoint: 768, settings: {slidesToShow: 2}}, {breakpoint: 576, settings: {slidesToShow: 1}}]
    });

    $('.testimonial-slider').slick({
        infinite: true, slidesToShow: 3, slidesToScroll: 1, autoplay: true, autoplaySpeed: 4000, arrows: false, dots: true,
        responsive: [{breakpoint: 1024, settings: {slidesToShow: 2}}, {breakpoint: 768, settings: {slidesToShow: 1}}]
    });

    const $menuSlider = $('.menu-slider').slick({
        infinite: true, slidesToShow: 4, slidesToScroll: 1, autoplay: true, autoplaySpeed: 3000, arrows: true, prevArrow: $('.menu-prev'), nextArrow: $('.menu-next'), dots: false,
        responsive: [{breakpoint: 1024, settings: {slidesToShow: 3}}, {breakpoint: 768, settings: {slidesToShow: 2}}, {breakpoint: 576, settings: {slidesToShow: 1}}]
    });

    // =========================================================
    // LỌC CHO TRANG CHỦ (TABS + SLICK SLIDER)
    // =========================================================
    const homeMenuTabs = document.querySelectorAll('#menu-tab .nav-link');
    if (homeMenuTabs.length > 0 && $menuSlider.length > 0) {
        homeMenuTabs.forEach(tab => {
            tab.addEventListener('click', function (e) {
                // Lấy ID của tab được click (vd: pills-burger-tab -> burger)
                let filterCategory = this.id.replace('pills-', '').replace('-tab', '');

                // Xóa bộ lọc cũ của slider
                $menuSlider.slick('slickUnfilter');

                // Áp dụng bộ lọc mới nếu không phải tab "Tất cả"
                if (filterCategory !== 'all') {
                    $menuSlider.slick('slickFilter', function () {
                        return $(this).attr('data-category') === filterCategory;
                    });
                }
            });
        });
    }
});

document.addEventListener("DOMContentLoaded", function () {
    // --- NÚT BACK TO TOP ---
    const backTopBtn = document.querySelector("[data-back-top-btn]");
    if (backTopBtn) {
        window.addEventListener("scroll", function () {
            backTopBtn.classList.toggle("active", window.scrollY >= 400);
        });
    }

    // =========================================================
    // LỌC CHO TRANG THỰC ĐƠN (3 BỘ LỌC KẾT HỢP ĐỒNG THỜI)
    // =========================================================
    const menuGrid = document.getElementById('menu-grid');
    const paginationContainer = document.getElementById('pagination');

    if (menuGrid && paginationContainer) {
        const filterBtns = document.querySelectorAll('.filter-btn'); // Hàng bán chạy
        const checkboxes = document.querySelectorAll('.filter-box input[type="checkbox"]'); // Checkbox loại SP
        const menuItems = Array.from(document.querySelectorAll('.food-item')); // Danh sách món ăn

        const minPriceInput = document.getElementById('minPrice');
        const maxPriceInput = document.getElementById('maxPrice');
        const priceDisplay = document.getElementById('priceDisplay');
        const sliderTrack = document.getElementById('sliderTrack');

        const itemsPerPage = 9;
        let currentPage = 1;

        // Lưu trữ trạng thái của cả 3 bộ lọc
        let activeFilters = {
            sideCategory: 'all',
            checkboxes: [],
            price: {min: 0, max: 2000000}
        };

        function formatCurrency(value) {
            return new Intl.NumberFormat('vi-VN').format(value) + 'đ';
        }

        function extractPrice(item) {
            let clone = item.querySelector('.price').cloneNode(true);
            let del = clone.querySelector('del');
            if (del)
                clone.removeChild(del);
            return parseInt(clone.textContent.replace(/\D/g, ''));
        }

        // Cập nhật lại danh sách món ăn
        function updateView() {
            let filteredItems = menuItems.filter(item => {
                const category = item.getAttribute('data-category');
                const price = extractPrice(item);

                // Kiểm tra thỏa mãn cả 3 điều kiện
                const passSide = (activeFilters.sideCategory === 'all') || (category === activeFilters.sideCategory);
                const passCheck = (activeFilters.checkboxes.length === 0) || (activeFilters.checkboxes.includes(category));
                const passPrice = (price >= activeFilters.price.min && price <= activeFilters.price.max);

                return passSide && passCheck && passPrice;
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
                setTimeout(() => item.classList.add('show'), 10);
            });

            renderPagination(totalPages);
        }

        // 1. Bắt sự kiện Click danh mục Hàng bán chạy
        // 1. Bắt sự kiện Click danh mục Hàng bán chạy
        filterBtns.forEach(btn => {
            btn.addEventListener('click', function (e) {
                e.preventDefault();
                // Bấm lại mục đang chọn -> Hủy chọn (Trạng thái ngầm định về 'all' nhưng không có nút nào sáng)
                if (this.classList.contains('active')) {
                    this.classList.remove('active');
                    activeFilters.sideCategory = 'all'; // Tự động lọc tất cả
                } else {
                    // Chọn mục mới
                    filterBtns.forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                    activeFilters.sideCategory = this.getAttribute('data-filter');
                }
                currentPage = 1;
                updateView();
            });
        });

        // 2. Bắt sự kiện Tick Checkbox
        checkboxes.forEach(cb => {
            cb.addEventListener('change', function () {
                activeFilters.checkboxes = Array.from(checkboxes).filter(i => i.checked).map(i => i.value);
                currentPage = 1;
                updateView();
            });
        });

        // 3. Bắt sự kiện Kéo Thanh Trượt Giá
        if (minPriceInput && maxPriceInput && priceDisplay && sliderTrack) {
            function updateSliderUIAndFilter(e) {
                let minVal = parseInt(minPriceInput.value);
                let maxVal = parseInt(maxPriceInput.value);
                const maxLimit = parseInt(minPriceInput.max);
                const gap = 0; // Khoảng cách tối thiểu giữa 2 nút (10.000đ)

                // Xử lý chống đè nút
                if (maxVal - minVal < gap) {
                    if (e && e.target.id === 'minPrice') {
                        // Nếu đang kéo nút Min chạm vào nút Max -> Đẩy nút Min lùi lại
                        minPriceInput.value = maxVal - gap;
                        minVal = parseInt(minPriceInput.value);
                    } else if (e && e.target.id === 'maxPrice') {
                        // Nếu đang kéo nút Max chạm vào nút Min -> Đẩy nút Max tiến lên
                        maxPriceInput.value = minVal + gap;
                        maxVal = parseInt(maxPriceInput.value);
                    }
                }

                // Chốt chặn an toàn: Tuyệt đối không cho phép số âm hoặc vượt quá giới hạn
                if (minVal < 0) {
                    minVal = 0;
                    minPriceInput.value = 0;
                }
                if (maxVal > maxLimit) {
                    maxVal = maxLimit;
                    maxPriceInput.value = maxLimit;
                }

                // Cập nhật giao diện dải màu cam
                const percent1 = (minVal / maxLimit) * 100;
                const percent2 = (maxVal / maxLimit) * 100;

                sliderTrack.style.left = percent1 + '%';
                sliderTrack.style.width = (percent2 - percent1) + '%';
                priceDisplay.textContent = formatCurrency(minVal) + ' - ' + formatCurrency(maxVal);

                // Lưu giá trị vào bộ lọc và cập nhật món ăn lập tức
                activeFilters.price.min = minVal;
                activeFilters.price.max = maxVal;
                currentPage = 1;
                updateView();
            }

            minPriceInput.addEventListener('input', updateSliderUIAndFilter);
            maxPriceInput.addEventListener('input', updateSliderUIAndFilter);

            // Chạy lần đầu
            updateSliderUIAndFilter();
        } else {
            updateView();
        }

        // --- XỬ LÝ PHÂN TRANG ---
        function renderPagination(totalPages) {
            paginationContainer.innerHTML = '';

            // Nếu không có món nào thỏa mãn bộ lọc (0 trang), thì mới ẩn thanh phân trang
            if (totalPages === 0)
                return;

            // Đã xóa dòng `if (totalPages <= 1) return;` để thanh phân trang luôn hiển thị

            // Nút Previous 
            let prevLi = document.createElement('li');
            prevLi.className = `page-item ${currentPage === 1 ? 'disabled' : ''}`;
            prevLi.innerHTML = `<a class="page-link shadow-sm" href="#" aria-label="Previous">&laquo;</a>`;
            prevLi.addEventListener('click', (e) => {
                e.preventDefault();
                if (currentPage > 1) {
                    currentPage--;
                    updateView();
                    scrollToMenu();
                }
            });
            paginationContainer.appendChild(prevLi);

            // Các nút Số trang
            for (let i = 1; i <= totalPages; i++) {
                let li = document.createElement('li');
                li.className = `page-item ${currentPage === i ? 'active' : ''}`;
                li.innerHTML = `<a class="page-link shadow-sm" href="#">${i}</a>`;
                li.addEventListener('click', (e) => {
                    e.preventDefault();
                    currentPage = i;
                    updateView();
                    scrollToMenu();
                });
                paginationContainer.appendChild(li);
            }

            // Nút Next 
            let nextLi = document.createElement('li');
            nextLi.className = `page-item ${currentPage === totalPages ? 'disabled' : ''}`;
            nextLi.innerHTML = `<a class="page-link shadow-sm" href="#" aria-label="Next">&raquo;</a>`;
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
                window.scrollTo({top: menuSection.getBoundingClientRect().top + window.scrollY - 100, behavior: "smooth"});
            }
        }
    }

    // --- POPUP GIỎ HÀNG ---
    const addCartBtns = document.querySelectorAll('.btn-add-cart');
    const cartDropdownToggle = document.getElementById('cartDropdown');
    if (addCartBtns.length > 0 && cartDropdownToggle) {
        const cartDropdown = new bootstrap.Dropdown(cartDropdownToggle);
        addCartBtns.forEach(btn => {
            btn.addEventListener('click', function (e) {
                e.preventDefault();
                cartDropdown.show();
                const badge = document.querySelector('.cart-badge');
                if (badge) {
                    badge.innerText = parseInt(badge.innerText || 0) + 1;
                    badge.style.transform = "scale(1.5)";
                    setTimeout(() => badge.style.transform = "scale(1)", 200);
                }
            });
        });
    }
});
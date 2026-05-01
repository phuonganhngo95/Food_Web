$(document).ready(function () {
    // Khởi tạo Slick Slider cho Hero Banner (Tràn màn hình)
    $('.hero-banner-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        arrows: true, // Bật nút chuyển (Next/Prev)
        dots: true, // Bật dấu chấm ở dưới
        // Thiết kế lại giao diện nút Next/Prev
        prevArrow: '<button class="hero-arrow-btn position-absolute top-50 translate-middle-y shadow-sm" style="z-index: 10; left: 30px; width: 45px; height: 45px; border-radius: 50%;"><i class="fas fa-chevron-left"></i></button>',
        nextArrow: '<button class="hero-arrow-btn position-absolute top-50 translate-middle-y shadow-sm" style="z-index: 10; right: 30px; width: 45px; height: 45px; border-radius: 50%;"><i class="fas fa-chevron-right"></i></button>'
    });



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

//    Giỏ hàng
    $('#btn-plus').click(function () {
        let currentVal = parseInt($('#qty-input').val());
        if (!isNaN(currentVal)) {
            $('#qty-input').val(currentVal + 1);
        }
    });

    $('#btn-minus').click(function () {
        let currentVal = parseInt($('#qty-input').val());
        if (!isNaN(currentVal) && currentVal > 1) {
            $('#qty-input').val(currentVal - 1);
        }
    });

    // 2. Logic cho Món ăn kèm (Nhấn vào hàng để tăng, nhấn dấu trừ để giảm)
    $('.addable-item').click(function (e) {
        // Ngăn sự kiện khi người dùng click vào dấu (-) để xóa
        if ($(e.target).hasClass('remove-icon')) {
            return;
        }

        let qtySpan = $(this).find('.item-qty');
        let removeBtn = $(this).find('.remove-icon');
        let currentQty = parseInt(qtySpan.attr('data-qty') || 0);
        let maxQty = parseInt($(this).attr('data-max') || 99);

        // Tăng số lượng và hiển thị
        if (currentQty < maxQty) {
            currentQty++;
            qtySpan.attr('data-qty', currentQty).text(currentQty + 'x').fadeIn(150);
            removeBtn.fadeIn(150); // Hiện dấu trừ
        }
    });

    // 3. Logic cho nút Giảm/Xóa món ăn kèm
    $('.remove-icon').click(function (e) {
        e.stopPropagation(); // Không cho sự kiện click truyền lên dòng (tránh bị hiểu nhầm là click tăng)
        let parentItem = $(this).closest('.addable-item');
        let qtySpan = parentItem.find('.item-qty');
        let currentQty = parseInt(qtySpan.attr('data-qty') || 0);

        if (currentQty > 0) {
            currentQty--;
            qtySpan.attr('data-qty', currentQty);

            // Nếu giảm về 0 thì ẩn số x và ẩn nút (-)
            if (currentQty === 0) {
                qtySpan.fadeOut(150);
                $(this).fadeOut(150);
            } else {
                qtySpan.text(currentQty + 'x');
            }
        }
    });


});

document.addEventListener("DOMContentLoaded", function () {
    // --- NÚT BACK TO TOP ---
    const backTopBtn = document.querySelector("[data-back-top-btn]");
    if (backTopBtn) {
        window.addEventListener("scroll", function () {
            backTopBtn.classList.toggle("active", window.scrollY >= 100);
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
});

// --- XỬ LÝ CHUYỂN TAB TRONG TRANG CÁ NHÂN ---
document.addEventListener("DOMContentLoaded", function () {
    const profileTabs = document.querySelectorAll('.profile-sidebar .list-group-item');
    const tabContents = document.querySelectorAll('.profile-tab-content');

    if (profileTabs.length > 0) {
        for (let i = 0; i < profileTabs.length; i++) {
            profileTabs[i].addEventListener('click', function (e) {
                e.preventDefault();

                // Lấy ID của phần nội dung cần hiển thị
                const targetId = this.getAttribute('data-target');
                if (!targetId)
                    return;

                // 1. Đặt lại màu chữ và xóa class active của tất cả các thẻ trong menu
                for (let j = 0; j < profileTabs.length; j++) {
                    profileTabs[j].classList.remove('text-white', 'active-custom');
                    profileTabs[j].classList.add('text-secondary');
                }

                // 2. Làm nổi bật mục menu vừa được click
                this.classList.remove('text-secondary');
                this.classList.add('text-white', 'active-custom');

                // 3. Ẩn toàn bộ nội dung của các tab
                for (let k = 0; k < tabContents.length; k++) {
                    tabContents[k].classList.add('d-none');
                }

                // 4. Hiển thị nội dung của tab tương ứng
                const targetContent = document.getElementById(targetId);
                if (targetContent) {
                    targetContent.classList.remove('d-none');
                }
            });
        }
    }
});

// --- XỬ LÝ QUẢN LÝ ĐỊA CHỈ (THÊM, SỬA, XÓA, MẶC ĐỊNH) TẠI TRANG PROFILE ---
document.addEventListener("DOMContentLoaded", function () {
    const btnShowAdd = document.getElementById('btn-show-add-address');
    const formAdd = document.getElementById('form-add-address');
    const btnCancelAdd = document.getElementById('btn-cancel-address');
    const btnSubmitAdd = document.getElementById('btn-submit-address');
    const addressList = document.getElementById('address-list');
    const formTitle = document.getElementById('form-address-title');

    // Biến dùng để lưu thẻ div chứa địa chỉ đang được sửa (Nếu là null thì nghĩa là đang Thêm mới)
    let editingItem = null;

    if (btnShowAdd && formAdd && btnCancelAdd && btnSubmitAdd && addressList) {

        // 1. Hàm dùng chung để mở form (Cập nhật tiêu đề và điền dữ liệu)
        function openForm(isEdit, name = '', phone = '', detail = '') {
            if (formTitle)
                formTitle.innerText = isEdit ? 'Cập nhật địa chỉ' : 'Thêm địa chỉ giao hàng';
            document.getElementById('new-addr-name').value = name;
            document.getElementById('new-addr-phone').value = phone;
            document.getElementById('new-addr-detail').value = detail;

            formAdd.classList.remove('d-none');
            btnShowAdd.classList.add('d-none');
        }

        // 2. Click "Thêm địa chỉ mới"
        btnShowAdd.addEventListener('click', function () {
            editingItem = null; // Đặt về chế độ Thêm mới
            openForm(false);
        });

        // 3. Click "Hủy thao tác"
        btnCancelAdd.addEventListener('click', function () {
            formAdd.classList.add('d-none');
            btnShowAdd.classList.remove('d-none');
            editingItem = null;
        });

        // 4. Lắng nghe sự kiện Sửa/Xóa/Thiết lập mặc định cho toàn bộ danh sách
        addressList.addEventListener('click', function (e) {
            const item = e.target.closest('.address-item');
            if (!item)
                return;

            // Nếu người dùng bấm "Cập nhật"
            if (e.target.classList.contains('btn-edit-address')) {
                editingItem = item;
                const currentName = item.querySelector('.addr-name').innerText.trim();
                const currentPhone = item.querySelector('.addr-phone').innerText.trim();
                const currentDetail = item.querySelector('.addr-detail').innerText.trim();
                openForm(true, currentName, currentPhone, currentDetail);
            }

            // Nếu người dùng bấm "Xóa"
            if (e.target.classList.contains('btn-delete-address')) {
                item.remove();
                if (editingItem === item) {
                    btnCancelAdd.click();
                }
            }

            // Nếu người dùng bấm "Thiết lập mặc định"
            if (e.target.classList.contains('btn-set-default')) {
                // Bước 1: Xóa tag "Mặc định" ở tất cả các địa chỉ khác và hiện lại nút "Thiết lập mặc định"
                const allItems = addressList.querySelectorAll('.address-item');
                for (let i = 0; i < allItems.length; i++) {
                    const badge = allItems[i].querySelector('.default-badge');
                    if (badge)
                        badge.remove(); // Xóa tag

                    const setDefBtn = allItems[i].querySelector('.btn-set-default');
                    if (setDefBtn)
                        setDefBtn.classList.remove('d-none'); // Hiện lại nút thiết lập
                }

                // Bước 2: Thêm tag "Mặc định" vào địa chỉ vừa bấm
                const badgeHTML = `<span class="badge bg-danger position-absolute top-0 end-0 m-3 rounded-pill default-badge">Mặc định</span>`;
                item.insertAdjacentHTML('afterbegin', badgeHTML);

                // Bước 3: Ẩn nút "Thiết lập mặc định" của chính địa chỉ này đi
                e.target.classList.add('d-none');
            }
        });

        // 5. Xử lý khi bấm nút "Hoàn thành"
        btnSubmitAdd.addEventListener('click', function () {
            const nameVal = document.getElementById('new-addr-name').value.trim();
            const phoneVal = document.getElementById('new-addr-phone').value.trim();
            const detailVal = document.getElementById('new-addr-detail').value.trim();

            if (nameVal === '' || phoneVal === '' || detailVal === '') {
                alert('Vui lòng điền đầy đủ Họ tên, Số điện thoại và Địa chỉ cụ thể!');
                return;
            }

            if (editingItem) {
                // CHẾ ĐỘ SỬA
                editingItem.querySelector('.addr-name').innerText = nameVal;
                editingItem.querySelector('.addr-phone').innerText = phoneVal;
                editingItem.querySelector('.addr-detail').innerText = detailVal;
            } else {
                // CHẾ ĐỘ THÊM
                const newAddressHTML = `
                    <div class="p-4 border rounded mb-3 bg-white position-relative shadow-sm address-item">
                        <p class="mb-1 fw-bold fs-5 text-dark"><span class="addr-name">${nameVal}</span> <span class="fw-normal text-muted fs-6">| <span class="addr-phone">${phoneVal}</span></span></p>
                        <p class="mb-2 text-muted addr-detail">${detailVal}</p>
                        <div class="mt-2 d-flex gap-3">
                            <a href="javascript:void(0)" class="text-primary text-decoration-none small fw-bold btn-edit-address">Cập nhật</a>
                            <a href="javascript:void(0)" class="text-danger text-decoration-none small fw-bold btn-delete-address">Xóa</a>
                            <a href="javascript:void(0)" class="text-secondary text-decoration-none small fw-bold btn-set-default">Thiết lập mặc định</a>
                        </div>
                    </div>
                `;
                addressList.insertAdjacentHTML('beforeend', newAddressHTML);
            }

            // Đóng form
            btnCancelAdd.click();
        });
    }

    // =========================================================
    // XỬ LÝ LỰA CHỌN "TỐI ĐA CHỌN 1" TRONG CHI TIẾT MÓN ĂN
    // =========================================================
    const max1Checkboxes = document.querySelectorAll('.max-1-checkbox');

    max1Checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            // Nếu ô này vừa được check
            if (this.checked) {
                // Lấy thuộc tính 'name' của ô này (VD: 'anHopVoi' hoặc 'monAnKem')
                const groupName = this.getAttribute('name');

                // Tìm tất cả các ô checkbox có CÙNG 'name'
                const sameGroupCheckboxes = document.querySelectorAll(`.max-1-checkbox[name="${groupName}"]`);

                // Gỡ check tất cả các ô khác trong cùng nhóm
                sameGroupCheckboxes.forEach(cb => {
                    if (cb !== this) {
                        cb.checked = false;
                    }
                });
            }
        });
    });
});



// =========================================================
// XỬ LÝ LOGIC POPUP (TOAST) DÙNG CHUNG
// =========================================================
const toastEl = document.getElementById('wishlistToast');
let toast = null;
if (toastEl) {
    toast = new bootstrap.Toast(toastEl, {delay: 2500});
}
const toastBody = toastEl ? toastEl.querySelector('.toast-body') : null;

// =========================================================
// XỬ LÝ LOGIC MÓN YÊU THÍCH (WISHLIST)
// =========================================================
const btnWishlists = document.querySelectorAll('.btn-wishlist');
const wishlistBadge = document.querySelector('.wishlist-badge');
const wishlistCountTexts = document.querySelectorAll('.wishlist-count-text');
const wishlistEmpty = document.querySelector('.wishlist-empty');
const wishlistHasItems = document.querySelector('.wishlist-has-items');
const wishlistItemsList = document.querySelector('.wishlist-items-list');

let wishlistItems = [];

function updateWishlistUI() {
    const count = wishlistItems.length;

    if (wishlistBadge) {
        wishlistBadge.innerText = count;
        wishlistBadge.style.transform = "scale(1.5) translate(-30%, -30%)";
        setTimeout(() => {
            wishlistBadge.style.transform = "scale(1) translate(-50%, -50%)";
        }, 200);
    }

    wishlistCountTexts.forEach(el => el.innerText = count);

    if (count === 0) {
        if (wishlistEmpty)
            wishlistEmpty.classList.remove('d-none');
        if (wishlistHasItems)
            wishlistHasItems.classList.add('d-none');
    } else {
        if (wishlistEmpty)
            wishlistEmpty.classList.add('d-none');
        if (wishlistHasItems)
            wishlistHasItems.classList.remove('d-none');
    }

    if (wishlistItemsList) {
        wishlistItemsList.innerHTML = '';
        wishlistItems.forEach(item => {
            const html = `
                    <div class="d-flex align-items-center mb-3">
                        <img src="${item.image}" alt="${item.name}" class="rounded shadow-sm" style="width: 50px; height: 50px; object-fit: cover;">
                        <div class="ms-3 flex-grow-1">
                            <h6 class="mb-0 fs-6 fw-bold text-truncate" style="max-width: 200px;">${item.name}</h6>
                            <span class="text-primary-custom fw-bold">${item.price}</span>
                        </div>
                    </div>
                `;
            wishlistItemsList.insertAdjacentHTML('beforeend', html);
        });
    }
}

if (btnWishlists.length > 0) {
    btnWishlists.forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            const foodCard = this.closest('.food-card');

            const itemName = foodCard.querySelector('.food-title').innerText.trim();
            const itemImage = foodCard.querySelector('.food-img').src;

            const priceDanger = foodCard.querySelector('.price .text-danger');
            const itemPrice = priceDanger ? priceDanger.innerText.trim() : foodCard.querySelector('.price').innerText.replace(/<del>.*<\/del>/, '').trim();

            const isActive = this.classList.contains('active');

            if (!isActive) {
                this.classList.add('active');
                wishlistItems.push({name: itemName, price: itemPrice, image: itemImage});

                if (toastEl && toastBody) {
                    toastEl.classList.remove('bg-secondary');
                    toastEl.classList.add('bg-primary-custom');
                    toastBody.innerHTML = `<i class="fas fa-heart me-2"></i> Đã thêm <b>${itemName}</b> vào yêu thích!`;
                    toast.show();
                }
            } else {
                this.classList.remove('active');
                wishlistItems = wishlistItems.filter(item => item.name !== itemName);

                if (toastEl && toastBody) {
                    toastEl.classList.remove('bg-primary-custom');
                    toastEl.classList.add('bg-secondary');
                    toastBody.innerHTML = `<i class="fas fa-heart-broken me-2"></i> Đã xóa <b>${itemName}</b> khỏi yêu thích!`;
                    toast.show();
                }
            }

            updateWishlistUI();
        });
    });
}

// =========================================================
// XỬ LÝ LOGIC GIỎ HÀNG (HIỆN TOAST KHI BẤM NÚT THÊM)
// =========================================================
const addToCartBtns = document.querySelectorAll('.btn-add-cart');

if (addToCartBtns.length > 0) {
    addToCartBtns.forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            const foodCard = this.closest('.food-card');
            const itemName = foodCard.querySelector('.food-title').innerText.trim();

            const badge = document.querySelector('.cart-badge');
            if (badge) {
                // SẼ CHỈ CỘNG +1 VÌ CODE BỊ TRÙNG ĐÃ XÓA
                badge.innerText = parseInt(badge.innerText || 0) + 1;
                badge.style.transform = "scale(1.5) translate(-30%, -30%)";
                setTimeout(() => badge.style.transform = "scale(1) translate(-50%, -50%)", 200);
            }

            if (toastEl && toastBody) {
                toastEl.classList.remove('bg-secondary');
                toastEl.classList.add('bg-primary-custom');
                toastBody.innerHTML = `<i class="fas fa-cart-plus me-2"></i> Đã thêm <b>${itemName}</b> vào giỏ hàng!`;
                toast.show();
            }
        });
    });
}
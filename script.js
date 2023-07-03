
// Модальные окна

const  
    start = document.querySelector(".start_form"),
    reg_button = document.querySelector(".login-reg-btn1"),
    login_button = document.querySelector(".login-reg-btn2"),
    overlay_button = document.querySelector(".overlay__btn"),
    login_form = document.querySelector(".login-login-form"),
    reg_form = document.querySelector(".login-reg-form"),
    overlay = document.querySelector(".overlay"),
    shop = document.querySelector(".shop"),
    shop_button = document.querySelector(".shop__btn"),
    buy_form = document.querySelector(".buy-buy-form");
    start_buy = document.querySelector('.card__summary-btn')


start.onclick = function() {
    overlay.classList.add('overlay-active');

};

overlay_button.onclick = function() {
    overlay.classList.remove('overlay-active');
};

reg_button.onclick = function() {
    login_form.classList.toggle('login-active');
    reg_form.classList.toggle('login-active');
};

login_button.onclick = function() {
    reg_form.classList.toggle('login-active');
    login_form.classList.toggle('login-active');
};

if(start_buy !== null) {
    start_buy.onclick = function() {
        shop.classList.add('shop-active');
    };
    
    shop_button.onclick = function() {
        shop.classList.remove('shop-active');
    };

}

// маска для ввода телефона

window.addEventListener("DOMContentLoaded", function() {
    [].forEach.call( document.querySelectorAll('.login__input-phone'), function(input) {
    var keyCode;
    function mask(event) {
        event.keyCode && (keyCode = event.keyCode);
        var pos = this.selectionStart;
        if (pos < 3) event.preventDefault();
        var matrix = "+7 (___) ___-__-__",
            i = 0,
            def = matrix.replace(/\D/g, ""),
            val = this.value.replace(/\D/g, ""),
            new_value = matrix.replace(/[_\d]/g, function(a) {
                return i < val.length ? val.charAt(i++) || def.charAt(i) : a
            });
        i = new_value.indexOf("_");
        if (i != -1) {
            i < 5 && (i = 3);
            new_value = new_value.slice(0, i)
        }
        var reg = matrix.substr(0, this.value.length).replace(/_+/g,
            function(a) {
                return "\\d{1," + a.length + "}"
            }).replace(/[+()]/g, "\\$&");
        reg = new RegExp("^" + reg + "$");
        if (!reg.test(this.value) || this.value.length < 5 || keyCode > 47 && keyCode < 58) this.value = new_value;
        if (event.type == "blur" && this.value.length < 5)  this.value = ""
    }

    input.addEventListener("input", mask, false);
    input.addEventListener("focus", mask, false);
    input.addEventListener("blur", mask, false);
    input.addEventListener("keydown", mask, false)

  });

});

//Слайдер

let offset = 0;
const sliderLine = document.querySelector('.rewiews__list'),
        prevBtn = document.querySelector('.rewiews__left'),
        nextBtn = document.querySelector('.rewiews__right');

nextBtn.addEventListener('click', function() {
    offset = offset + 982;
    if (offset > 982) {
        offset = 0;
    }

    sliderLine.style = "left:-" + offset + "px";
});

prevBtn.addEventListener('click', function() {
    offset = offset - 982;
    if (offset < 0) {
        offset = 982;
    }

    sliderLine.style = "left:-" + offset + "px";
});
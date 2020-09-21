window.document.addEventListener("DOMContentLoaded", function () {
    window.addEventListener("resize", function () {
        let peoplePicker = window.document.querySelector(
            "[rel='js-date-picker-people-form']"
        );
        let peoplePickerButton = window.document.querySelector(
            "[rel='js-date-picker-people']"
        );
        peoplePicker.style.left = peoplePickerButton.offsetLeft + "px";
        peoplePicker.style.top =
            peoplePickerButton.offsetTop +
            peoplePickerButton.offsetHeight +
            10 +
            "px";
        peoplePicker.style.width = peoplePickerButton.offsetWidth + "px";
    });

    window.document
        .querySelector("[rel='js-date-picker-people']")
        .addEventListener("click", function () {
            let peoplePicker = window.document.querySelector(
                "[rel='js-date-picker-people-form']"
            );
            let peoplePickerButton = window.document.querySelector(
                "[rel='js-date-picker-people']"
            );
            if (peoplePicker.classList.contains("active")) {
                peoplePicker.classList.remove("active");
                peoplePickerButton.classList.remove("active");
            } else {
                peoplePicker.style.left = peoplePickerButton.offsetLeft + "px";
                peoplePicker.style.top =
                    peoplePickerButton.offsetTop +
                    peoplePickerButton.offsetHeight +
                    10 +
                    "px";
                peoplePicker.style.width =
                    peoplePickerButton.offsetWidth + "px";
                peoplePicker.classList.add("active");
                peoplePickerButton.classList.add("active");
            }
        });

    window.document
        .querySelector("[rel='js-number-up']")
        .addEventListener("click", function () {
            let number = parseInt(
                window.document.querySelector('[rel="js-number"]').innerText
            );
            window.document.querySelector(
                '[rel="js-number"]'
            ).innerText = ++number;
            applyNumber(number);
        });

    window.document
        .querySelector("[rel='js-number-down']")
        .addEventListener("click", function () {
            let number = parseInt(
                window.document.querySelector('[rel="js-number"]').innerText
            );
            if (number == 1) {
                window.document.querySelector(
                    "[rel='js-message-title']"
                ).innerText = "인원수";
                window.document.querySelector(
                    "[rel='js-message-content']"
                ).innerText = "인원수는 1명 보다 작을 수 없어요.";
                window.document
                    .querySelector("[rel='js-blocker']")
                    .classList.add("active");
                window.document
                    .querySelector("[rel='js-message']")
                    .classList.add("active");
            } else {
                window.document.querySelector(
                    '[rel="js-number"]'
                ).innerText = --number;
                applyNumber(number);
            }
        });

    window.document
        .querySelector("[rel='js-blocker']")
        .addEventListener("click", function () {
            window.document
                .querySelector("[rel='js-blocker']")
                .classList.remove("active");
            window.document
                .querySelector("[rel='js-message']")
                .classList.remove("active");
        });

    function applyNumber(number) {
        let input = window.document.querySelector('[rel="js-number-value"]');
        input.value = number + " 명";
    }

    let sliderImageIndex = 0;

    function rotateSlider() {
        let images = window.document.querySelectorAll(
            '[rel="js-slider"] > img'
        );
        setTimeout(function () {
            for (let i = 0; i < images.length; i++) {
                images[i].style.transform =
                    "translateX(-" + (sliderImageIndex + 1) * 100 + "%)";
            }
            if (sliderImageIndex + 2 >= images.length) {
                sliderImageIndex = -1;
            } else {
                sliderImageIndex++;
            }
            rotateSlider();
        }, 3000);
    }

    rotateSlider();
});

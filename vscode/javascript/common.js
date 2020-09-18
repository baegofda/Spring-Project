const scrollBtn = document.querySelector(".scroll-btn");
const agreementBlocker = document.querySelector(".agreement--blocker");
const agreeDetails = document.querySelector(".agreement");
const privateBlocker = document.querySelector(".private--blocker");
const privateDetails = document.querySelector(".private");
const locationBlocker = document.querySelector(".location--blocker");
const locationDetails = document.querySelector(".location");
const allCheck = document.querySelector("#all");
const allIco = document.querySelector("#all--ico");
const agreementCheck = document.querySelector("#agreement");
const agreementIco = document.querySelector("#agreement--ico");
const privateCheck = document.querySelector("#private");
const privateIco = document.querySelector("#private--ico");
const locationCheck = document.querySelector("#location");
const locationIco = document.querySelector("#location--ico");
const smsCheck = document.querySelector("#sms");
const smsIco = document.querySelector("#sms--ico");
const emailCheck = document.querySelector("#email");
const emailIco = document.querySelector("#email--ico");
const checkList = document.querySelectorAll("[rel=js-check]");

scrollBtn.addEventListener("click", () => {
    window.scrollTo({ top: 0, behavior: "smooth" });
});

function pwRules() {
    const pwWrite = document.querySelector("#pw__write").value;
    const patternHard = /^(?=.*\d)(?=.*[a-zA-Z])[A-Za-z\d`~!@#$%^&*+=-]$/;
    const write__message = document.querySelector(".write__message");
    if (pwWrite != "") {
        //문자 길이 10줄 이상
        if (pwWrite.length < 10 || pwWrite.length > 17) {
            write__message.style.display = "block";
            write__message.innerHTML = `<span>☓ 10자 ~ 16자 입력</span>`;
            write__message.style.color = "#b3130b";
            write__message.style.fontSize = "12px";
        } else {
            write__message.style.display = "block";
            write__message.innerHTML = `<span>✓ 10자 ~ 16자 입력</span>`;
            write__message.style.color = "#0f851a";
            write__message.style.fontSize = "12px";
        }

        // if (pwWrite.search(/\s/) != -1 || patternHard.test(pwWrite)) {
        //     write__message.style.display = "block";
        //     write__message.innerHTML = `<span>☓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
        //     write__message.style.color = "#b3130b";
        //     write__message.style.fontSize = "12px";
        // } else {
        //     write__message.style.display = "block";
        //     write__message.innerHTML = `<span>✓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
        //     write__message.style.color = "#0f851a";
        //     write__message.style.fontSize = "12px";
        // }

        // 동일문자 3번이상 사용 금지
        // if (/(\w)\1\1/.test(pwWrite)) {
        //     write__message.style.display = "block";
        //     write__message.innerHTML = `<span>☓ 동일한 문자 3개이상 연속 사용 불가</span>`;
        //     write__message.style.color = "#b3130b";
        //     write__message.style.fontSize = "12px";
        // } else {
        //     write__message.style.display = "block";
        //     write__message.innerHTML = `<span>✓ 동일한 문자 3개이상 연속 사용 불가</span>`;
        //     write__message.style.color = "#0f851a";
        //     write__message.style.fontSize = "12px";
        // }
    } else {
        write__message.innerHTML = `！비밀번호를 입력해주세요.`;
        write__message.style.color = "#b3130b";
        write__message.style.fontSize = "12px";
    }
}

function pwCheck() {
    const pwWrite = document.querySelector("#pw__write").value;
    const pwCheck = document.querySelector("#pw__check").value;
    const checkMessage = document.querySelector(".check__message");
    if (pwWrite != "" || pwCheck != "") {
        if (pwWrite != pwCheck) {
            checkMessage.style.display = "block";
            checkMessage.innerHTML = `☓ 비밀번호가 일치하지 않습니다.`;
            checkMessage.style.color = "#b3130b";
            checkMessage.style.fontSize = "12px";
        } else {
            checkMessage.innerHTML = `✓ 비밀번호가 일치합니다.`;
            checkMessage.style.color = "#0f851a";
            checkMessage.style.fontSize = "12px";
        }
    } else {
        checkMessage.innerHTML = `！비밀번호를 입력해주세요.`;
        checkMessage.style.color = "#b3130b";
        checkMessage.style.fontSize = "12px";
    }
}

function argeementActive() {
    agreementBlocker.classList.add("active");
    agreeDetails.classList.add("active");
}

function argeementActiveRemove() {
    agreementBlocker.classList.remove("active");
    agreeDetails.classList.remove("active");
}

function privateActive() {
    privateBlocker.classList.add("active");
    privateDetails.classList.add("active");
}

function privateActiveRemove() {
    privateBlocker.classList.remove("active");
    privateDetails.classList.remove("active");
}

function locationActive() {
    locationBlocker.classList.add("active");
    locationDetails.classList.add("active");
}

function locationActiveRemove() {
    locationBlocker.classList.remove("active");
    locationDetails.classList.remove("active");
}

function allFunction() {
    for (i = 0; i < checkList.length; i++) {
        checkList[i].checked = true;
    }
}

function selfFunction() {
    allIco.classList.toggle("checked");
}

function test() {
    if (allCheck.checked == true) {
        selfFunction();
        allFunction();
    }
    if (agreementCheck.checked == true) {
        agreementFunction();
    }
    if (privateCheck.checked == true) {
        privateFunction();
    }
    if (smsCheck.checked == true) {
        smsFunction();
    }
    if (locationCheck.checked == true) {
        locationFunction();
    }
    if (emailCheck.checked == true) {
        emailFunction();
    }
}

function agreementFunction() {
    agreementIco.classList.toggle("checked");
    event.preventDefault();
}

function privateFunction() {
    privateIco.classList.toggle("checked");
    event.preventDefault();
}

function smsFunction() {
    smsIco.classList.toggle("checked");
    event.preventDefault();
}

function locationFunction() {
    locationIco.classList.toggle("checked");
    event.preventDefault();
}

function emailFunction() {
    emailIco.classList.toggle("checked");
    event.preventDefault();
}
